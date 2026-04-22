-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2026 at 06:12 AM
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
-- Database: `enterprise_architecture`
--
CREATE DATABASE IF NOT EXISTS `enterprise_architecture` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `enterprise_architecture`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `productnumber` varchar(50) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productbrand` varchar(50) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(4) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `emp_num` varchar(12) NOT NULL,
  `sales_date` date NOT NULL,
  `sales_invoice` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `productnumber`, `productname`, `productbrand`, `price`, `quantity`, `subtotal`, `emp_num`, `sales_date`, `sales_invoice`) VALUES
(1, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', ''),
(7, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', ''),
(8, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', ''),
(9, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(5) NOT NULL,
  `emp_num` varchar(50) NOT NULL,
  `fname` varchar(35) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(9) NOT NULL,
  `employment_status` varchar(15) NOT NULL,
  `position` varchar(200) NOT NULL,
  `sss` varchar(50) NOT NULL,
  `philhealth` varchar(100) NOT NULL,
  `tin` varchar(50) NOT NULL,
  `pagibig` varchar(50) NOT NULL,
  `taxcategory` varchar(20) NOT NULL,
  `salary` float NOT NULL,
  `rateperday` float NOT NULL,
  `photo` varchar(120) NOT NULL,
  `cnum` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` varchar(70) NOT NULL,
  `civil_status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_num`, `fname`, `mname`, `lname`, `address`, `gender`, `employment_status`, `position`, `sss`, `philhealth`, `tin`, `pagibig`, `taxcategory`, `salary`, `rateperday`, `photo`, `cnum`, `email`, `department`, `civil_status`) VALUES
(116, '2021-098', 'ABEGAIL', '', 'PASIA', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'pasia.webp', '', 'abegail.pasia@pcaat.edu.ph', 'FACULTY/TVL/PART-TIME', ''),
(118, '2021-003', 'AILA MARIE', '', 'BATA-ANON', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'bata-anon.webp', '', 'ailamarie.bata-anon@pcaat.edu.ph', 'FACULTY/RESEARCH AND SOCIAL SCIENCES', ''),
(119, '2021-089', 'AILONA', ' L.', 'LIPIT', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'lipit.webp', '', 'ailona.lumberio-lipt@pcaat.edu.ph', 'FACULTY/LANGUAGES AND LITERATURE', ''),
(120, '2021-035', 'AIREEN', '', 'EVANGELISTA', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'evangelista.webp', '', 'aireen.evangelista@pcaat.edu.ph', 'FACULTY/BUSINESS AND SCIENCE', ''),
(122, '2021-001', 'ALLYSZA', 'N.', 'DATU', '', 'Female', '', 'Executive Assistant', '', '', '', '', '', 0, 0, '', '', 'allysza.datu@pcaat.edu.ph', 'Executive Assistant', ''),
(123, '2021-017', 'ALMHAR ', 'D.', 'PANELO', '', 'Male', '', 'Faculty', '', '', '', '', '', 0, 0, 'panelo.webp', '', 'almhar.panelo@pcaat.edu.ph', 'FACULTY/TECHNICAL-VOCATIONAL-LIVELIHOOD', ''),
(127, '2021-001', 'ANGEL', 'L.', 'DATU', '', 'Male', '', 'Faculty', '', '', '', '', '', 0, 0, 'angeldatu.webp', '', 'angel.datu@pcaat.edu.ph', 'FACULTY/LANGUAGES AND LITERATURE', ''),
(128, '2021-013', 'ANGELICA', 'R.', 'ILAN', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'ilan.webp', '', 'angelica.ilan@pcaat.edu.ph', 'FACULTY/RESEARCH AND SOCIAL SCIENCES', ''),
(131, '2021-038', 'ARIES', '', 'SEGUI', '', 'Male', '', 'Maintenance', '', '', '', '', '', 0, 0, '', '', 'aries.sigue@pcaat.edu.ph', 'Maintenance', ''),
(135, '2021-008', 'BERMIN', '', 'CAPELLAN', '', 'Female', '', 'Dept. Head B&S', '', '', '', '', '', 0, 0, 'capellan.webp', '', 'bermin.capellan@pcaat.edu.ph', 'Dept. Head, Business and Sciences', ''),
(138, '2021-045', 'CHERRY ROSE', '', 'TAGUIAM', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'taguiam.webp', '', 'cherryrose.taguiam@pcaat.edu.ph', 'FACULTY/RESEARCH AND SOCIAL SCIENCES', ''),
(139, '2021-001', 'CHIARA REINA', '', 'DATU', '', 'Female', '', 'PRESIDENT', '', '', '', '', '', 0, 0, '', '', 'chiara.datu@pcaat.edu.ph', 'President', ''),
(140, '2021-015', 'CHRISTIAN', 'M.', 'ARELLANO', '', 'Male', '', 'OIC, PPF', '', '', '', '', '', 0, 0, 'arellano.png', '', 'christian.arellano@pcaat.edu.ph', 'OIC, PPF', ''),
(142, '2021-043', 'CLARISSA', 'S.', 'LICUAN', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'licuan.webp', '', 'clarissa.licuan@pcaat.edu.ph', 'FACULTY/LANGUAGES AND LITERATURE', ''),
(144, '2021-030', 'DANDY', 'MONTOYA', 'BONETE', '', 'Male', '', 'Faculty', '', '', '', '', '', 0, 0, 'bonete.webp', '', 'dandy.bonete@pcaat.edu.ph', 'FACULTY/BUSINESS AND SCIENCE', ''),
(147, '2021-033', 'DAVETTE JOHANA', '', 'GARCIA', '', 'Female', '', 'Marketing', '', '', '', '', '', 0, 0, '', '', 'davette.garcia@pcaat.edu.ph', 'Marketing', ''),
(153, '2021-036', 'EDUARD', '', 'JOSEPH', '', 'Male', '', 'Maintenance', '', '', '', '', '', 0, 0, '', '', 'eduard.joseph@pcaat.edu.ph', 'Maintenance', ''),
(160, '2021-033', 'MA. FILIPINA', '', 'GARCIA', '', 'Female', '', 'Business Development Officer', '', '', '', '', '', 0, 0, '', '', 'filipina.garcia@pcaat.edu.ph', 'Business Development Officer', ''),
(170, '2021-001', 'IDELFONSO', 'L.', 'DATU', '', 'Male', '', 'VP for Admin and Finance', '', '', '', '', '', 0, 0, 'ideldatu.webp', '', 'idel.datu@pcaat.edu.ph', 'Vice President for Administration and Finance', ''),
(171, '2021-012', 'IRIS', '', 'FRANI', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'frani.webp', '', 'iris.frani@pcaat.edu.ph', 'FACULTY/RESEARCH AND SOCIAL SCIENCES', ''),
(180, '2021-096', 'JOSE ARIEL', 'P', 'CLEMENTE', 'Sta. Cruz, Manila', 'Male', '', 'IT Staff', '', '', '', '', 'B', 24000, 0, 'clemente.webp', '', 'jose.clemente@pcaat.edu.ph', 'FACULTY/TECHNICAL-VOCATIONAL-LIVELIHOOD', 'SIngle'),
(183, '2021-007', 'JUDY', 'G.', 'SIBAYAN', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'sibayan.webp', '', 'judy.sibayan@pcaat.edu.ph', 'FACULTY/RESEARCH AND SOCIAL SCIENCES', ''),
(193, '2021-018', 'KYLA MARIE', '', 'PASTORAL', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'pastoral.webp', '', 'kyla.pastoral@pcaat.edu.ph', 'FACULTY/TECHNICAL-VOCATIONAL-LIVELIHOOD', ''),
(201, '2021-005', 'MAI NICOLE', 'R.', 'OLAGUER', '', 'Female', '', 'Asst. Principal', '', '', '', '', '', 0, 0, 'olaguer.webp', '', 'mai.olaguer@pcaat.edu.ph', 'ASSISTANT PRINCIPAL', ''),
(205, '2021-019', 'MARK', '', 'ELABA', '', 'Male', '', 'Faculty', '', '', '', '', '', 0, 0, '', '', 'mark.elaba@pcaat.edu.ph', 'TECHNICAL-VOCATIONAL-LIVELIHOOD', ''),
(215, '2021-009', 'MICHELLE MAE', '', 'FERNANDEZ', '', 'Female', '', 'IT Head', '', '', '', '', '', 0, 0, 'fernandez.webp', '', 'michelle.fernandez@pcaat.edu.ph', 'IT HEAD', ''),
(223, '2021-028', 'PEARL ANGELETTE', '', 'MARIANO', '', 'Female', '', 'HRD Head', '', '', '', '', '', 0, 0, 'pearlmariano.webp', '', 'pearl.mariano@pcaat.edu.ph', 'Head, HRD/ OIC, Marketing Director', ''),
(224, '2021-001', 'PERLITA', '', 'DATU', '', 'Female', '', 'Consultant', '', '', '', '', '', 0, 0, '', '', 'perlita.datu@pcaat.edu.ph', 'Internal and External Consultant', ''),
(226, '2021-027', 'PHOEBE', '', 'CLAROS', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'claros.webp', '', 'phoebe.claros@pcaat.edu.ph', 'FACULTY/LANGUAGES AND LITERATURE', ''),
(227, '2021-040', 'PRINCESS DIANE', '', 'DE GUIA', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'dequia.webp', '', 'princess.deguia@pcaat.edu.ph', 'FACULTY/TECHNICAL-VOCATIONAL-LIVELIHOOD', ''),
(229, '2021-029', 'PSALM', 'DANIEL', 'CAGUIA', '', 'Female', '', 'Registrar Staff', '', '', '', '', '', 0, 0, 'caguia.webp', '', 'psalm.caguia@pcaat.edu.ph', 'Registrar staff', ''),
(230, '2021-024', 'REXEL IAN', '', 'REYES', '', 'Male', '', 'IT Staff', '', '', '', '', '', 0, 0, 'reyes.webp', '', 'rexel.reyes@pcaat.edu.ph', 'IT Staff', ''),
(236, '2021-026', 'RICKARDO', '', 'SANTIAGO', '', 'Male', '', '', '', '', '', '', '', 0, 0, '', '', 'rickardo.santiago@pcaat.edu.ph', 'REGISTRAR Staff', ''),
(237, '2021-032', 'ROBERT JEROME', 'J.', 'DE VERA', '', 'Male', '', 'Faculty', '', '', '', '', '', 0, 0, 'devera.webp', '', 'robert.devera@pcaat.edu.ph', 'FACULTY/RESEARCH AND SOCIAL SCIENCES', ''),
(238, '2021-011', 'ROCELINE', 'P.', 'SORIQUEZ', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'soriquez.webp', '', 'roceline.soriquez@pcaat.edu.ph', 'FACULTY/TECHNICAL-VOCATIONAL-LIVELIHOOD', ''),
(239, '2021-099', 'ROCHELLE ANN', '', 'PANA', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'pana.webp', '', 'rochell.pana@pcaat.edu.ph', 'FACULTY/BUSINESS AND SCIENCE', ''),
(245, '2021-033', 'ROWENA', '', 'GARCIA', '', 'Female', '', '', '', '', '', '', '', 0, 0, '', '', 'rowena.garcia@pcaat.edu.ph', 'Part time, Registrar Staff', ''),
(246, '2021-023', 'RUBEN', 'M.', 'DE LIMA', '', 'Male', '', 'Faculty', '', '', '', '', '', 0, 0, 'delima.webp', '', 'ruben.delima@pcaat.edu.ph', 'FACULTY/BUSINESS AND SCIENCE', ''),
(248, '2021-022', 'SERVANDO', '', 'CRUZ', '', 'Male', '', '', '', '', '', '', '', 0, 0, 'cruz.webp', '', 'servando.cruz@pcaat.edu.ph', 'MARKETING OFFICER', ''),
(249, '2021-021', 'GLOLAND SHAI', '', 'DE LEON', '', 'Female', '', 'Registrar Staff', '', '', '', '', '', 0, 0, 'deleon.webp', '', 'shai.deleon@pcaat.edu.ph', 'Registrar Staff', ''),
(250, '2021-004', 'SHERINA', '', 'VILLANUEVA', '', 'Female', '', 'Department Head', '', '', '', '', '', 0, 0, 'villanueva.webp', '', 'sherina.villanueva@pcaat.edu.ph', 'Dep. Head, Language and Literature', ''),
(252, '2021-020', 'VANESSA MAE', '', 'OJEDA', '', 'Female', '', 'Faculty', '', '', '', '', '', 0, 0, 'ojeda.webp', '', 'vanessamae.ojeda@pcaat.edu.ph', 'FACULTY/RESEARCH AND SOCIAL SCIENCES', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productnumber` varchar(50) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productbrand` varchar(50) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(4) NOT NULL,
  `productstatus` varchar(20) NOT NULL,
  `photo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productnumber`, `productname`, `productbrand`, `price`, `quantity`, `productstatus`, `photo`) VALUES
(1, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `productnumber` varchar(50) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productbrand` varchar(50) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(4) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `emp_num` varchar(12) NOT NULL,
  `sales_date` date NOT NULL,
  `sales_invoice` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `productnumber`, `productname`, `productbrand`, `price`, `quantity`, `subtotal`, `emp_num`, `sales_date`, `sales_invoice`) VALUES
(1, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', ''),
(7, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', ''),
(8, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', ''),
(9, '12321', 'CDO Conrned Beef', 'CDO', 40.00, 1, 40.00, '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `timelogs`
--

CREATE TABLE `timelogs` (
  `id` int(4) NOT NULL,
  `qr_code` text NOT NULL,
  `emp_num` varchar(80) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `mname` varchar(80) NOT NULL,
  `lname` varchar(80) NOT NULL,
  `login_date` varchar(12) NOT NULL,
  `timein` varchar(19) NOT NULL,
  `timeout` varchar(19) NOT NULL,
  `day` varchar(10) NOT NULL,
  `time_in` varchar(16) NOT NULL,
  `time_out` varchar(16) NOT NULL,
  `status` varchar(10) NOT NULL,
  `position` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timelogs`
--

INSERT INTO `timelogs` (`id`, `qr_code`, `emp_num`, `fname`, `mname`, `lname`, `login_date`, `timein`, `timeout`, `day`, `time_in`, `time_out`, `status`, `position`) VALUES
(1, 'abegail.pasia@pcaat.edu.ph', '2021-098', 'Abegail', '', 'Pasia', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'MIS Officer'),
(2, 'jose.clemente@pcaat.edu.ph', '2021-096', 'Jose Ariel', '', 'Clemente', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'IT Officer'),
(3, 'ailona.lumberio-lipit@pcaat.edu.ph', '2021-089', 'Ailona', '', 'Lipit', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(4, 'rochelle.pana@pcaat.edu.ph', '2021-099', 'Rochelle', '', 'Pana', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(5, 'jose.clemente@pcaat.edu.ph', '2021-096', 'Jose Ariel', '', 'Clemente', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'IT Officer'),
(6, 'bermin.capellan@pcaat.edu.ph', '2021-008', 'Bermin', '', 'Capellan', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'HRD Officer'),
(7, 'michelle.fernandez@pcaat.edu.ph', '2021-009', 'Michelle', '', 'Fernandez', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Dept. Head - Miso'),
(8, 'judy.sibayan@pcaat.edu.ph', '2021-007', 'Judy', '', 'Sibayan', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(9, 'juliamhel.bacquillas@pcaat.edu.ph', '2021-006', 'Juliamhel', '', 'Baquillas', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Registrar'),
(10, 'mai.olaguer@pcaat.edu.ph', '2021-005', 'Mai', '', 'Olaguer', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Asst. Principal'),
(11, 'chiara.datu@pcaat.edu.ph', '2021-001', 'Chiara', '', 'Datu', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(12, 'idel.datu@pcaat.edu.ph', '2021-002', 'Idelfonso', '', 'Datu', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'VP for Admin and Finan'),
(13, 'ailamarie.bata-anon@pcaat.edu.ph', '2021-003', 'Aila Marie', '', 'Bata-anon', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(14, 'sherina.villanueva@pcaat.edu.ph', '2021-004', 'Sherina', '', 'Villanueva', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'OSA Dept.Head'),
(15, 'mai.olaguer@pcaat.edu.ph', '2021-005', 'Mai', '', 'Olaguer', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Asst. Principal'),
(16, 'roceline.soriquez@pcaat.edu.ph', '2021-011', 'Roceline', '', 'Soriquez', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(17, 'iris.frani@pcaat.edu.ph', '2021-012', 'Iris', '', 'Frani', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Dept. Head'),
(18, 'angelica.ilan@pcaat.edu.ph', '2021-013', 'Angelica', '', 'Ilan', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(19, 'arnold.avellanoza@pcaat.edu.ph', '2021-014', 'Arnold', '', 'Abellanoza', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Marketing Officer'),
(20, 'christian.arellano@pcaat.edu.ph', '2021-015', 'Christian', '', 'Arellano', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(21, 'carissa.viduya@pcaat.edu.ph', '2021-016', 'Carissa', '', 'Biduya', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(22, 'almar.panelo@pcaat.edu.ph', '2021-017', 'Almar', '', 'Panelo', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(23, 'kylamarie.pastoral@pcaat.edu.ph', '2021-018', 'Kyla Marie', '', 'Pastoral', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(24, 'mark.elaba@pcaat.edu.ph', '2021-019', 'Mark', '', 'Elaba', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(25, 'vanessa.ojeda@pcaat.edu.ph', '2021-020', 'Vanessa', '', 'Ojeda', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(26, 'shai.deleon@pcaat.edu.ph', '2021-021', 'Gloland Shai', '', 'De Leon', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(27, 'servando.cruz@pcaat.edu.ph', '2021-022', 'Servando', '', 'Cruz', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'OIC_PPF'),
(28, 'ruben.delima@pcaat.edu.ph', '2021-023', 'Ruben', '', 'De Lima', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(29, 'rexelian.reyes@pcaat.edu.ph', '2021-024', 'Rexel Ian', '', 'Reyes', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'IT Officer'),
(30, 'angel.datu@pcaat.edu.ph', '2021-025', 'Angel', '', 'Datu', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(31, 'rickardo.santiago@pcaat.edu.ph', '2021-026', 'Rickardo', '', 'Santiago', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(32, 'phoebe.claros@pcaat.edu.ph', '2021-027', 'Phobe', '', 'Claros', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(33, 'pearl.mariano@pcaat.edu.ph', '2021-028', 'Pearl Angelette', '', 'Mariano', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'HRD Head'),
(34, 'paslm.caguia@pcaat.edu.ph', '2021-029', 'Psalm', '', 'Caguia', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Registrar'),
(35, 'dandy.bonete@pcaat.edu.ph', '2021-030', 'Dandy', '', 'Bonete', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(36, '2021-031', '2021-031', 'Jose', '', 'Kabayan', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(37, 'robert.devera@pcaat.edu.ph', '2021-032', 'Robert Jerome', '', 'De Vera', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(38, 'davette.garcia@pcaat.edu.ph', '2021-033', 'Davette', '', 'Garcia', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(39, '2021-034', '2021-034', 'Ian', '', 'Ramos', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(40, 'aireen.evangelizta@pcaat.edu.ph', '2021-035', 'Aireen', '', 'Evangelista', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(41, 'eduard.joseph@pcaat.edu.ph', '2021-036', 'Eduard', '', 'Joseph', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Maintenance'),
(42, '2021-037', '2021-037', 'Danna', '', 'Rivera', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(43, 'aries.segui@pcaat.edu.ph', '2021-038', 'Aries', '', 'Segui', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Maintenance'),
(44, '2021-039', '2021-039', 'Crispin', '', 'Rizal', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(45, 'princess.deguia@pcaat.edu.ph', '2021-040', 'Princess', '', 'De Guia', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(46, 'divina.alar@pcaat.edu.ph', '2021-041', 'Divina', '', 'Alar', '3/21/2022', '09:03:52', '17:05:00', 'Monday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'HR Officer'),
(47, '2021-042', '2021-042', 'Dencio', '', 'Pablo', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(48, 'clarissa.licuan@pcaat.edu.ph', '2021-043', 'Clarissa', '', 'Licuan', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(49, '2021-044', '2021-044', 'Alyssa', '', 'Tatsing', '3/21/2022', '07:44:28', '17:05:00', 'Monday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty Lang. and Lit'),
(50, 'cherryrose.taguiam@pcaat.edu.ph', '2021-045', 'Cherry Rose', '', 'Taguiam', '3/21/2022', '08:04:25', '17:05:00', 'Monday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(51, 'rexelian.reyes@pcaat.edu.ph', '2021-024', 'Rexel Ian', '', 'Reyes', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'IT Officer'),
(52, 'ruben.delima@pcaat.edu.ph', '2021-023', 'Ruben', '', 'De Lima', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(53, 'christian.arellano@pcaat.edu.ph', '2021-015', 'Christian', '', 'Arellano', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(54, 'kylamarie.pastoral@pcaat.edu.ph', '2021-018', 'Kyla Marie', '', 'Pastoral', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(55, '2021-044', '2021-044', 'Alyssa', '', 'Tatsing', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty Lang. and Lit'),
(56, 'carissa.viduya@pcaat.edu.ph', '2021-016', 'Carissa', '', 'Biduya', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(57, 'paslm.caguia@pcaat.edu.ph', '2021-029', 'Psalm', '', 'Caguia', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Registrar'),
(58, 'aries.segui@pcaat.edu.ph', '2021-038', 'Aries', '', 'Segui', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Maintenance'),
(59, 'sherina.villanueva@pcaat.edu.ph', '2021-004', 'Sherina', '', 'Villanueva', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'OSA Dept.Head'),
(60, 'mai.olaguer@pcaat.edu.ph', '2021-005', 'Mai', '', 'Olaguer', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Asst. Principal'),
(61, 'mark.elaba@pcaat.edu.ph', '2021-019', 'Mark', '', 'Elaba', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(62, 'roceline.soriquez@pcaat.edu.ph', '2021-011', 'Roceline', '', 'Soriquez', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(63, 'arnold.avellanoza@pcaat.edu.ph', '2021-014', 'Arnold', '', 'Abellanoza', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Marketing Officer'),
(64, 'shai.deleon@pcaat.edu.ph', '2021-021', 'Gloland Shai', '', 'De Leon', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(65, '2021-039', '2021-039', 'Crispin', '', 'Rizal', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(66, 'eduard.joseph@pcaat.edu.ph', '2021-036', 'Eduard', '', 'Joseph', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Maintenance'),
(67, '2021-037', '2021-037', 'Danna', '', 'Rivera', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(68, '2021-042', '2021-042', 'Dencio', '', 'Pablo', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(69, 'pearl.mariano@pcaat.edu.ph', '2021-028', 'Pearl Angelette', '', 'Mariano', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'HRD Head'),
(70, 'judy.sibayan@pcaat.edu.ph', '2021-007', 'Judy', '', 'Sibayan', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(71, 'davette.garcia@pcaat.edu.ph', '2021-033', 'Davette', '', 'Garcia', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(72, 'rickardo.santiago@pcaat.edu.ph', '2021-026', 'Rickardo', '', 'Santiago', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(73, 'bermin.capellan@pcaat.edu.ph', '2021-008', 'Bermin', '', 'Capellan', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'HRD Officer'),
(74, '\r\niris.frani@pcaat.edu.ph', '2021-012', 'Iris', '', 'Frani', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Dept. Head'),
(75, 'phoebe.claros@pcaat.edu.ph', '2021-027', 'Phobe', '', 'Claros', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(76, '2021-034', '2021-034', 'Ian', '', 'Ramos', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(77, 'ailona.lumberio-lipit@pcaat.edu.ph', '2021-089', 'Ailona', '', 'Lipit', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(78, 'vanessa.ojeda@pcaat.edu.ph', '2021-020', 'Vanessa', '', 'Ojeda', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(79, '2021-031', '2021-031', 'Jose', '', 'Kabayan', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(80, 'jose.clemente@pcaat.edu.ph', '2021-096', 'Jose Ariel', '', 'Clemente', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'IT Officer'),
(81, 'rochelle.pana@pcaat.edu.ph', '2021-099', 'Rochelle', '', 'Pana', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(82, 'almar.panelo@pcaat.edu.ph', '2021-017', 'Almar', '', 'Panelo', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(83, 'princess.deguia@pcaat.edu.ph', '2021-040', 'Princess', '', 'De Guia', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(84, 'idel.datu@pcaat.edu.ph', '2021-002', 'Idelfonso', '', 'Datu', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'VP for Admin and Finan'),
(85, 'michelle.fernandez@pcaat.edu.ph', '2021-009', 'Michelle', '', 'Fernandez', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Dept. Head - Miso'),
(86, 'jose.clemente@pcaat.edu.ph', '2021-096', 'Jose Ariel', '', 'Clemente', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'IT Officer'),
(87, 'angel.datu@pcaat.edu.ph', '2021-025', 'Angel', '', 'Datu', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(88, 'robert.devera@pcaat.edu.ph', '2021-032', 'Robert Jerome', '', 'De Vera', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(89, 'divina.alar@pcaat.edu.ph', '2021-041', 'Divina', '', 'Alar', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'HR Officer'),
(90, 'juliamhel.bacquillas@pcaat.edu.ph', '2021-006', 'Juliamhel', '', 'Baquillas', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Registrar'),
(91, 'servando.cruz@pcaat.edu.ph', '2021-022', 'Servando', '', 'Cruz', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'OIC_PPF'),
(92, 'abegail.pasia@pcaat.edu.ph', '2021-098', 'Abegail', '', 'Pasia', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'MIS Officer'),
(93, 'clarissa.licuan@pcaat.edu.ph', '2021-043', 'Clarissa', '', 'Licuan', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(94, 'angelica.ilan@pcaat.edu.ph', '2021-013', 'Angelica', '', 'Ilan', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(95, 'cherryrose.taguiam@pcaat.edu.ph', '2021-045', 'Cherry Rose', '', 'Taguiam', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(96, 'mai.olaguer@pcaat.edu.ph', '2021-005', 'Mai', '', 'Olaguer', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Asst. Principal'),
(97, 'ailamarie.bata-anon@pcaat.edu.ph', '2021-003', 'Aila Marie', '', 'Bata-anon', '3/22/2022', '09:03:52', '17:05:00', 'Tuesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(98, 'chiara.datu@pcaat.edu.ph', '2021-001', 'Chiara', '', 'Datu', '3/22/2022', '07:44:28', '17:05:00', 'Tuesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(99, 'aireen.evangelizta@pcaat.edu.ph', '2021-035', 'Aireen', '', 'Evangelista', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(100, 'dandy.bonete@pcaat.edu.ph', '2021-030', 'Dandy', '', 'Bonete', '3/22/2022', '08:04:25', '17:05:00', 'Tuesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(101, 'chiara.datu@pcaat.edu.ph', '2021-001', 'Chiara', '', 'Datu', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(102, 'idel.datu@pcaat.edu.ph', '2021-002', 'Idelfonso', '', 'Datu', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'VP for Admin and Finan'),
(103, 'ailamarie.bata-anon@pcaat.edu.ph', '2021-003', 'Aila Marie', '', 'Bata-anon', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(104, 'sherina.villanueva@pcaat.edu.ph', '2021-004', 'Sherina', '', 'Villanueva', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'OSA Dept.Head'),
(105, 'mai.olaguer@pcaat.edu.ph', '2021-005', 'Mai', '', 'Olaguer', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Asst. Principal'),
(106, 'mai.olaguer@pcaat.edu.ph', '2021-005', 'Mai', '', 'Olaguer', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Asst. Principal'),
(107, 'juliamhel.bacquillas@pcaat.edu.ph', '2021-006', 'Juliamhel', '', 'Baquillas', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Registrar'),
(108, 'judy.sibayan@pcaat.edu.ph', '2021-007', 'Judy', '', 'Sibayan', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(109, 'bermin.capellan@pcaat.edu.ph', '2021-008', 'Bermin', '', 'Capellan', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'HRD Officer'),
(110, 'michelle.fernandez@pcaat.edu.ph', '2021-009', 'Michelle', '', 'Fernandez', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Dept. Head - Miso'),
(111, 'roceline.soriquez@pcaat.edu.ph', '2021-011', 'Roceline', '', 'Soriquez', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(112, '\r\niris.frani@pcaat.edu.ph', '2021-012', 'Iris', '', 'Frani', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Dept. Head'),
(113, 'angelica.ilan@pcaat.edu.ph', '2021-013', 'Angelica', '', 'Ilan', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(114, 'arnold.avellanoza@pcaat.edu.ph', '2021-014', 'Arnold', '', 'Abellanoza', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Marketing Officer'),
(115, 'christian.arellano@pcaat.edu.ph', '2021-015', 'Christian', '', 'Arellano', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(116, 'carissa.viduya@pcaat.edu.ph', '2021-016', 'Carissa', '', 'Biduya', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(117, 'almar.panelo@pcaat.edu.ph', '2021-017', 'Almar', '', 'Panelo', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(118, 'kylamarie.pastoral@pcaat.edu.ph', '2021-018', 'Kyla Marie', '', 'Pastoral', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(119, 'mark.elaba@pcaat.edu.ph', '2021-019', 'Mark', '', 'Elaba', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(120, 'vanessa.ojeda@pcaat.edu.ph', '2021-020', 'Vanessa', '', 'Ojeda', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(121, 'shai.deleon@pcaat.edu.ph', '2021-021', 'Gloland Shai', '', 'De Leon', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(122, 'servando.cruz@pcaat.edu.ph', '2021-022', 'Servando', '', 'Cruz', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'OIC_PPF'),
(123, 'ruben.delima@pcaat.edu.ph', '2021-023', 'Ruben', '', 'De Lima', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(124, 'rexelian.reyes@pcaat.edu.ph', '2021-024', 'Rexel Ian', '', 'Reyes', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'IT Officer'),
(125, 'angel.datu@pcaat.edu.ph', '2021-025', 'Angel', '', 'Datu', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(126, 'rickardo.santiago@pcaat.edu.ph', '2021-026', 'Rickardo', '', 'Santiago', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Registrar'),
(127, 'phoebe.claros@pcaat.edu.ph', '2021-027', 'Phobe', '', 'Claros', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(128, 'pearl.mariano@pcaat.edu.ph', '2021-028', 'Pearl Angelette', '', 'Mariano', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'HRD Head'),
(129, 'paslm.caguia@pcaat.edu.ph', '2021-029', 'Psalm', '', 'Caguia', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Registrar'),
(130, 'dandy.bonete@pcaat.edu.ph', '2021-030', 'Dandy', '', 'Bonete', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(131, '2021-031', '2021-031', 'Jose', '', 'Kabayan', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(132, 'robert.devera@pcaat.edu.ph', '2021-032', 'Robert Jerome', '', 'De Vera', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(133, 'davette.garcia@pcaat.edu.ph', '2021-033', 'Davette', '', 'Garcia', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(134, '2021-034', '2021-034', 'Ian', '', 'Ramos', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(135, 'aireen.evangelizta@pcaat.edu.ph', '2021-035', 'Aireen', '', 'Evangelista', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(136, 'eduard.joseph@pcaat.edu.ph', '2021-036', 'Eduard', '', 'Joseph', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Maintenance'),
(137, '2021-037', '2021-037', 'Danna', '', 'Rivera', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(138, 'aries.segui@pcaat.edu.ph', '2021-038', 'Aries', '', 'Segui', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Maintenance'),
(139, '2021-039', '2021-039', 'Crispin', '', 'Rizal', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'Faculty Busines & Scie'),
(140, 'princess.deguia@pcaat.edu.ph', '2021-040', 'Princess', '', 'De Guia', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(141, 'divina.alar@pcaat.edu.ph', '2021-041', 'Divina', '', 'Alar', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'HR Officer'),
(142, '2021-042', '2021-042', 'Dencio', '', 'Pablo', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty TVL'),
(143, 'clarissa.licuan@pcaat.edu.ph', '2021-043', 'Clarissa', '', 'Licuan', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(144, '2021-044', '2021-044', 'Alyssa', '', 'Tatsing', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty Lang. and Lit'),
(145, 'cherryrose.taguiam@pcaat.edu.ph', '2021-045', 'Cherry Rose', '', 'Taguiam', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'Faculty'),
(146, 'ailona.lumberio-lipit@pcaat.edu.ph', '2021-089', 'Ailona', '', 'Lipit', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:46 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(147, 'jose.clemente@pcaat.edu.ph', '2021-096', 'Jose Ariel', '', 'Clemente', '3/23/2022', '09:03:52', '17:05:00', 'Wednesday', '3/23/22 09:03 AM', '3/23/22 05:03 PM', '', 'IT Officer'),
(148, 'jose.clemente@pcaat.edu.ph', '2021-096', 'Jose Ariel', '', 'Clemente', '3/23/2022', '08:04:25', '17:05:00', 'Wednesday', '3/24/22 08:04 AM', '3/23/22 05:03 PM', '', 'IT Officer'),
(149, 'abegail.pasia@pcaat.edu.ph', '2021-098', 'Abegail', '', 'Pasia', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 05:03 PM', '', 'MIS Officer'),
(150, 'rochelle.pana@pcaat.edu.ph', '2021-099', 'Rochelle', '', 'Pana', '3/23/2022', '07:44:28', '17:05:00', 'Wednesday', '3/23/22 08:44 AM', '3/23/22 04:44 PM', '', 'Faculty'),
(151, 'michelle.fernandez@pcaat.edu.ph', 'michelle.fernandez@pcaat.edu.ph', 'MICHELLE MAE', '', 'FERNANDEZ', '09/30/2022', '13:50:33', '', 'Friday', '2022-09-30  13:5', '', '', 'IT Head');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelogs`
--
ALTER TABLE `timelogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `timelogs`
--
ALTER TABLE `timelogs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
