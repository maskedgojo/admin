import fs from 'fs';
import path from 'path';

// === CONFIG ===
const logsDir = path.join(process.cwd(), 'logs');
const maxSize = 5 * 1024 * 1024; // 10MB

const logFilePaths = {
  info: path.join(logsDir, 'info.log'),
  warn: path.join(logsDir, 'warn.log'),
  error: path.join(logsDir, 'error.log'),
};

if (!fs.existsSync(logsDir)) {
  fs.mkdirSync(logsDir);
}

// === HELPER: Rotate log file if it exceeds max size ===
function rotateLogFileIfNeeded(filePath: string) {
  if (!fs.existsSync(filePath)) return;

  const stats = fs.statSync(filePath);
  if (stats.size >= maxSize) {
    const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
    const ext = path.extname(filePath); // .log
    const base = path.basename(filePath, ext); // info / error
    const rotatedFile = path.join(logsDir, `${base}-${timestamp}${ext}`);
    fs.renameSync(filePath, rotatedFile);
  }
}

// === MAIN FUNCTION: Write log entry to appropriate file ===
export function logToFile(
  level: 'info' | 'warn' | 'error',
  message: string,
  meta?: {
    origin?: string;
    errorStack?: string;
    fileLocation?: string;
    req?: Request | { url?: string; method?: string; headers?: Record<string, unknown> };
    [key: string]: unknown; // ✅ Allow custom metadata (userId, email, etc.)
  }
) {
  const timestamp = new Date().toISOString();
  const filePath = logFilePaths[level];
  rotateLogFileIfNeeded(filePath);

  const lines: string[] = [];
  lines.push(
    `[${timestamp}] [${level.toUpperCase()}]${meta?.origin ? ` [${meta.origin}]` : ''} ${message}`
  );

  if (meta?.fileLocation) {
    lines.push(`Location: ${meta.fileLocation}`);
  }

  if (meta?.errorStack) {
    lines.push('StackTrace:\n' + meta.errorStack.trim());
  }

   if (meta?.req) {
    const method = meta.req.method || 'UNKNOWN'
    const url    = meta.req.url    || 'UNKNOWN'

    /* ──────────  safe header lookup  ────────── */
    let userAgent = 'UNKNOWN'
    let ip        = 'UNKNOWN'

    const hdrs = meta.req.headers
    if (hdrs) {
      if (hdrs instanceof Headers) {
        // native Request.headers
        userAgent = hdrs.get('user-agent')      ?? 'UNKNOWN'
        ip        = hdrs.get('x-forwarded-for') ?? 'UNKNOWN'
      } else {
        // plain object { [key: string]: unknown }
        const h = hdrs as Record<string, unknown>
        if (typeof h['user-agent']      === 'string') userAgent = h['user-agent']
        if (typeof h['x-forwarded-for'] === 'string') ip        = h['x-forwarded-for']
      }
    }

    lines.push(
      `Request Info:\n` +
      `  Method: ${method}\n` +
      `  URL: ${url}\n` +
      `  UserAgent: ${userAgent}\n` +
      `  IP: ${ip}`
    )
  }
}