-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 09:30 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_cart_item` (IN `session_id` INT, IN `product_id` INT, IN `quantity` INT)  BEGIN
    INSERT INTO `ecommerce`.`cart_item` (
                                      `session_id`,
                                      `product_id`,
                                      `quantity`
    )
    VALUES (
            session_id,
            product_id,
            quantity
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_order_details` (IN `user_id` INT, IN `total` DECIMAL, IN `payment_id` INT)  BEGIN
    INSERT INTO `ecommerce`.`order_details` (
                                      `user_id`,
                                      `total`,
                                      `payment_id`
    )
    VALUES (
            user_id,
            total,
            payment_id
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_order_items` (IN `order_id` INT, IN `product_id` INT, IN `quantity` INT)  BEGIN
    INSERT INTO `ecommerce`.`order_items` (
                                      `order_id`,
                                      `product_id`,
                                      `quantity`
    )
    VALUES (
            order_id,
            product_id,
            quantity
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_payment_details` (IN `amount` DECIMAL, IN `provider` VARCHAR(60))  BEGIN
    INSERT INTO `ecommerce`.`payment_details` (
                                      `amount`,
                                      `provider`
    )
    VALUES (
            amount,
            provider
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_product` (IN `name` VARCHAR(60), IN `description` TEXT, IN `imageUrls` TEXT, IN `category_id` INT, IN `inventory_id` INT, IN `supplier_id` INT, IN `price` DECIMAL)  BEGIN
    INSERT INTO `ecommerce`.`product` (
                                      `name`,
                                      `description`,
                                       `imageUrls`,
                                       `category_id`,
                                       `inventory_id`,
                                       `supplier_id`,
                                       `price`
    )
    VALUES (
            name,
            description,
            imageUrls,
            category_id,
            inventory_id,
            supplier_id,
            price
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_product_catagory` (IN `name` VARCHAR(60), IN `description` TEXT)  BEGIN
    INSERT INTO `ecommerce`.`product_catagory` (
                                      `name`,
                                      `description`
    )
    VALUES (
            name,
            description
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_product_inventory` (IN `quantity` INT)  BEGIN
    INSERT INTO `ecommerce`.`product_inventory` (
                                      `quantity`
    )
    VALUES (
            quantity
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_review` (IN `product_id` INT, IN `user_id` INT, IN `description` INT, IN `rating` DECIMAL)  BEGIN
    INSERT INTO `ecommerce`.`review` (
                                      `product_id`,
                                      `user_id`,
                                      `description`,
                                      `rating`
    )
    VALUES (
            product_id,
            user_id,
            description,
            rating
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_shopping_session` (IN `user_id` INT, IN `total` DECIMAL)  BEGIN
    declare id int;
    INSERT INTO `ecommerce`.`shopping_session` (
                                                `user_id`,
                                                `total`)
    VALUES (
            user_id,
            total);
    set id = LAST_INSERT_ID();
    call SP_select_shopping_session(@id);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_supplier` (IN `name` VARCHAR(60))  BEGIN
    INSERT INTO `ecommerce`.`supplier` (
                                            `name`

    )
    VALUES (
            name
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_supplier_address` (IN `supplier_id` INT, IN `address_line1` VARCHAR(60), IN `address_line2` VARCHAR(60), IN `city` VARCHAR(60), IN `postal_code` VARCHAR(60), IN `country` VARCHAR(60), IN `telephone` VARCHAR(60), IN `mobile` VARCHAR(60))  BEGIN
    INSERT INTO `ecommerce`.`supplier_address` (
                                            `supplier_id`,
                                            `address_line1`,
                                            `address_line2`,
                                            `city`,
                                            `postal_code`,
                                            `country`,
                                            `telephone`,
                                            `mobile`
    )
    VALUES (
            supplier_id,
            address_line1,
            address_line2,
            city,
            postal_code,
            country,
            telephone,
            mobile
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_supplier_payment` (IN `supplier_id` INT, IN `payment_type` VARCHAR(60), IN `account_no` INT)  BEGIN
    INSERT INTO `ecommerce`.`supplier_payment` (
                                            `supplier_id`,
                                            `payment_type`,
                                            `account_no`
    )
    VALUES (
            supplier_id,
            payment_type,
            account_no
            );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_user` (IN `username` VARCHAR(60), IN `password` VARCHAR(255), IN `first_name` VARCHAR(60), IN `last_name` VARCHAR(60), IN `telephone` VARCHAR(20))  BEGIN


    INSERT INTO `ecommerce`.`user` (
        `username`,
        `password`,
        `first_name`,
        `last_name`,
        `telephone`
    )
    VALUES
    (
        username,
        password,
        first_name,
        last_name,
        telephone
    );

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_user_address` (IN `user_id` INT, IN `address_line1` VARCHAR(60), IN `address_line2` VARCHAR(60), IN `city` VARCHAR(60), IN `postal_code` VARCHAR(60), IN `country` VARCHAR(60), IN `telephone` VARCHAR(60))  BEGIN
    INSERT INTO `ecommerce`.`user_address` (
                                            `user_id`,
                                            `address_line1`,
                                            `address_line2`,
                                            `city`,
                                            `postal_code`,
                                            `country`,
                                            `telephone`,
                                            `mobile`)
    VALUES (
            user_id,
            address_line1,
            address_line2,
            city,
            postal_code,
            country,
            telephone,
            mobile);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_create_user_payment` (IN `user_id` INT, IN `payment_type` VARCHAR(60), IN `account_no` INT)  BEGIN
    INSERT INTO `ecommerce`.`user_payment` (
                                            `user_id`,
                                            `payment_type`,
                                            `account_no`
    )
    VALUES (
            user_id,
            payment_type,
            account_no
            );

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_cart_item` (IN `id` INT)  BEGIN
    delete from cart_item where cart_item.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_order_details` (IN `id` INT)  BEGIN
    delete from order_details where order_details.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_order_items` (IN `id` INT)  BEGIN
    delete from order_items where order_items.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_payment_details` (IN `id` INT)  BEGIN
    delete from payment_details where payment_details.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_product` (IN `id` INT)  BEGIN
    delete from product where product.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_product_catagory` (IN `id` INT)  BEGIN
    delete from product_catagory where product_catagory.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_product_inventory` (IN `id` INT)  BEGIN
    delete from product_inventory where product_inventory.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_review` (IN `id` INT)  BEGIN
    delete from review where review.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_shopping_session` (IN `id` INT)  BEGIN
    delete from shopping_session where shopping_session.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_supplier` (IN `id` INT)  BEGIN
    delete from supplier where supplier.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_supplier_address` (IN `id` INT)  BEGIN
    delete from supplier_address where supplier_address.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_supplier_payment` (IN `id` INT)  BEGIN
    delete from supplier_payment where supplier_payment.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_user` (IN `id` INT)  BEGIN

    delete from user where user.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_user_address` (IN `id` INT)  BEGIN

    delete from user_address where user_address.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_delete_user_payment` (IN `id` INT)  BEGIN
    delete from user_payment where user_payment.id = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_cart_item` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from cart_item;
    else
        select * from cart_item where cart_item.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_last_insert` (IN `table_name` VARCHAR(255))  BEGIN
    declare idfs2 int;
    set idfs2 = LAST_INSERT_ID();

    set @t = concat('select * from ',table_name,' where id = ',idfs2);
    prepare statement from @t;
    execute statement;
    deallocate prepare statement;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_order_details` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from order_details;
    else
        select * from order_details where order_details.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_order_items` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from order_items;
    else
        select * from order_items where order_items.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_payment_details` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from payment_details;
    else
        select * from payment_details where payment_details.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_product` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from product;
    else
        select * from product where product.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_product_catagory` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from product_catagory;
    else
        select * from product_catagory where product_catagory.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_product_inventory` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from product_inventory;
    else
        select * from product_inventory where product_inventory.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_review` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from review;
    else
        select * from review where review.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_shopping_session` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from shopping_session;
    else
        select * from shopping_session where shopping_session.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_supplier` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from supplier;
    else
        select * from supplier where supplier.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_supplier_address` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from supplier_address;
    else
        select * from supplier_address where supplier_address.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_supplier_payment` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from supplier_payment;
    else
        select * from supplier_payment where supplier_payment.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_user` (IN `id` INT)  BEGIN

    if id = -1 then
        select * from user;
    else
            select * from user where user.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_user_address` (IN `id` INT)  BEGIN

    if id = -1 then
        select * from user_address;
    else
        select * from user_address where user_address.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_select_user_payment` (IN `id` INT)  BEGIN
    if id = -1 then
        select * from user_payment;
    else
        select * from user_payment where user_payment.id = id;
    end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_cart_item` (IN `id` INT, IN `session_id` INT, IN `product_id` INT, IN `quantity` INT)  BEGIN
    update `cart_item`
    set `session_id` = session_id,
        `product_id` = product_id,
        `quantity` = quantity,
        `modified_at` = current_timestamp()
    where cart_item.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_order_details` (IN `id` INT, IN `user_id` INT, IN `total` DECIMAL, IN `payment_id` INT)  BEGIN
    update `order_details`
    set `user_id` = user_id,
        `total` = total,
        `payment_id` = payment_id,
        `modified_at` = current_timestamp()
    where order_details.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_order_items` (IN `id` INT, IN `order_id` INT, IN `product_id` INT, IN `quantity` INT)  BEGIN
    update `order_items`
    set `order_id` = order_id,
        `product_id` = product_id,
        `quantity` = quantity,
        `modified_at` = current_timestamp()
    where order_items.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_payment_details` (IN `id` INT, IN `amount` DECIMAL, IN `provider` VARCHAR(60))  BEGIN
    update `payment_details`
    set `amount` = amount,
        `provider` = provider,
        `modified_at` = current_timestamp()
    where payment_details.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_product` (IN `id` INT, IN `name` VARCHAR(60), IN `description` TEXT, IN `imageUrls` TEXT, IN `category_id` INT, IN `inventory_id` INT, IN `supplier_id` INT, IN `price` DECIMAL)  BEGIN
    update `product`
    set `name` = name,
        `description` = description,
        `imageUrls`=imageUrls,
        `category_id` = category_id,
        `inventory_id` = inventory_id,
        `supplier_id`=supplier_id,
        `price` = price,
        `modified_at` = current_timestamp()
    where product.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_product_catagory` (IN `id` INT, IN `name` VARCHAR(60), IN `description` TEXT, IN `modified_at` TIMESTAMP)  BEGIN
    update `product_catagory`
    set `name` = name,
        `description` = description,
        `modified_at` = modified_at
    where product_catagory.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_product_inventory` (IN `id` INT, IN `quantity` INT, IN `modified_at` TIMESTAMP)  BEGIN
    update `product_inventory`
    set `quantity` = quantity,
        `modified_at` = modified_at
    where product_inventory.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_review` (IN `id` INT, IN `product_id` INT, IN `user_id` INT, IN `description` INT, IN `rating` DECIMAL)  BEGIN
    update `review`
    set `user_id` = user_id,
        `product_id` = product_id,
        `description` = description,
        `rating` = rating
    where review.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_shopping_session` (IN `id` INT, IN `user_id` INT, IN `total` DECIMAL)  BEGIN
    update `shopping_session`
    set `user_id` = user_id,
        `total` = total
    where shopping_session.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_supplier` (IN `id` INT, IN `name` VARCHAR(60))  BEGIN
    update `supplier`
    set `name` = name
    where supplier.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_supplier_address` (IN `id` INT, IN `supplier_id` INT, IN `address_line1` VARCHAR(60), IN `address_line2` VARCHAR(60), IN `city` VARCHAR(60), IN `postal_code` VARCHAR(60), IN `country` VARCHAR(60), IN `telephone` VARCHAR(60), IN `mobile` VARCHAR(60))  BEGIN
    update `supplier_address`
    set `supplier_id` = supplier_id,
        `address_line1` = address_line1,
        `address_line2` = address_line2,
        `city` = city,
        `postal_code` = postal_code,
        `country` = country,
        `telephone` = telephone,
        `mobile` = mobile
    where supplier_address.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_supplier_payment` (IN `id` INT, IN `supplier_id` INT, IN `payment_type` VARCHAR(60), IN `account_no` INT)  BEGIN
    update `supplier_payment`
    set `supplier_id`= supplier_id,
        `payment_type`= payment_type,
        `account_no`= account_no
    where supplier_payment.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_user` (IN `id` INT, IN `username` VARCHAR(60), IN `password` VARCHAR(255), IN `first_name` VARCHAR(60), IN `last_name` VARCHAR(60), IN `telephone` VARCHAR(20))  BEGIN


    update `user`
    set
    `username` = username,
    `password` = password,
    `first_name` = first_name,
    `last_name` = last_name,
    `telephone` = telephone,
    `modified_at` = current_timestamp()
    where user.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_user_address` (IN `id` INT, IN `user_id` INT, IN `address_line1` VARCHAR(60), IN `address_line2` VARCHAR(60), IN `city` VARCHAR(60), IN `postal_code` VARCHAR(60), IN `country` VARCHAR(60), IN `telephone` VARCHAR(60))  BEGIN
    update `user_address`
    set `user_id`= user_id,
        `address_line1`= address_line1,
        `address_line2`= address_line2,
        `city`= city,
        `postal_code`= postal_code,
        `country`= country,
        `telephone`= telephone
    where user_address.id = id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_update_user_payment` (IN `id` INT, IN `user_id` INT, IN `payment_type` VARCHAR(60), IN `account_no` INT)  BEGIN
    update `user_payment`
    set `user_id`= user_id,
        `payment_type`= payment_type,
        `account_no`= account_no
    where user_payment.id = id;

END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `function_userAuth` (`username` VARCHAR(60), `password` VARCHAR(255)) RETURNS INT(11) BEGIN
        DECLARE valid INT;
        DECLARE passwd varchar(255);
        set @pass = (select exists(select user.password from user where user.username = username));

        set passwd = (select user.password from user where user.username = username);
        if @pass = 1 then
             if password = passwd then return 1;
            end if;
        elseif @pass = 0 then return -1;
        end if;

        return 0;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `provider` varchar(60) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `imageUrls` text DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_catagory`
--

CREATE TABLE `product_catagory` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rating` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_session`
--

CREATE TABLE `shopping_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopping_session`
--

INSERT INTO `shopping_session` (`id`, `user_id`, `total`, `created_at`, `modified_at`) VALUES
(1, 33, '55', '2022-01-24 08:00:50', '2022-01-24 08:00:50'),
(2, 33, '55', '2022-01-24 08:02:34', '2022-01-24 08:02:34'),
(3, 33, '55', '2022-01-24 08:02:45', '2022-01-24 08:02:45'),
(4, 33, '55', '2022-01-24 08:03:43', '2022-01-24 08:03:43'),
(5, 33, '55', '2022-01-24 08:03:51', '2022-01-24 08:03:51'),
(6, 33, '55', '2022-01-24 08:03:52', '2022-01-24 08:03:52'),
(7, 33, '55', '2022-01-24 08:05:07', '2022-01-24 08:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_address`
--

CREATE TABLE `supplier_address` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `address_line1` varchar(60) DEFAULT NULL,
  `address_line2` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `postal_code` varchar(60) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `telephone` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `payment_type` varchar(60) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `telephone`, `created_at`, `modified_at`) VALUES
(33, 'bamlaku', 'jesus12345', '@bamlak', 'amare', '091162003', '2022-01-18 15:01:08', '2022-01-18 15:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_line1` varchar(60) DEFAULT NULL,
  `address_line2` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `postal_code` varchar(60) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `telephone` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(60) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_catagory`
--
ALTER TABLE `product_catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shopping_session`
--
ALTER TABLE `shopping_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_address`
--
ALTER TABLE `supplier_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_catagory`
--
ALTER TABLE `product_catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_session`
--
ALTER TABLE `shopping_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_address`
--
ALTER TABLE `supplier_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `shopping_session` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment_details` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `product_inventory` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_catagory` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `shopping_session`
--
ALTER TABLE `shopping_session`
  ADD CONSTRAINT `shopping_session_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `supplier_address`
--
ALTER TABLE `supplier_address`
  ADD CONSTRAINT `supplier_address_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD CONSTRAINT `supplier_payment_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD CONSTRAINT `user_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
