-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 20. úno 2025, 14:06
-- Verze serveru: 10.4.27-MariaDB
-- Verze PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `stock_v2`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(3, 'Test', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(1, 'Green', 1),
(2, 'černá', 3);

-- --------------------------------------------------------

--
-- Struktura tabulky `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(2, 'Test', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(2, 'test', 1),
(3, 'test2', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Test', '0', '0', 'Madrid', '', 'Spain', 'hello everyone one', 'CZK');

-- --------------------------------------------------------

--
-- Struktura tabulky `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:40:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:15:\"createPurchases\";i:29;s:15:\"updatePurchases\";i:30;s:13:\"viewPurchases\";i:31;s:15:\"deletePurchases\";i:32;s:11:\"createOrder\";i:33;s:11:\"updateOrder\";i:34;s:9:\"viewOrder\";i:35;s:11:\"deleteOrder\";i:36;s:11:\"viewReports\";i:37;s:13:\"updateCompany\";i:38;s:11:\"viewProfile\";i:39;s:13:\"updateSetting\";}'),
(2, 'test', 'N;');

-- --------------------------------------------------------

--
-- Struktura tabulky `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) DEFAULT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) DEFAULT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(23, 'BILPR-8C9F', 'překlad', '1', 'Jan Coubal', '1731323268', '2.00', '0', '0', '0', '0', '2.00', '', 1, 1),
(26, 'BILPR-0561', 'test', '1', 'Jan Coubal', '1731328663', '8.00', '0', '0', '0', '0', '8.00', '', 1, 1),
(27, 'BILPR-9DC0', '', '1', 'Jan Coubal', '1731328817', '2.00', NULL, '0', NULL, '0', '', '', 1, 1),
(28, 'RETURN-543C', 'LGI', '1', 'Jan Coubal', '1731329179', '1.00', NULL, '0', NULL, '0', '', '', 1, 1);

--
-- Triggery `orders`
--
DELIMITER $$
CREATE TRIGGER `set_customer_info` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN
    DECLARE user_full_name VARCHAR(255);
    
    -- Get the full name of the user
    SELECT CONCAT(firstname, ' ', lastname) INTO user_full_name
    FROM users
    WHERE id = NEW.user_id;
    
    -- Set customer_phone and customer_address
    SET NEW.customer_phone = user_full_name;
    SET NEW.customer_address = NEW.user_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_paid_status_before_insert` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN
    SET NEW.paid_status = 1;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_paid_status_before_update` BEFORE UPDATE ON `orders` FOR EACH ROW BEGIN
    SET NEW.paid_status = 1;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_paid_status` BEFORE UPDATE ON `orders` FOR EACH ROW BEGIN
    -- Set paid_status to 1 before the row is updated
    SET NEW.paid_status = 1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabulky `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(26, 23, 2, '1', '1', '1.00'),
(27, 23, 2, '1', '1', '1.00'),
(30, 26, 2, '8', '1', '8.00'),
(31, 27, 2, '2', '1', '2.00'),
(32, 28, 2, '1', '1', '1.00');

-- --------------------------------------------------------

--
-- Struktura tabulky `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(2, 'test', 'test', '1', '884', '<p>You did not select a file to upload.</p>', '', 'null', 'null', '[\"2\"]', 2, 1),
(3, 'testid1', '1', '1', '1', '<p>You did not select a file to upload.</p>', '', 'null', 'null', '[\"2\"]', 2, 1),
(4, 'testid2', '1', '1', '1', '<p>You did not select a file to upload.</p>', '', 'null', 'null', '[\"2\"]', 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `sku_prefix`
--

CREATE TABLE `sku_prefix` (
  `category_id` int(11) NOT NULL,
  `prefix` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `sku_prefix`
--

INSERT INTO `sku_prefix` (`category_id`, `prefix`) VALUES
(2, '3D'),
(3, 'GS');

-- --------------------------------------------------------

--
-- Struktura tabulky `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(2, 'test', 1),
(3, '3D místnost', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'adminknst', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'Jan', 'Coubal', '1ST', 1),
(4, 'testtest', '$2y$10$V893qIamTdUJeBhXo/gwpePHldeXjuLJBVX7iEMRnpeeX2jnGe3O.', 'test@test', 'test', 'test', 'test', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `sku_prefix`
--
ALTER TABLE `sku_prefix`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexy pro tabulku `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pro tabulku `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pro tabulku `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
