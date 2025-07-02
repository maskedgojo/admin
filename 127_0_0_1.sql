-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2025 at 01:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dash`
--
CREATE DATABASE IF NOT EXISTS `dash` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `dash`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `price` double NOT NULL,
  `category` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `created_at`) VALUES
(1, 'Elegant Marble Keyboard', 'Professional-grade Bike perfect for pushy training and recreational use', 905.39, 'Shoes', '2025-07-01 05:13:28.767'),
(2, 'Awesome Rubber Hat', 'The magenta Bike combines Cook Islands aesthetics with Thorium-based durability', 998.6, 'Clothing', '2025-07-01 05:13:28.776'),
(3, 'Fresh Rubber Bike', 'Incredible Soap designed with Bronze for total performance', 162.08, 'Electronics', '2025-07-01 05:13:28.789'),
(4, 'Handcrafted Metal Pizza', 'Professional-grade Pizza perfect for emotional training and recreational use', 768.25, 'Automotive', '2025-07-01 05:13:28.794'),
(5, 'Luxurious Silk Sausages', 'Practical Car designed with Wooden for incomparable performance', 133.65, 'Garden', '2025-07-01 05:13:28.800'),
(6, 'Fresh Rubber Chicken', 'Savor the rich essence in our Keyboard, designed for complete culinary adventures', 93.19, 'Tools', '2025-07-01 05:13:28.805'),
(7, 'Small Bronze Sausages', 'Our rabbit-friendly Fish ensures imaginative comfort for your pets', 894.05, 'Books', '2025-07-01 05:13:28.810'),
(8, 'Refined Marble Hat', 'New red Computer with ergonomic design for amused comfort', 505.65, 'Kids', '2025-07-01 05:13:28.816'),
(9, 'Small Wooden Bacon', 'Introducing the San Marino-inspired Bike, blending irresponsible style with local craftsmanship', 104.25, 'Toys', '2025-07-01 05:13:28.821'),
(10, 'Elegant Rubber Tuna', 'Introducing the Azerbaijan-inspired Towels, blending gifted style with local craftsmanship', 261.81, 'Computers', '2025-07-01 05:13:28.826'),
(11, 'Intelligent Rubber Towels', 'Featuring Dubnium-enhanced technology, our Hat offers unparalleled enraged performance', 661.49, 'Home', '2025-07-01 05:13:28.831'),
(12, 'Unbranded Concrete Cheese', 'Discover the alienated new Shirt with an exciting mix of Steel ingredients', 987.45, 'Tools', '2025-07-01 05:13:28.837'),
(13, 'Fantastic Metal Shirt', 'Introducing the Cote d\'Ivoire-inspired Table, blending thin style with local craftsmanship', 207.89, 'Clothing', '2025-07-01 05:13:28.842'),
(14, 'Incredible Gold Bike', 'Innovative Mouse featuring rusty technology and Concrete construction', 266.1, 'Health', '2025-07-01 05:13:28.848'),
(15, 'Oriental Marble Bike', 'Soft Salad designed with Cotton for stingy performance', 334.81, 'Garden', '2025-07-01 05:13:28.853'),
(16, 'Generic Aluminum Shirt', 'Introducing the Gibraltar-inspired Shoes, blending silver style with local craftsmanship', 201.45, 'Outdoors', '2025-07-01 05:13:28.859'),
(17, 'Bespoke Rubber Hat', 'Ergonomic Table made with Concrete for all-day showy support', 178.29, 'Clothing', '2025-07-01 05:13:28.866'),
(18, 'Generic Granite Pants', 'The Profound scalable paradigm Shoes offers reliable performance and waterlogged design', 611.39, 'Electronics', '2025-07-01 05:13:28.872'),
(19, 'Luxurious Gold Shoes', 'New Pants model with 39 GB RAM, 780 GB storage, and apt features', 756.3, 'Home', '2025-07-01 05:13:28.878'),
(20, 'Ergonomic Wooden Hat', 'The Business-focused cloud-native moderator Ball offers reliable performance and tough design', 332.69, 'Clothing', '2025-07-01 05:13:28.884'),
(21, 'Rustic Ceramic Computer', 'Introducing the Denmark-inspired Car, blending abandoned style with local craftsmanship', 462.6, 'Tools', '2025-07-01 05:13:28.890'),
(22, 'Intelligent Concrete Tuna', 'The Fully-configurable demand-driven conglomeration Mouse offers reliable performance and jam-packed design', 81.99, 'Jewelry', '2025-07-01 05:13:28.895'),
(23, 'Practical Ceramic Bike', 'Ergonomic Fish made with Silk for all-day those support', 227.39, 'Movies', '2025-07-01 05:13:28.902'),
(24, 'Luxurious Wooden Keyboard', 'The sleek and comfortable Towels comes with mint green LED lighting for smart functionality', 185.15, 'Electronics', '2025-07-01 05:13:28.908'),
(25, 'Fresh Steel Computer', 'Discover the colossal new Gloves with an exciting mix of Steel ingredients', 581.17, 'Shoes', '2025-07-01 05:13:28.914'),
(26, 'Refined Steel Pizza', 'Savor the delicious essence in our Shoes, designed for rotating culinary adventures', 212.59, 'Movies', '2025-07-01 05:13:28.919'),
(27, 'Rustic Ceramic Pants', 'The Aliza Chicken is the latest in a series of authentic products from Friesen - Stehr', 958.95, 'Grocery', '2025-07-01 05:13:28.925'),
(28, 'Modern Metal Mouse', 'Our frog-friendly Bike ensures impure comfort for your pets', 813.99, 'Computers', '2025-07-01 05:13:28.930'),
(29, 'Sleek Ceramic Tuna', 'Discover the lustrous new Tuna with an exciting mix of Cotton ingredients', 445.75, 'Books', '2025-07-01 05:13:28.935'),
(30, 'Oriental Bamboo Shirt', 'Stylish Table designed to make you stand out with spanish looks', 272.99, 'Automotive', '2025-07-01 05:13:28.941'),
(31, 'Rustic Ceramic Towels', 'Discover the nippy new Table with an exciting mix of Metal ingredients', 472.89, 'Tools', '2025-07-01 05:13:28.946'),
(32, 'Sleek Ceramic Ball', 'Innovative Salad featuring gaseous technology and Cotton construction', 492.95, 'Shoes', '2025-07-01 05:13:28.951'),
(33, 'Gorgeous Marble Pizza', 'The sleek and lasting Bacon comes with turquoise LED lighting for smart functionality', 920.6, 'Electronics', '2025-07-01 05:13:28.956'),
(34, 'Elegant Metal Keyboard', 'The sleek and funny Chair comes with lavender LED lighting for smart functionality', 266, 'Jewelry', '2025-07-01 05:13:28.961'),
(35, 'Handcrafted Wooden Chips', 'Intelligent Table designed with Ceramic for personal performance', 766.89, 'Shoes', '2025-07-01 05:13:28.966'),
(36, 'Handmade Metal Ball', 'Discover the pure new Chicken with an exciting mix of Granite ingredients', 201.59, 'Health', '2025-07-01 05:13:28.972'),
(37, 'Rustic Concrete Chair', 'Our delicious-inspired Salad brings a taste of luxury to your mature lifestyle', 133.09, 'Automotive', '2025-07-01 05:13:28.977'),
(38, 'Intelligent Rubber Ball', 'New Salad model with 1 GB RAM, 348 GB storage, and shiny features', 622.79, 'Toys', '2025-07-01 05:13:28.983'),
(39, 'Generic Ceramic Keyboard', 'Connelly - Jenkins\'s most advanced Towels technology increases shy capabilities', 40.05, 'Movies', '2025-07-01 05:13:28.998'),
(40, 'Gorgeous Ceramic Gloves', 'Ergonomic Bacon made with Ceramic for all-day favorite support', 690.89, 'Books', '2025-07-01 05:13:29.021'),
(41, 'Handcrafted Steel Computer', 'Featuring Lead-enhanced technology, our Ball offers unparalleled wretched performance', 689.49, 'Books', '2025-07-01 05:13:29.026'),
(42, 'Tasty Aluminum Chair', 'The azure Pizza combines Macao aesthetics with Phosphorus-based durability', 703.99, 'Movies', '2025-07-01 05:13:29.031'),
(43, 'Handmade Ceramic Sausages', 'Innovative Pants featuring complete technology and Marble construction', 322.85, 'Music', '2025-07-01 05:13:29.037'),
(44, 'Oriental Bronze Soap', 'The Versatile system-worthy conglomeration Sausages offers reliable performance and esteemed design', 923.05, 'Baby', '2025-07-01 05:13:29.042'),
(45, 'Generic Ceramic Car', 'Savor the bitter essence in our Fish, designed for old culinary adventures', 204.59, 'Games', '2025-07-01 05:13:29.047'),
(46, 'Intelligent Gold Salad', 'Ergonomic Pizza made with Concrete for all-day flawed support', 230.49, 'Outdoors', '2025-07-01 05:13:29.053'),
(47, 'Fresh Gold Hat', 'The Enhanced analyzing matrices Salad offers reliable performance and prickly design', 993.12, 'Jewelry', '2025-07-01 05:13:29.058'),
(48, 'Modern Bamboo Soap', 'The Grass-roots 24 hour task-force Bike offers reliable performance and nocturnal design', 483.75, 'Industrial', '2025-07-01 05:13:29.066'),
(51, 'Iphone', 'Expensive Mobile Phone', 12000, 'Electronics', '2025-07-01 07:58:20.712'),
(52, 'Mercedez', 'Luxury car', 2000000, 'Automotive', '2025-07-02 03:56:29.013'),
(53, 'Bears', 'Soft Toy', 120, 'Toys', '2025-07-02 04:01:42.916');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`permissions`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permissions`) VALUES
(1, 'User', 'User role', '{\"level\":true,\"view_reports\":true,\"Delete_products\":true}'),
(2, 'Editor', 'Editor role', '{\"level\":\"editor\"}'),
(3, 'Viewer', 'Viewer role', '{\"level\":\"viewer\"}'),
(4, 'Admin', 'Admin role', '{\"level\":\"admin\"}'),
(5, 'Manager', 'Manager role', '{\"level\":\"manager\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `email_verified` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `dob` date NOT NULL,
  `address` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified`, `created_at`, `dob`, `address`) VALUES
(1, 'Nicolas Price', 'malvina76@hotmail.com', 'NFdGBNFAnokTQ96', '2025-06-02 21:16:07.307', '2025-07-01 05:13:28.129', '1972-01-05', '7390 Commercial Street'),
(2, 'Harold Morar', 'zaria_schimmel@hotmail.com', 'iOJr9DAFiO8IsBh', '2025-06-01 06:45:25.027', '2025-07-01 05:13:28.145', '1977-11-30', '884 Barrows Mill'),
(3, 'Johnny Robel', 'alva.rath37@gmail.com', 'OWCl6XWZs7byGgn', '2025-06-04 02:07:44.470', '2025-07-01 05:13:28.162', '1994-12-26', '74664 Hermann View'),
(4, 'Dr. Jack Rippin-Armstrong', 'yessenia_torp85@gmail.com', 'HJh8fYP87UhEmnT', '2025-06-16 08:18:15.500', '2025-07-01 05:13:28.174', '1993-08-18', '274 Keeling Groves'),
(5, 'Kerry Reichel', 'daisy_hettinger82@hotmail.com', 'yrZLT7rhwwo0MOh', '2025-06-03 11:47:42.811', '2025-07-01 05:13:28.187', '1994-01-06', '16829 Rau Orchard'),
(6, 'Mr. Ron Hamill', 'kailyn15@gmail.com', 'PBwNhPMLbZtYJgL', '2025-06-19 02:05:30.984', '2025-07-01 05:13:28.200', '1995-11-28', '815 Gracie Mills'),
(7, 'Tyler Zulauf-Stiedemann I', 'chaz.leuschke@gmail.com', 'usPoHGdM_z9SVEL', '2025-06-11 06:53:25.023', '2025-07-01 05:13:28.213', '1980-06-18', '57203 Maple Close'),
(8, 'Kevin Schiller', 'berry_yundt32@yahoo.com', 'NYRYq75Jz9YO7vY', '2025-06-05 15:07:03.665', '2025-07-01 05:13:28.224', '2003-12-22', '35369 Jefferson Avenue'),
(9, 'Alfred D\'Amore', 'maximillian_botsford27@gmail.com', 'JmqfteCUmi7eGtG', '2025-06-27 22:26:14.460', '2025-07-01 05:13:28.237', '2003-01-07', '1038 7th Street'),
(10, 'Felicia Bayer', 'pearl_stanton@gmail.com', 'EitIQ4ca64EG2fK', '2025-06-25 13:35:33.322', '2025-07-01 05:13:28.250', '1979-03-23', '29386 Grange Close'),
(11, 'Frank Krajcik', 'scotty10@gmail.com', 'aa5vIbtl2TuCM8H', '2025-06-28 14:19:52.524', '2025-07-01 05:13:28.262', '2001-09-08', '4244 Telly River'),
(12, 'Sean Thiel', 'orland_ratke@hotmail.com', 'GyzpzkXuQp4DIDl', '2025-06-25 10:32:47.798', '2025-07-01 05:13:28.276', '1973-11-06', '1278 Frontage Road'),
(13, 'Peter Thiel', 'jules93@gmail.com', 'cQBDV1umwd2uRxP', '2025-06-11 16:57:26.964', '2025-07-01 05:13:28.287', '1992-12-15', '768 Church Avenue'),
(14, 'Ray Grant MD', 'kailee_schroeder@gmail.com', 'rYKuQeSI12QJW1C', '2025-06-15 18:54:52.145', '2025-07-01 05:13:28.299', '1999-11-02', '457 Mertz Ridges'),
(15, 'Phillip Torp', 'hunter_wehner17@hotmail.com', '91MwrxRgzs2atqk', '2025-06-24 07:53:20.916', '2025-07-01 05:13:28.311', '1988-01-07', '655 West Neck'),
(16, 'Cecelia Jaskolski', 'dovie24@hotmail.com', 'jiVcriWKbZWrQMJ', '2025-06-18 04:49:19.623', '2025-07-01 05:13:28.323', '1978-09-29', '68723 Clint Mall'),
(17, 'Derek Gleichner', 'carmella26@yahoo.com', 'ArCUzTGgcCwVDIB', '2025-06-20 04:08:30.068', '2025-07-01 05:13:28.334', '1986-02-20', '544 S 9th Street'),
(18, 'Sarah Harris', 'baron78@gmail.com', 'HOu7L7Z9zhw_HCQ', '2025-06-20 20:29:50.227', '2025-07-01 05:13:28.346', '1976-01-30', '157 Felipe Meadows'),
(19, 'Sergio Cummerata', 'ezequiel.herman49@hotmail.com', 'DMxb4TA8To7pQ_3', '2025-06-04 16:04:59.262', '2025-07-01 05:13:28.357', '1995-12-13', '4211 O\'Keefe Views'),
(20, 'Mr. Abel Wuckert', 'keon_mcclure32@hotmail.com', 'L7svq7Q7WshYlWq', '2025-06-01 19:28:39.567', '2025-07-01 05:13:28.369', '1988-04-23', '430 Nikolas Rue'),
(21, 'Beatrice Rau I', 'marielle_kshlerin@hotmail.com', 'ZnXYez4V1H41kUr', '2025-06-13 18:15:34.717', '2025-07-01 05:13:28.380', '1971-01-02', '500 Enos Gardens'),
(22, 'Shannon Mohr', 'mallie.koepp40@yahoo.com', '8eyeTxIrguv9tCb', '2025-06-04 20:00:02.796', '2025-07-01 05:13:28.392', '1998-10-02', '172 Trace Pines'),
(23, 'Claude Skiles', 'rocio30@yahoo.com', 'ioBUhsdY9Mz_GnH', '2025-06-25 00:34:22.870', '2025-07-01 05:13:28.403', '1972-10-04', '77536 Paucek Avenue'),
(24, 'Kelly Smitham', 'lacy87@gmail.com', 'ojvU_Ih35pET6fz', '2025-06-04 11:35:35.928', '2025-07-01 05:13:28.415', '2003-06-06', '1060 Mariano Spur'),
(25, 'Mrs. Lora Dickinson-Ruecker PhD', 'amparo_howell61@hotmail.com', 'otJvKf59SGKV3i7', '2025-06-22 09:12:10.292', '2025-07-01 05:13:28.429', '1982-02-17', '9539 Davonte Well'),
(26, 'Nicolas Tillman', 'winona_rice0@gmail.com', 'RFX_PN3mFncGRd3', '2025-06-08 11:49:19.455', '2025-07-01 05:13:28.443', '1998-08-21', '8643 5th Street'),
(27, 'Alvin Rodriguez', 'ewald_green99@yahoo.com', 'dyBjLj8sOgH4MZp', '2025-06-26 19:24:06.155', '2025-07-01 05:13:28.457', '1969-04-23', '57101 Linnea Hollow'),
(28, 'Sheldon Friesen', 'pamela_franecki@gmail.com', '_fn3yLwuyIO2lOC', '2025-06-07 09:52:31.877', '2025-07-01 05:13:28.468', '1998-07-17', '795 Magali Rapid'),
(29, 'Emmett Carroll', 'gene90@hotmail.com', 'qdMuJyMpSMrDUeG', '2025-06-23 19:36:24.530', '2025-07-01 05:13:28.481', '1970-04-01', '8763 Delmer Crossroad'),
(30, 'Ed Jacobi', 'clara76@yahoo.com', 'uGiSCbOQCYAmnuS', '2025-06-28 07:23:36.303', '2025-07-01 05:13:28.493', '1990-04-06', '83338 Clarendon Road'),
(31, 'Micheal Boyle', 'bobbie_murphy@yahoo.com', 'cdWg3Zfg626qRi7', '2025-06-04 23:23:33.745', '2025-07-01 05:13:28.506', '1983-10-04', '23450 S Oak Street'),
(32, 'Abel Kshlerin', 'maurine77@hotmail.com', 't5rEVqRDTxC4nVO', '2025-06-11 22:07:40.327', '2025-07-01 05:13:28.517', '1991-12-23', '877 Spencer Shores'),
(33, 'Alvin Mayer Sr.', 'preston.hudson20@gmail.com', 'zUE9rzfLyqvhEO7', '2025-06-05 20:36:22.172', '2025-07-01 05:13:28.529', '1992-09-13', '473 Osinski Estate'),
(34, 'Curtis Rolfson', 'cordell35@yahoo.com', 'PH14X5aROeQ6s5h', '2025-06-07 10:33:02.714', '2025-07-01 05:13:28.540', '2005-05-16', '78375 Madison Avenue'),
(35, 'Cristina Weimann DDS', 'katheryn.bahringer81@yahoo.com', 'dpQsp3rS8tLVVTz', '2025-06-26 06:00:32.378', '2025-07-01 05:13:28.552', '1973-10-31', '2206 Cemetery Road'),
(36, 'Darryl Lowe', 'xzavier_hudson20@hotmail.com', 'P39O874bTxiKFYo', '2025-06-26 07:49:13.182', '2025-07-01 05:13:28.563', '1979-01-27', '79370 Feeney Corners'),
(37, 'Alberto Funk', 'madaline.yost@yahoo.com', '4rWGVz6tej7p622', '2025-07-01 00:28:15.546', '2025-07-01 05:13:28.574', '1969-06-27', '115 S Oak Street'),
(38, 'Eula Gerlach', 'pierce.cummings97@hotmail.com', 'Fzj5sVggccgTOEq', '2025-06-11 15:49:05.537', '2025-07-01 05:13:28.588', '1975-06-28', '5410 The Avenue'),
(39, 'Pedro Nikolaus', 'darlene68@yahoo.com', 'QQuxIZsRPnpXsMp', '2025-06-24 03:42:59.068', '2025-07-01 05:13:28.612', '1993-07-14', '6433 Ankunding Street'),
(40, 'Georgia Miller', 'delbert79@gmail.com', 'LdNHBfMEAXe9FKP', '2025-06-04 15:30:14.433', '2025-07-01 05:13:28.628', '1969-04-06', '8170 Hodkiewicz Crossing'),
(41, 'Julia Blanda', 'alaina22@hotmail.com', 'FUsfMswpiJQozxq', '2025-06-06 15:50:10.017', '2025-07-01 05:13:28.645', '1968-02-23', '80894 Lockman Neck'),
(42, 'Della Jast', 'kennedi.jerde56@gmail.com', 'TF_fvoMceNV7xaK', '2025-06-04 09:45:31.627', '2025-07-01 05:13:28.658', '2001-01-27', '86210 Ervin Causeway'),
(43, 'Ms. Erica Heaney', 'karolann_swift-mclaughlin1@hotmail.com', 'L5i92Ndut7VjPXH', '2025-06-04 14:28:00.046', '2025-07-01 05:13:28.670', '1987-01-17', '6936 16th Street'),
(44, 'Erick Padberg MD', 'antone.beatty@yahoo.com', 'cna9Ckxp6ATLczX', '2025-06-10 10:37:24.735', '2025-07-01 05:13:28.682', '1974-03-17', '869 Windermere Road'),
(45, 'Lisa Pagac', 'amalia.daniel@hotmail.com', 't6hXDKFnsSCHjE1', '2025-06-10 08:51:24.465', '2025-07-01 05:13:28.693', '1965-04-25', '17709 Rippin Islands'),
(46, 'Ray Feest', 'elna26@yahoo.com', 'rhszqtKcF4uA9Ep', '2025-06-30 13:43:37.999', '2025-07-01 05:13:28.704', '1971-12-14', '46009 Meda Viaduct'),
(47, 'Mrs. Sophia Ondricka', 'jensen76@gmail.com', 'TElJ6qBQA8D8qXg', '2025-06-14 10:40:03.069', '2025-07-01 05:13:28.718', '1997-04-10', '40469 Highfield Road'),
(48, 'Linda Schroeder', 'christian_cassin@hotmail.com', 'QqOiYSD4zUXRCUH', '2025-06-12 06:43:07.135', '2025-07-01 05:13:28.732', '1973-02-13', '832 Bergnaum Forest'),
(49, 'Wendell Durgan', 'danielle.zboncak93@yahoo.com', 'fx3fD7Mt9nVHKWm', '2025-06-13 03:03:53.501', '2025-07-01 05:13:28.743', '1971-03-08', '7632 Woodrow Crest'),
(51, 'Kushaagra Singh', 'test@gmail.in', '$2b$10$Np/BirfR0ufjQMqdjLvcz.4VBjvspwNSvl4Cg7Qor3xVPBiixbvnm', NULL, '2025-07-01 05:14:57.584', '2025-06-30', '1,Moira Street'),
(52, 'Rahul Saxena', 'user@ex.com', '$2b$10$LlhVdPkalKWWC35ZqME9O.OvHlKH66zrTtuYoFwCcIZpdJs9ie4sC', NULL, '2025-07-01 10:08:39.065', '2025-07-01', '1,moira'),
(54, 'Poonam Singh', 'test@mail.com', '$2b$10$VzxVccNcEVxiBHemnoDOZONSRX2rfipVuslVDVD4Sz/5y1zuLRDVW', NULL, '2025-07-01 12:51:40.493', '2025-04-16', '28/L, Roy');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `userId`, `roleId`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 1),
(4, 4, 3),
(5, 5, 4),
(6, 6, 2),
(7, 7, 3),
(8, 8, 3),
(9, 9, 2),
(10, 10, 2),
(11, 11, 1),
(12, 12, 3),
(13, 13, 5),
(14, 14, 5),
(15, 15, 1),
(16, 16, 2),
(17, 17, 2),
(18, 18, 3),
(19, 19, 3),
(20, 20, 4),
(21, 21, 5),
(22, 22, 4),
(23, 23, 3),
(24, 24, 1),
(25, 25, 2),
(26, 26, 2),
(27, 27, 5),
(28, 28, 5),
(29, 29, 4),
(30, 30, 5),
(31, 31, 5),
(32, 32, 3),
(33, 33, 4),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 3),
(38, 38, 3),
(39, 39, 5),
(40, 40, 2),
(41, 41, 5),
(42, 42, 2),
(43, 43, 2),
(44, 44, 5),
(45, 45, 4),
(46, 46, 2),
(47, 47, 2),
(48, 48, 3),
(49, 49, 1),
(51, 51, 4),
(54, 52, 3),
(55, 54, 4);

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('271e1e24-98ed-4565-be5d-604a01de3c45', '34753335376fbdd93ecd5c68d86b647f25575cfd14ddceca3190847d2b8cbade', '2025-07-01 05:13:26.053', '20250701051325_init', NULL, NULL, '2025-07-01 05:13:25.777', 1),
('daed37af-ef4c-4343-9298-c6cddc2b3a49', '17d824068f7103ed9ba5f560865605261ac4dc1b5d92c8241b43d3b852f8e3da', '2025-07-01 05:13:25.012', '20250701035942_init', NULL, NULL, '2025-07-01 05:13:24.628', 1),
('dfa205bf-730c-4729-a2b3-89434cb85d7a', 'fc61e6287fd7e17b3368e4f91c2f34dfa8fc6dd988351db64c2cc42449eb8d42', '2025-07-01 05:13:24.624', '20250627041742_init', NULL, NULL, '2025-07-01 05:13:24.348', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_key` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_userId_roleId_key` (`userId`,`roleId`),
  ADD KEY `user_roles_roleId_fkey` (`roleId`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
