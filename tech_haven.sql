-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 03:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_haven`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(13, 1, 3, 'Lenovo laptop', 40000, 1, 'lenovo.jpg'),
(17, 1, 6, 'MSI Optix Monitor', 20000, 1, 'msi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, '2weqe2e', 'emeteriomico@gmail.com', '231231231', 'asdasdasas');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'mico emeterio', '2312312313', 'emeteriomico@gmail.com', 'cash on delivery', 'flat no. 84, Al-Rich Vill Napindan, Taguig, NCR, Philippines - 1630', 'Laptop (3200 x 1) - ', 3200, '2023-05-22', ''),
(2, 1, 'mico emeterio', '2131313131', 'emeteriomico@gmail.com', 'cash on delivery', 'flat no. 84, Al-Rich Vill Napindan, Taguig, NCR, Philippines - 1630', 'Laptop (3200 x 1) - ', 3200, '2023-05-22', 'completed'),
(3, 1, 'mico emeterio', '1231412', 'emeteriomico@gmail.com', 'cash on delivery', 'flat no. 84, Al-Rich Vill Napindan, Taguig, NCR, Philippines - 1630', 'Laptop (3200 x 1) - Lenovo laptop (40000 x 1) - MSI Optix Monitor (20000 x 1) - AMD Ryzen 5 5600X CPU (8000 x 1) - Corsair Mouse (2000 x 1) - ', 73200, '2023-05-22', ''),
(4, 1, 'mico emeterio', '1223414124', 'emeteriomico@gmail.com', 'cash on delivery', 'flat no. 84, Al-Rich Vill Napindan, Taguig, NCR, Philippines - 1630', 'Acer laptop (3500 x 1) - Lenovo laptop (40000 x 1) - SAMSUNG 32 Monitor (25000 x 1) - Laptop (3200 x 1) - ', 71700, '2023-05-25', ''),
(5, 1, 'mico emeterio', '1212121', 'emeteriomico@gmail.com', 'cash on delivery', 'flat no. 84, Al-Rich Vill Napindan, Taguig, NCR, Philippines - 1630', 'AMD Ryzen 5 5600X CPU (8000 x 1) - ', 8000, '2023-05-26', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Laptop', 'Acer Swift 3 Thin & Light Laptop | Intel Core i5-1240P | Intel Iris Xe Graphics | 14&#34; FHD Touch | 16GB LPDDR4X | 512GB SSD | Intel Wi-Fi 6E | Backlit Keyboard | Windows 11 SF314-512T-56CT', 3200, 'laptop-1.webp', 'laptop-2.webp', 'laptop-3.webp'),
(2, 'Acer laptop', 'Acer Swift 3 Thin & Light Laptop | Intel Core i5-1240P | Intel Iris Xe Graphics | 14&#34; FHD Touch | 16GB LPDDR4X | 512GB SSD | Intel Wi-Fi 6E | Backlit Keyboard | Windows 11 SF314-512T-56CT', 3500, 'acer.jpg', 'acer2.jpg', 'acer3.jpg'),
(3, 'Lenovo laptop', 'Lenovo IdeaPad 3i Laptop, 14.0  Inch FHD IPS Display, 12th Gen Intel Core i5-1235U, 40GB RAM, 2TB SSD, Intel Iris Xe Graphics, Bluetooth, Windows 11 Home IdeaPad IdeaPad', 40000, 'lenovo.jpg', 'lenovo2.jpg', 'lenovo3.jpg'),
(4, 'Razer 27 Monitor', 'Razer 27&#34; 165 Hz IPS WQHD Gaming Monitor FreeSync Premium & G-Sync Compatible 2560 x 1440 (2K) Factory Calibrated 95% DCI-P3 wide color gamut HDMI, DisplayPort, USB Raptor RZ39-03500100-R3U1', 20000, 'razer.jpg', 'razer2.jpg', 'razer3.jpg'),
(5, 'SAMSUNG 32 Monitor', 'SAMSUNG 32&#34; 165 Hz IPS WQHD Gaming Monitor FreeSync Premium & G-Sync Compatible 2560 x 1440 (2K) 99% sRGB HDMI, DisplayPort, Audio Odyssey G50A  Audio Odyssey LS32AG500PNXZA  Audio Odyssey', 25000, 'samsung.jpg', 'samsung2.jpg', 'samsung3.jpg'),
(6, 'MSI Optix Monitor', 'MSI Optix MAG321QR 32&#34; (31.5&#34; Viewable) WQHD 2560 x 1440 (2K) IPS 165Hz HDMI, DisplayPort, USB, Audio G-Sync Compatible Gaming Monitor', 20000, 'msi.jpg', 'msi2.jpg', 'ms3.jpg'),
(7, 'AMD Ryzen 5 5600 CPU', 'AMD Ryzen 5 5600 - Ryzen 5 5000 Series Vermeer (Zen 3) 6-Core 3.5 GHz Socket AM4 65W None Integrated Graphics Desktop Processor - 100-100000927BOX', 7000, 'r5.jpg', 'r52.jpg', 'r53.jpg'),
(8, 'AMD Ryzen 5 5600X CPU', 'AMD Ryzen 5 5600X - Ryzen 5 5000 Series Vermeer (Zen 3) 6-Core 3.7 GHz Socket AM4 65W None Integrated Graphics Desktop Processor - 100-100000065BOX', 8000, '5600x.jpg', '5600x2.jpg', '5600x3.jpg'),
(9, 'Intel Core i9-13900K CPU', 'Intel Core i9-13900K - Core i9 13th Gen Raptor Lake 24-Core (8P+16E) P-core Base Frequency: 3.0 GHz E-core Base Frequency: 2.2 GHz LGA 1700 125W Intel UHD Graphics 770 Desktop Processor - BX8071513900K', 28000, 'intel.jpg', 'intel2.jpg', 'intel3.jpg'),
(10, 'MSI GM08 Gaming Mouse', 'MSI Clutch GM08 Gaming Mouse, 4200 DPI, Optical Sensor, 3 Adjustable Weights, Red LED Lighting, Symmetrical Design', 750, 'msim.jpg', 'msim2.jpg', 'msim3.jpg'),
(11, 'Corsair Mouse', 'CORSAIR NIGHTSWORD RGB Performance Tunable FPS/MOBA Gaming Mouse, Black, Backlit RGB LED, 18000 dpi, Optical', 2000, 'corsair.jpg', 'corsair2.jpg', 'corsair3.jpg'),
(12, 'Logitech G502 HERO Mouse', 'Logitech G502 HERO High Performance Wired Gaming Mouse, HERO 25K Sensor, 25,600 DPI, RGB, Adjustable Weights, 11 Programmable Buttons, On-Board Memory, PC / Mac', 1600, 'logi.jpg', 'logi2.jpg', 'logi3.jpg'),
(13, 'ASUS ROG Maximus Z690 Motherboard', 'ASUS ROG Maximus Z690 Formula DDR5 Intel LGA 1700 ATX Motherboard', 27000, 'asus.jpg', 'asus2.jpg', 'asus3.jpg'),
(14, 'ASUS Prime Z690-P Motherboard', 'ASUS Prime Z690-P WiFi D4 LGA 1700(Intel® 12th&13th Gen) ATX motherboard (PCIe 5.0,DDR4,14+1 Power Stages,3x M.2, WiFi 6,Bluetooth v5.2,2.5Gb LAN, front panel USB 3.2 Gen 1 USB Type-C®,Thunderbolt™ 4 support,Arua Sync)', 7400, 'aprime.jpg', 'aprime2.jpg', 'aprime3.jpg'),
(15, 'ASUS ROG Maximus Z790 Motherboard', 'ASUS ROG Maximus Z790 Hero (WiFi 6E) LGA 1700 (Intel 13th&12th Gen) ATX Gaming Motherboard (PCIe 5.0, DDR5, 20+1 Power Stages, 2.5Gb LAN, Bluetooth V5.2, 5x M.2/NVMe SSD, 2x Thunderbolt 4, Bundle with PCIe 5.0 Hyper M.2 Card)', 31000, 'rog.jpg', 'rog2.jpg', 'rog3.jpg'),
(16, 'MSI Vigor GK20 Keyboard', 'MSI Vigor GK20 US Gaming Backlit RGB Dedicated Hotkeys Anti-Ghosting Water Resistant Gaming Keyboard', 1500, 'vigor.jpg', 'vigor2.jpg', 'vigor3.jpg'),
(17, 'Corsair K70 RGB PRO Keyboard', 'Corsair K70 RGB PRO Wired Mechanical Gaming Keyboard (Cherry MX RGB Brown Switches: Tactile & Quiet, 8,000Hz Hyper-Polling, PBT Double-Shot PRO Keycaps, Soft-Touch Palm Rest) QWERTY, NA - Black', 7000, 'k.jpg', 'k2.jpg', 'k3.jpg'),
(18, 'Corsair K65 RGB Keyboard', 'Corsair K65 RGB MINI 60% Mechanical Gaming Keyboard (Customizable Per-Key RGB Backlighting, CHERRY MX Speed Mechanical Keyswitches, Detachable USB Type-C Cable, AXON Hyper-Processing Technology) Black', 3000, 'mini.jpg', 'mini2.jpg', 'mini3.jpg'),
(20, 'CORSAIR Vengeance Ram', 'CORSAIR Vengeance RGB Pro 16GB (2 x 8GB) 288-Pin PC RAM DDR4 3200 (PC4 25600) Desktop Memory Model CMW16GX4M2C3200C16', 6500, 'trident2.jpg', 'trident.jpg', 'trident3.jpg'),
(21, 'G.SKILL Trident  Ram', 'G.SKILL Trident Z RGB (For AMD) 16GB (2 x 8GB) 288-Pin PC RAM DDR4 3600 (PC4 28800) Desktop Memory Model F4-3600C18D-16GTZRX', 2900, 'z.jpg', 'z2.jpg', 'z3.jpg'),
(22, 'CORSAIR Vengeance  Ram', 'CORSAIR Vengeance RGB Pro SL 64GB (4 x 16GB) 288-Pin PC RAM DDR4 3200 (PC4 25600) Desktop Memory Model CMH64GX4M4E3200C16W', 9000, 'ven.jpg', 'ven2.jpg', 'ven3.jpg'),
(23, 'Cougar Panzer Computer Case computer PC', 'Cougar Panzer Max-G Black ATX Full Tower Panzer Max-G Black ATX Full Tower Gaming Case Panzer Max-G Black ATX Full Tower Gaming Case Gaming Case Panzer Max-G Black ATX Full Tower Gaming Case', 8000, 'cougar.jpg', 'cougar2.jpg', 'cougar3.jpg'),
(24, 'JONSBO D31 MESH Computer Case', 'JONSBO D31 MESH SC BLACK Micro ATX Computer Case with Sub HD-LCD Display, M-ATX/DTX/ITX Mainboard/Support RTX 4090(335-400mm) GPU 360/280AIO,Power ATX/SFX: 100mm-220mm Multiple Tool-free Design,Black', 6500, 'j.jpg', 'j2.jpg', 'j3.jpg'),
(25, 'JONSBO D31 MESH Computer Case', 'JONSBO D31 MESH SC WHITE Micro ATX Computer Case with Sub HD-LCD Display, M-ATX/DTX/ITX Mainboard/Support RTX 4090(335-400mm) GPU 360/280AIO,Power ATX/SFX: 100mm-220mm Multiple Tool-free Design,White', 6500, 'a.jpg', 'a2.jpg', 'a3.jpg'),
(26, 'Yeston Radeon RX Video Graphics', 'Yeston Radeon RX 6800 XT 16GB D6 GDDR6 256bit 7nm video cards Desktop computer PC Video Graphics Cards support PCI-Express 4.0 3*DP+1*HDMI-compatible RGB light effect Fragrant graphics card', 38000, 'yeston.jpg', 'yeston2.jpg', 'yeston 3.jpg'),
(28, 'COLORFUL GeForce RTX 3090 Video Graphics', 'COLORFUL GeForce RTX 3090 24GB iGame Vulcan Graphics Card 384-bit GDDR6X 10496 Cores iGame Status Monitor 3.0&#34; LCD\r\n24GB 320-Bit GDDR6\r\nBoost Clock 1695 MHz\r\n10496 Cores CUDA Cores\r\nPCI Express 4.0 x16', 194000, 'igame.jpg', 'igame2.jpg', 'igame3.jpg'),
(29, 'PELADN AMD Radeon RX Video Graphics', 'PELADN AMD Radeon RX 5500XT 8GB GDDR6 PCI Express 4.0 Video Card', 5900, 'peladin.jpg', 'peladin2.jpg', 'peladin3.jpg'),
(30, 'SAMA 750W Full White Power Supplies', 'SAMA 750W Full White Power Supply Full Voltage 80Plus Gold Certified 12V 14CM Japanese Large Capacitors ATX/Matx Power', 5200, 'sama.jpg', 'sama2.jpg', 'sama3.jpg'),
(31, 'EVGA SuperNOVA Power Supplies', 'EVGA SuperNOVA 850 P5, 80 Plus Platinum 850W, Fully Modular, Eco Mode with FDB Fan, 10 Year Warranty, Includes Power ON Self Tester, Compact 150mm Size, Power Supply 220-P5-0850-X1', 8490, 'vga.jpg', 'vga2.jpg', 'vga3.jpg'),
(32, 'Super Flower Leadex Power Supplies', 'Super Flower Leadex V Platinum PRO White 850W ATX 80 PLUS PLATINUM Certified Power Supply, Smallest 130mm 850W ATX PSU, Patent Super Connector, Full Modular, Ultra-Flexible Flat Cable, SF-850F14TP(WH)', 12000, 'flower.jpg', 'flower2.jpg', 'flower3.jpg'),
(33, 'Seagate IronWolf Pro Storage', 'Seagate IronWolf Pro 20TB NAS Hard Drive 7200 RPM 256MB Cache CMR SATA 6.0Gb/s 3.5&#34; Internal HDD NE-ST20000NE000', 17000, 'seagate.jpg', 'seagate2.jpg', 'seagate3.jpg'),
(34, 'WD Red Plus 8TB Storage', 'WD Red Plus 8TB CMR NAS Hard Drive HDD - 5640 RPM, SATA 6 Gb/s, 128MB Cache, 3.5&#34; - WD80EFZZ', 7400, 'wd.jpg', 'wd2.jpg', 'wd2.jpg'),
(35, 'Seagate 18TB Exos Storage', 'Seagate 18TB Exos X18 7200 RPM SATA 6Gb/s 256MB Cache 3.5-Inch Enterprise Hard Drive HDD (ST18000NM000J)', 14000, 'exos.jpg', 'exos2.jpg', 'exos 3.jpg'),
(36, 'LG Black 16X BD-R 2X Optical Drives', 'LG Black 16X BD-R 2X BD-RE 16X DVD+R 5X DVD-RAM 12X BD-ROM 4MB Cache SATA Blu-ray Burner WH16NS40', 3400, 'lg.jpg', 'lg2.jpg', 'lg3.jpg'),
(37, 'ASUS Black Blu-Ray Optical Drives', 'Extreme 16X Blu-Ray writing speed - Backup 25 GB data in only 8 minutes\r\nM-disc Support - Save your priceless memories and data for up to 1,000 years\r\nBDXL Support - Up to 128 GB data storage in one disc\r\nE-Green saves over 50% on power consumption', 4900, 'asus drive.jpg', 'asus drive2.jpg', 'asus drive3.jpg'),
(38, 'LG External CD/DVD Optical Drives', 'LG External CD/DVD Rewriter With M-Disc Mac & Surface Support (Black) - Model GP65NB60 MAX 8X DVD +/- R and 24X CD Write Speed\r\nUltra Slim Portable\r\n0.75MB Buffer', 2000, 'lgd.jpg', 'lgd2.jpg', 'lgd3.jpg'),
(39, 'CORSAIR iCUE H100i PC Cooling', 'CORSAIR iCUE H100i ELITE LCD XT Liquid CPU Cooler - IPS LCD Screen - AF120 RGB ELITE Fans - 240mm Radiator - Fits Intel® LGA 1700, AMD® AM5, and More Compatible with Intel® LGA 1700, 1200, 115X, 2066, and AMD® Socket AM5 and AM4 motherboard sockets\r\nCustom 2.1” IPS LCD screen\r\n2x AF RGB ELITE Fans with AirGuide Technology\r\nPWM fan speeds up to 2,100 RPM\r\nZero RPM Mode support', 12000, 'corsairc.png', 'corsairc2.png', 'corsairc3.png'),
(40, 'CORSAIR iCUE H150i PC Cooling', 'CORSAIR iCUE H150i ELITE LCD XT Liquid CPU Cooler - White - IPS LCD Screen - AF120 RGB ELITE Fans - 360mm Radiator - Fits Intel® LGA 1700, AMD® AM5, and More Compatible with Intel® LGA 1700, 1200, 115X, 2066, and AMD® Socket AM5 and AM4 motherboard sockets\r\nCustom 2.1” IPS LCD screen\r\n3x AF RGB ELITE Fans with AirGuide Technology\r\nPWM fan speeds up to 2,100 RPM\r\nZero RPM Mode support', 14000, 'corsair.png', 'corsair2.png', 'corsair3.png'),
(41, 'NZXT Kraken Z53 RGB PC Cooling', 'NZXT Kraken Z53 RGB 240mm - RL-KRZ53-R1 - AIO RGB CPU Liquid Cooler - Customizable LCD Display - Improved Pump - Powered by CAM V4 - RGB Connector - AER RGB 2 120mm Radiator Fans (2 Included) 2.36&#34; LCD screen capable of displaying 24-bit color\r\nCustomize display with intuitive NZXT CAM controls\r\nNZXT RGB Connector for NZXT RGB accessories\r\nTwo 120mm Aer P radiator fans with chamfered intake and fluid dynamic bearings', 11000, 'samac.jpg', 'samac2.jpg', 'samac3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'JOHN MICHAEL EMETERI', 'emeteriomico@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(2, 'bry', 'bry@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(4, 1, 4, 'Razer 27 Monitor', 20000, 'razer.jpg'),
(5, 1, 8, 'AMD Ryzen 5 5600X CPU', 8000, '5600x.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
