-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 02:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57'),
(3, 263847474, 'tinamuriuh@gmail.com', 5, '2023-02-23', '2023-02-24', 'i want this car', 1, '2023-02-23 06:13:50', '2023-02-23 06:18:45'),
(4, 386822907, 'tinamuriuh@gmail.com', 13, '2023-02-25', '2023-02-26', 'I was requesting to book this Matatu kindly', 1, '2023-02-24 13:53:39', '2023-02-24 13:55:20'),
(5, 243590710, 'tinamuriuh@gmail.com', 11, '2020-06-06', '2020-12-05', 'iusjus', 2, '2023-02-25 07:47:42', '2023-03-17 09:00:00'),
(6, 764007985, 'tinamuriuh@gmail.com', 11, '2023-03-10', '2023-03-11', 'I want this Matatu', 0, '2023-03-10 11:57:36', NULL),
(7, 808105267, 'tinamuriuh@gmail.com', 11, '2023-03-17', '2023-03-18', 'I want to book this matatu', 0, '2023-03-17 10:13:53', NULL),
(8, 832488807, 'tinamuriuh@gmail.com', 14, '2023-03-25', '2023-03-26', 'preserve', 0, '2023-03-22 07:41:32', NULL),
(9, 356667570, 'tinamuriuh@gmail.com', 30, '2023-03-25', '2023-03-26', 'Preserve this', 0, '2023-03-24 13:10:37', NULL),
(10, 817682091, 'tinamuriuh@gmail.com', 23, '2023-04-01', '2023-04-01', 'hire', 0, '2023-03-24 13:13:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(22, 'Isuzu', '2023-02-24 09:42:50', NULL),
(23, 'Mistubishi', '2023-02-24 09:43:01', NULL),
(24, 'Noah', '2023-02-24 09:43:08', NULL),
(25, 'Voxy', '2023-02-24 09:43:14', '2023-03-17 06:35:58'),
(26, 'Nissan', '2023-03-10 10:54:41', NULL),
(27, 'Toyota', '2023-03-10 11:04:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Ruiru,Nairobi', 'test@zetech.ac.ke', '0712345678');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Agnes Muriu', 'tinamuriuh@gmail.com', '0112326141', 'I hope you received my booking details', '2023-03-17 10:44:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																																																<p align=\"justify\"></p><ol></ol><p class=\"MsoListParagraphCxSpFirst\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family: verdana; font-size: medium;\"><span style=\"line-height: 107%;\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"line-height: 107%;\">Booking and Payment: The user must make a\r\nbooking and payment in advance of the journey, and may be required to provide\r\npersonal and payment details.<o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family: verdana; font-size: medium;\"><span style=\"line-height: 107%;\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"line-height: 107%;\">Cancellation and Refunds: The user may be\r\nable to cancel their booking, but may be subject to cancellation fees and\r\nrestrictions. Refunds may be offered in certain circumstances.<o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family: verdana; font-size: medium;\"><span style=\"line-height: 107%;\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"line-height: 107%;\">Service Availability: The service provider\r\ndoes not guarantee availability of any specific journey or route, and may\r\ncancel or modify services without notice.<o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family: verdana; font-size: medium;\"><span style=\"line-height: 107%;\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"line-height: 107%;\">Liability: The service provider is not\r\nliable for any losses or damages incurred by the user as a result of using the\r\nservice, including but not limited to missed flights, connections, or\r\nappointments.<o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family: verdana; font-size: medium;\"><span style=\"line-height: 107%;\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"line-height: 107%;\">Privacy and Data Protection: The user\'s\r\npersonal information will be collected, stored, and used in accordance with\r\napplicable data protection laws.<o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family: verdana; font-size: medium;\"><span style=\"line-height: 107%;\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"line-height: 107%;\">User Conduct: The user is responsible for\r\ntheir conduct when using the service, and must not engage in any illegal or\r\nharmful activities.<o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\" style=\"text-align:justify;text-indent:-.25in;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family: verdana; font-size: medium;\"><span style=\"line-height: 107%;\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--></span><span style=\"line-height: 107%;\"><span style=\"font-family: verdana; font-size: medium;\">Intellectual Property: The service\r\nprovider retains all intellectual property rights in the service and associated\r\ncontent, and users must not reproduce, modify, or distribute any such content\r\nwithout permission.</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></span></p><p></p>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '																																								<div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">1. Personal Information: The service provider may collect personal information from users, such as their name, contact details, and payment information.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">2. Use of Information: The service provider may use personal information for various purposes, such as processing bookings and payments, providing customer support, and improving the service.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">3. Data Sharing: The service provider may share personal information with third parties, such as payment processors or other service providers, for the purposes of providing the service.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">4. Data Protection: The service provider will take appropriate measures to protect personal information from unauthorized access, use, or disclosure.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">5. Cookies and Tracking: The service provider may use cookies or other tracking technologies to collect information about user behavior on the website or app.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">6. Marketing Communications: The service provider may send marketing communications to users, but users can opt-out of these communications at any time.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">7. Data Subject Rights: Users may have certain rights regarding their personal information, such as the right to access, correct, or delete their data.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">8. Changes to Privacy Policy: The service provider may update the privacy policy from time to time, and users should review the policy periodically to stay informed of any changes</span></div>\n										\n										\n										\n										'),
(3, 'About Us ', 'aboutus', '																																																																																<div><div style=\"text-align: left;\"><div style=\"text-align: justify;\"><div style=\"text-align: center;\"><span style=\"font-weight: bold; font-style: italic; font-size: large; font-family: &quot;trebuchet ms&quot;;\">Welcome to our Matatu E-booking hiring system!</span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\"><br></span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\">We are a technology-driven platform that aims to revolutionize the public transportation industry by providing an easy and convenient way to book matatu rides in advance. Our system allows commuters to browse through a variety of matatu routes and book their preferred seats from the comfort of their homes or offices.</span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\"><br></span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\">At our core, we value efficiency, reliability, and affordability. We believe that by leveraging technology, we can provide a seamless experience for our customers while also making the transportation industry more accessible and inclusive.</span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\"><br></span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\">Our team is dedicated to ensuring that every customer has a positive experience when using our platform. We are committed to providing exceptional customer service and support, and we are always looking for ways to improve and enhance our system to better serve our customers.</span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\"><br></span></div><div><span style=\"font-size: large; font-family: &quot;trebuchet ms&quot;;\">Thank you for choosing our Matatu E-booking hiring system. We look forward to being your go-to platform for all your transportation needs.</span></div></div></div></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																																																		<div style=\"text-align: justify;\"><span style=\"font-style: italic; font-family: &quot;comic sans ms&quot;; font-weight: bold; font-size: large;\">Here are some frequently asked questions and answers for our Matatu E-booking hiring system:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q: <span style=\"font-weight: bold;\">What is the Matatu E-booking hiring system? </span>A: Our Matatu E-booking hiring system is an online platform that allows commuters to book matatu rides in advance. We provide an easy and convenient way to browse through a variety of matatus and book your preferred vehicle.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q:<span style=\"font-weight: bold;\"> How do I book a matatu ride using your system?</span> A: It\'s simple! Just visit our website, select your preferred matatu, choose your travel date and book the vehicle. You\'ll receive a confirmation email with your booking details.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q: <span style=\"font-weight: bold;\">How far in advance can I book a matatu ride?</span> A: You can book a matatu ride up to 10 days in advance.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q: <span style=\"font-weight: bold;\">What happens if I need to cancel my booking?</span> A: You can cancel your booking up to 24 hours before your scheduled departure time. A cancellation fee may apply.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q: <span style=\"font-weight: bold;\">What payment methods do you accept?</span> A: We accept payment via mobile money and debit/credit card.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q: <span style=\"font-weight: bold;\">What happens if the matatu is late or doesn\'t show up?</span> A: We work with reputable matatu operators to ensure that they arrive on time. However, if there are any delays or cancellations, we\'ll notify you as soon as possible and provide alternative options.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q:<span style=\"font-weight: bold;\"> Is my personal and payment information secure?</span> A: Yes, we take the security of your personal and payment information very seriously. Our platform is encrypted to protect your information, and we only use trusted payment providers to process transactions.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q:<span style=\"font-weight: bold;\"> Do you offer discounts or promotions?</span> A: Yes, we occasionally offer discounts and promotions to our customers. Be sure to check our website and social media pages for updates.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;comic sans ms&quot;; font-size: large;\">Q: <span style=\"font-weight: bold;\">How can I contact your customer support team?</span> A: You can contact our customer support team by emailing us <a href=\"ndarwaantony@zetech.ac.ke\" title=\"ndarwaantony@zetech.ac.ke\" target=\"_blank\" style=\"\">ndarwaantony@zetech.ac.ke</a> or by filling out the contact form on our website. We\'ll respond to your inquiry as soon as possible.</span></div>\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, 'antonygithendu@gmail.com', '2023-02-24 11:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 0),
(2, 'tinamuriuh@gmail.com', 'Best services ever', '2023-03-17 08:56:40', 1),
(3, 'antonygithendu@gmail.com', 'It was a pleasure working with you, highly recommendable', '2023-03-17 08:57:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(2, 'Agnes Muriu', 'tinamuriuh@gmail.com', '81df57ef9d5dc057ad9d1095fb2ef18c', '0112327141', NULL, NULL, NULL, NULL, '2023-02-23 06:12:27', NULL),
(3, 'Antony Githendu', 'antonygithendu@gmail.com', '0dc9b9bc3ac1f6bb5e42ca9b671a4e31', '0790295419', '', '', '', '', '2023-03-10 11:58:24', '2023-03-17 07:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(11, 'Opposite', 22, '3000 Engine cc,\r\nHeavy Sound System,\r\n32 inch TV screens on each seat,\r\nQuality interior designing,\r\nClub house interior lighting,\r\nComfy seats.\r\n\r\n\r\n\r\n\r\n', 50000, 'Diesel', 2022, 33, 'Opposite 2.jpeg', 'Opposite 1.jpeg', 'Opposite 3.jpeg', 'Opposite 4.jpeg', '', 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, '2023-02-24 10:21:45', '2023-03-17 08:22:33'),
(13, 'Off Spring', 22, '3000 Engine cc,\r\nTV screens mounted,\r\nGood sound system,\r\nGood interior designing,\r\nComfy seats.\r\n', 40000, 'Petrol', 2022, 33, 'Off spring 1.jpeg', 'Off spring 2.jpeg', 'Offspring 3.jpeg', 'Offspring 4.jpeg', '', 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-02-24 10:26:24', '2023-03-17 08:22:45'),
(14, 'Kengele', 23, '2000 Engine cc,\r\nQuality sound system,\r\nQuality Interior lighting.\r\n', 20000, 'Diesel', 2019, 14, 'Kengele 1.jpeg', 'Kengele 2.jpeg', 'Kengele 3.jpeg', 'Kengele 4.jpeg', '', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2023-02-24 10:28:17', '2023-03-17 08:21:51'),
(15, 'Titan', 23, '2000 Engine cc,\r\nAll terrain vehicle,\r\nHeavy sound system,\r\nTV screens mounted back of every seat.', 15000, 'Petrol', 2016, 14, 'Titan 2.jpeg', 'Titan 1.jpeg', 'Titan 3.jpeg', 'Titan 1.jpeg', 'Titan 2.jpeg', 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-09 07:04:05', '2023-03-17 08:24:43'),
(16, 'Kichimbi', 27, '2500 Engine cc,\r\nTurbo inbuilt,\r\nQuality sound system,\r\ncomfy seats.', 16000, 'Diesel', 2020, 14, 'Kichimbi 1.jpeg', 'kichimbi 2.jpeg', 'kichimbi 3.jpeg', 'kichimbi 4.jpeg', 'Kichimbi 1.jpeg', 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-09 12:10:10', '2023-03-17 08:26:43'),
(17, 'Red Team', 26, '2000 Engine cc,\r\nBlack Magic Colour,\r\nQuality sound system,\r\nComfy seats.', 15000, 'Petrol', 2022, 11, 'Red team 1.jpeg', 'Red team 2.jpeg', 'Red team 3.jpeg', 'Red team 4.jpeg', 'Red team 1.jpeg', 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-10 10:57:47', '2023-03-17 08:28:18'),
(20, 'Black Market', 27, '2000 Engine cc,\r\nQuality sound system,\r\nComfy seats.', 15000, 'Petrol', 2023, 14, 'Black market 1.jpeg', 'black market 2.jpeg', 'black market 3.jpeg', 'Black market 1.jpeg', 'black market 2.jpeg', 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-10 11:11:33', '2023-03-17 08:30:12'),
(21, 'Squid Game', 22, '3000 Engine cc, Good sound system, Quality interior designing, Comfy seats', 350000, 'Diesel', 2022, 33, 'Squid 1.jpeg', 'Squid 2.jpeg', 'Squid 3.jpeg', 'Squid 1.jpeg', 'Squid 2.jpeg', 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-10 11:53:36', '2023-03-17 08:32:13'),
(22, 'Puddin', 22, '3000 Engine cc,\r\nGood sound system,\r\nQuality Interior,\r\n', 33000, 'Diesel', 2022, 33, 'Puddin 1.jpeg', 'Puddin 2.jpeg', 'Puddin.jpeg', 'Puddin 1.jpeg', 'Puddin 2.jpeg', 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-17 05:20:10', '2023-03-17 08:35:27'),
(23, 'Bumble Bee', 27, '2000 Engine cc\r\nQuality sound system\r\nTinted windows\r\nSpaced seats\r\n\r\n', 12000, 'Petrol', 2020, 14, 'Bubble Bee.jpeg', 'Bubble Bee 1.jpeg', 'Bubble Bee 2.jpeg', 'Bubble Bee 3.jpeg', 'Bubble Bee 1.jpeg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-17 05:38:23', '2023-03-17 08:34:37'),
(24, 'Black Heart', 26, '2000 Engine cc,\r\nQuality sound system,\r\nQuality and comfy seats.\r\n', 7000, 'Petrol', 2022, 7, 'Black Heart.jpeg', 'Black Heart 2.jpeg', 'Black Heart 1.jpeg', 'Black Heart 2.jpeg', 'Black Heart.jpeg', 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-17 05:58:03', '2023-03-17 08:39:05'),
(25, 'Black Berry', 25, '2000 Engine cc,\r\nHeavy sound system,\r\nTinted windows,\r\nSpaced seats,\r\nComfy seats.\r\n', 7500, 'Petrol', 2020, 7, 'Black Berry 1.jpeg', 'Black Berry.jpeg', 'Black Berry 2.jpeg', 'Black Berry.jpeg', 'Black Berry 1.jpeg', 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-17 06:02:56', '2023-03-17 08:41:07'),
(26, 'Grey Tick', 24, '2000 Engine cc,\r\nQuality sound system,\r\nTinted windows,\r\nTwo rear sliding doors,\r\nLarge built-in fuel tank.', 7000, 'Petrol', 2019, 7, 'Grey Tick.jpeg', 'Grey Tick 1.jpeg', 'Grey Tick 2.jpeg', 'Grey Tick.jpeg', 'Grey Tick 1.jpeg', 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-17 06:19:28', '2023-03-17 08:43:19'),
(27, 'Jinx', 22, '3000 Engine cc,\r\nHeavy sound system,\r\nTV screens mounted,\r\nQuality interior lighting,\r\nComfy seats.\r\n', 40000, 'Petrol', 2023, 33, 'Jinx 3.jpeg', 'Jinx 1.jpeg', 'Jinx 3.jpeg', 'Jinx 1.jpeg', 'Jinx 2.jpeg', 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-17 06:22:50', '2023-03-17 08:46:39'),
(28, 'Dice & Roll', 27, '2000 Engine cc,\r\nQuality sound system,\r\nGood Interior designing,\r\nQuality interior lighting,\r\nComfy seats.', 15000, 'Petrol', 2023, 14, 'Dice and roll 1.jpeg', 'Dice and roll 2.jpeg', 'Dice and roll 3.jpeg', 'Dice and roll 4.jpeg', 'Dice and roll 1.jpeg', 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, '2023-03-17 06:41:35', '2023-03-17 08:50:24'),
(30, 'Bionic', 22, 'Good', 40000, 'Diesel', 2023, 33, 'Bionic 2.jpeg', 'Bionic 1.jpeg', 'bionic 3.jpeg', 'Bionic interior.jpeg', '', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, '2023-03-24 13:09:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
