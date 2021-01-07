-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2021 at 02:05 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', '9999857868', 'anuj@gmail.com', 'Male', 27, 'O+', ' bdhdh dhf hd h', ' d hd hd fh d', '2017-06-30 20:14:16', 1),
(2, 'dasdasd', '41241241241', 'dasdasd@dfdsf.com', 'Male', 34, 'AB-', ' fsdfds', ' fsdf', '2017-06-30 20:48:11', 1),
(3, 'Ami', '42352352352', '', 'Male', 23, 'A+', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2017-07-01 07:21:21', 1),
(4, 'fdsfsgg', '35345435345', '', 'Female', 26, 'AB-', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2017-07-01 07:21:42', 1),
(5, 'Nitesh Kumart', '8569855244', 'niiii@test.com', 'Male', 32, 'A-', 'Test Demo', 'Test demo Test demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demo', '2017-07-01 09:00:18', 1),
(6, 'Test', '9845612334', 'test@test.com', 'Male', 28, 'A+', 'afshdh', ' srhsdfa', '2020-12-17 19:31:44', 1),
(7, 'Gayathri B', '7259264750', 'gayathrib2708@gmail.com', 'Female', 21, 'B+', 'fgzafgyesrzv', 'segsfhrsrafsd ', '2020-12-18 11:51:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(7, 'B-', '2020-12-17 19:32:58'),
(8, 'B+', '2020-12-18 11:50:22'),
(9, 'A+', '2020-12-18 16:27:21'),
(10, 'A-', '2020-12-18 16:27:23'),
(11, 'O+', '2020-12-18 16:27:34'),
(12, 'O-', '2020-12-18 16:27:36'),
(13, 'AB+', '2020-12-18 16:27:42'),
(14, 'AB-', '2020-12-18 16:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Address 																				', 'test@test.com', '8585233222');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'Gayathri', 'test@test.com', '9445389613', 'Test', '2020-12-18 16:30:03', NULL),
(6, 'test1', 'test2@test.com', '211123206', 'etstsfshdgDGg', '2020-12-18 16:30:28', NULL),
(7, 'sfgstad', 'test3@test.com', '8946123523', 'test2sgseraklggs', '2020-12-18 16:31:24', NULL),
(8, 'tst;srlks;zkln', 'test4@test.com', '11111112356', 'etfsdtzhdfzgrytjb', '2020-12-18 16:31:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Donating blood regularly has proved beneficial not only for the recipient but also for the donor. It is helpful for vital organs, and it reduces the risk of chronic diseases such as cancer and stroke.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">For certain treatments like chemotherapy, blood is required on a daily basis, whereas victims of accidents may require up to 100 units of blood transfusion. In India, the blood shortage is&nbsp;more than <span style=\"font-weight: bold;\">2 million pint</span> and counting.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">This World Blood Donor Day, &nbsp;here are <span style=\"font-weight: bold;\">13</span> reasons why you should donate blood:</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">1. Reduce the risk of heart attacks and liver ailment</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Donating blood regularly is beneficial to prevent and reduce heart attacks and liver ailments. The risk of heart and liver-related problems are caused by iron overload in the body. Donating blood helps in maintaining the iron level in the body and thus reduce those risk.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/Untitled-design7.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">2. Lower the risk of cancer</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Cancer is the most feared and deadly disease. Blood donation helps in lowering the risk of cancer. By donating blood regularly the iron level in the blood is balanced and the risk of cancer-related to the liver, lungs, and intestine gets lower.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/what-is-cancer.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">3. New blood cells</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Once we donate blood, the body tries to restore the blood loss. This helps in the production of the new blood cells and maintain good health.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/RBCsWBCsPlatelets.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">4. Reduced risk of hemochromatosis</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Hemochromatosis is a disease that occurs due to an increase in the absorption of iron by the body. Blood donation helps in reducing iron overload in the body and prevent Hemochromatosis.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/Hemochromatosis.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">5. Maintain Weight</span><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">It is recommended to donate blood for those who are overweight. Regularly donating blood helps in weight loss and burn fat up to 650 calories.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/MaintainWeight.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">6. Helps prevent premature aging.</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">While donating blood, you not only lose weight but also helps in reducing stress. Stress is one of the reasons that trigger premature aging. Blood donation helps in reducing stress on your mind and body. Also, keeps the skin tight and wrinkle-free.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/prematureageing.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">7.&nbsp;</span><span style=\"font-weight: 700;\">Speeds up the healing process</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">The body tries to adjust to the loss of red blood the cells we donate blood, these adjustments also help in accelerating the wound healing process.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/healing-process.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><div style=\"text-align: justify; \"><br></div><div><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">8. Lower cholesterol level</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Blood contains iron, if the iron in the blood is overloaded it can increase the chances of blockage in blood vessels. Blood donation can help to reduce the amount of iron in the blood thus helps to lower cholesterol.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/cholesterol-level.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">9. Free Medical checkup</span><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Every donor goes through a routine checkup prior to donation. Body temperature is checked along with blood pressure, hemoglobin, and pulse. Blood is tested for 13 infectious diseases like HIV, West Nile Virus, hepatitis B and C, and Syphilis. It gives you a cost-free quick look into your health.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">&nbsp;</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><a href=\"http://www.firstpost.com/wp-content/uploads/2017/06/FreeMedicalcheckup.jpg\" style=\"padding: 0px; margin: 0px; display: inline-block; cursor: pointer; outline: 0px; color: rgb(223, 91, 67);\"><img class=\"alignnone size-full wp-image-3594327\" src=\"https://www.firstpost.com/wp-content/uploads/2017/06/FreeMedicalcheckup.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\" width=\"825\" height=\"500\" style=\"vertical-align: top; width: 640px;\"></a></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">10. Live a longer life</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">The people who involve in altruistic work have proven to live a longer life. Blood donation is altruistic works so it not only save the lives of others but also helps you live longer and healthier.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/100th-birthday-cake-007.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">11. Psychological Upliftment</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Besides all the healthy benefits that we obtain by donating blood, we also get the powerful benefit psychologically by helping the one in need.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/psyuplift.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">12. Blood storage</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">There is no other method to manufacture blood; the only way to collect blood is from the people who are willing to donate. The blood that we donate is also stored at the blood bank after its usage and used in the future when needed. Some chemicals are added to it in order to preserve it for a long time and use it in the future when needed.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/Bloodstorage.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">13.&nbsp;</span><span style=\"font-weight: 700;\">Save lives</span></p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\">Every time we donate one pint of blood it helps save three lives, so if we donate four times in a year we end up saving 12 lives. We don’t have to be a superhero to save someone, a simple act of donating blood can also save lives.</p><p style=\"text-align: justify; padding: 0px; margin-bottom: 20px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: &quot;Playfair Display&quot;, sans-serif; color: rgb(0, 0, 0);\"><img src=\"https://www.firstpost.com/wp-content/uploads/2017/06/Savelives.jpg\" alt=\"World Blood Donor Day 13 Reasons why you should donate blood\"><br></p></div>'),
(3, 'About Us ', 'aboutus', '										<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Blood Bank &amp; Donor Management System</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;(BBDMS) is a browser-based&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">system</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;that is designed to store, process, retrieve and analyze information concerned with the administrative and inventory&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">management</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;within a&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">blood bank</b>\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
