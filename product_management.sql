-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 03:36 AM
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
-- Database: `product_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brand`, `category`, `description`, `name`, `product_code`, `type`) VALUES
(31, 'ABC Electronics', 'MobileGadgets', 'Latest Smartphone Model', 'Smartphone Pro', 'P032', 'Smartphone'),
(32, 'XYZ Fashion', 'Fashion', 'Stylish Casual Shirt', 'Casual Shirt', 'P033', 'Casual Wear'),
(33, 'Cozy Beds', 'Bedding', 'Memory Foam Mattress', 'Memory Foam Mattress', 'P034', 'Mattress'),
(34, 'Kitchen Essentials', 'Kithcen', 'Stainless Steel Cookware Set', 'Cookware Set', 'P035', 'Cookware'),
(35, 'OtherTech', 'Other', 'Innovative Tech Gadget', 'Innovate Gadget', 'P036', 'Tech Gadget'),
(36, 'Elegant Linens', 'Bedding', 'Luxury Bed Sheet Set', 'Luxury Bed Sheet', 'P037', 'Bed Sheet'),
(37, 'FashionHub', 'Fashion', 'Designer Handbag', 'Designer Handbag', 'P038', 'Handbag'),
(38, 'TechInnovators', 'Other', 'AI-Powered Device', 'AI Device', 'P039', 'AI Device'),
(39, 'HomeComforts', 'Kithcen', 'Coffee Maker with Grinder', 'Coffee Maker', 'P040', 'Appliance'),
(40, 'MobileAccessories', 'MobileGadgets', 'Wireless Earbuds', 'Wireless Earbuds', 'P041', 'Audio Accessory'),
(41, 'TechSolutions', 'Other', 'Smart Home Automation Kit', 'Smart Home Kit', 'P042', 'Home Automation'),
(42, 'OutdoorAdventures', 'Other', 'Camping Gear Set', 'Camping Gear', 'P043', 'Outdoor Equipment'),
(43, 'EcoFriendlyLiving', 'Other', 'Reusable Water Bottle', 'Water Bottle', 'P044', 'Reusable'),
(44, 'CosmeticWonders', 'Fashion', 'Luxury Makeup Palette', 'Makeup Palette', 'P045', 'Cosmetics'),
(45, 'HealthNutrition', 'Other', 'Organic Protein Powder', 'Protein Powder', 'P046', 'Nutrition'),
(46, 'KidsToysEmporium', 'Other', 'Educational Toy Set', 'Educational Toys', 'P047', 'Educational'),
(47, 'LivingRoomEssentials', 'Other', 'Decorative Throw Pillows', 'Throw Pillows', 'P048', 'Home Decor'),
(48, 'PetCareParadise', 'Other', 'Pet Grooming Kit', 'Grooming Kit', 'P049', 'Pet Care'),
(49, 'FitnessFanatics', 'Other', 'Resistance Band Set', 'Resistance Bands', 'P050', 'Fitness Equipment'),
(50, 'DIYCrafters', 'Other', 'Crafting Supplies Bundle', 'Crafting Supplies', 'P051', 'Crafting'),
(51, 'HealthySnacks', 'Other', 'Assorted Snack Pack', 'Snack Pack', 'P052', 'Snacks'),
(52, 'EcoLiving', 'Other', 'Bamboo Utensil Set', 'Bamboo Utensils', 'P053', 'Eco-Friendly'),
(53, 'GamingGurus', 'Other', 'Gaming Mouse Pad', 'Mouse Pad', 'P054', 'Gaming Accessory'),
(54, 'CarEnthusiasts', 'Other', 'Car Cleaning Kit', 'Cleaning Kit', 'P056', 'Car Care'),
(55, 'AdventureApparel', 'Fashion', 'Outdoor Adventure Apparel', 'Adventure Apparel', 'P057', 'Outdoor Wear'),
(56, 'TechEnthusiasts', 'Other', 'Wireless Charging Dock', 'Charging Dock', 'P058', 'Tech Accessory'),
(57, 'HomeOfficeEssentials', 'Other', 'Ergonomic Desk Chair', 'Desk Chair', 'P059', 'Office Furniture'),
(58, 'CulinaryMasterpieces', 'Other', 'Cookbook Collection', 'Cookbook Collection', 'P060', 'Cookbooks'),
(59, 'WellnessWonders', 'Other', 'Meditation Essentials Kit', 'Meditation Kit', 'P061', 'Wellness'),
(60, 'TravelInStyle', 'Fashion', 'Travel Backpack', 'Travel Backpack', 'P062', 'Travel Gear'),
(61, 'Akemi', 'Bedding', '120cm X 200cm made of 100% cotton', 'Bed protector 60 inch', 'P233', 'Pure Cotton');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
