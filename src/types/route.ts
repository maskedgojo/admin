// Use Record<string, string> as the fallback instead of {}
export interface RouteContext<
  P extends Record<string, string> = Record<string, string>
> {
  params: P
}
