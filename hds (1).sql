-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 10:49 PM
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
-- Database: `hds`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mothername` varchar(20) NOT NULL,
  `apt_date` date NOT NULL,
  `apt_time` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `mobno` int(14) NOT NULL,
  `email` varchar(40) NOT NULL,
  `score` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`app_id`, `first_name`, `middle_name`, `last_name`, `mothername`, `apt_date`, `apt_time`, `age`, `mobno`, `email`, `score`, `message`) VALUES
(112, 'Jyoti', 'Sudhir ', 'Sarpata', 'Tejaswini', '2024-09-04', '13:56', 4, 2147483647, 'sudhirsarpata@gmail.com', 2, 'Try and fail'),
(113, 'Tejaswini', 'Sudhir', 'Sarpata', 'Jyoti', '2024-10-01', '16:30', 5, 2147483647, 'sudhirsarpata@gmail.com', 69, 'My Daughter Having issues related to hearing. Actually she is miss-hearing our calls.'),
(115, 'Guluna', 'Asim', 'Shaikh', 'Jiya', '2024-09-15', '15:00', 2, 2147483647, 'asim@pak.com', 54, 'Some issues related ears are occurred in from last 5 months'),
(116, 'Kaira', 'Gaurav', 'Taneja', 'Ritu', '2024-09-30', '17:30', 6, 2147483647, 'flyingbeast@gmail.com', 66, 'Mooba.....\r\nla la la'),
(117, 'Piyush', 'Sourav', 'Joshi', 'Ritu', '2024-09-14', '18:01', 3, 2147483647, 'sj@gmail.com', 99, 'My son cant listen Properly'),
(118, 'Piyush', 'Sourav', 'Joshi', 'Ritu', '2024-09-14', '18:01', 3, 2147483647, 'sj@gmail.com', 99, 'My son cant listen Properly'),
(119, 'Samay', 'Sudhir', 'Raina', 'Nidhi', '2024-09-14', '18:00', 5, 2147483647, 'sudhirsarpata@gmail.com', 44, 'My son using Airpods so much'),
(120, 'Samay', 'Sudhir', 'Raina', 'Nidhi', '2024-09-14', '18:00', 5, 2147483647, 'sudhirsarpata@gmail.com', 44, 'My son using Airpods so much');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `number` varchar(14) NOT NULL,
  `email` varchar(40) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `degree` varchar(25) NOT NULL,
  `otherdegree` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `firstname`, `middlename`, `lastname`, `number`, `email`, `experience`, `degree`, `otherdegree`) VALUES
(1, 'Sudhir', 'Sham', 'Sarpata', '9370236491', 'sudhirsarpata@gmail.com', '2', 'Audiologist', '--'),
(2, 'Kavita', 'Vinod', 'Shaha', '9870615243', 'kavitashah@lotus.com', '5', 'Audiologist', '--'),
(3, 'Murliprasad', 'Gurunath', 'Sharma', '9182736455', 'munna@gmai.com', '0', 'Other', 'MBBS'),
(4, 'Janhvi', 'Anil', 'Kapure', '9938303869', 'janhvik@gmail.com', '1', 'Other', 'BAMS'),
(5, 'Devyani', 'Shridhar', 'Nalage', '8421050475', 'devyaninalage77@gmail.com', '10', 'Other', 'Doctor of Medicine'),
(6, 'Jyoti', 'Kumar', 'Magdum', '8432991310', 'jyotimagdum@gmail.com', '0', 'Audiologist', '--');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `middlename` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `mobno` varchar(14) NOT NULL,
  `alt_mobno` varchar(14) NOT NULL,
  `email` varchar(40) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `dob` date NOT NULL,
  `pan_no` varchar(15) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `maritual_status` varchar(10) NOT NULL,
  `institute_name` varchar(77) NOT NULL,
  `institute_city` varchar(20) NOT NULL,
  `university` varchar(50) NOT NULL,
  `course` varchar(20) NOT NULL,
  `passing_year` varchar(4) NOT NULL,
  `percentage` varchar(7) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `work_exp` varchar(20) NOT NULL,
  `joindate` date NOT NULL,
  `password` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `area` varchar(30) NOT NULL,
  `bld_name` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `bnk_name` varchar(50) NOT NULL,
  `bnk_branch` varchar(20) NOT NULL,
  `acc_type` varchar(10) NOT NULL,
  `acc_no` varchar(20) NOT NULL,
  `ifs_code` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `middlename`, `lastname`, `mobno`, `alt_mobno`, `email`, `aadhar`, `dob`, `pan_no`, `gender`, `maritual_status`, `institute_name`, `institute_city`, `university`, `course`, `passing_year`, `percentage`, `designation`, `work_exp`, `joindate`, `password`, `country`, `state`, `city`, `area`, `bld_name`, `pincode`, `bnk_name`, `bnk_branch`, `acc_type`, `acc_no`, `ifs_code`) VALUES
(1, 'Arun', 'Vikas', 'Patil', '9876543210', '9876542110', 'arunpatil@gmail.com', '123456789012', '1978-02-25', 'ABCDE1234F', 'Male', 'Married', 'Mumbai University', 'Mumbai', 'University of Mumbai', 'B.Com', '2000', '75', 'Receptionist', 'No', '2005-03-15', 'Arun@2021', 'India', 'Maharashtra', 'Mumbai', 'Andheri', 'Greenfield', '400058', 'State Bank of India', 'Andheri', 'Saving', '1234567890', 'SBIN0001234'),
(2, 'Sakshi', 'Shashikant', 'Gaikwad', '9578015627', '9123456789', 'sakshigaikwad@gmail.com', '623456789012', '1983-09-10', 'FGHIJ5678K', 'Female', 'Unmarried', 'COEP', 'Pune', 'Savitribai Phule Pune University', 'B.E', '2005', '82', 'Nurse', 'Yes', '2004-11-01', 'Sakshi@2705', 'India', 'Maharashtra', 'Kolhapur', 'Mahalaxmi Nagar', 'Sai Krupa', '416003', 'Punjab National Bank', 'Kolhapur', 'Current', '6789012345', 'PUNB0001234'),
(3, 'Pruthvi', 'Vitthal', 'Lokare', '9513780127', '9356781234', 'pruthvilokare@gmail.com', '323456789012', '1980-10-12', 'KLMNO1234P', 'Male', 'Married', 'Nagpur University', 'Nagpur', 'Rashtrasant Tukadoji Maharaj Nagpur University', 'B.Sc', '2002', '68', 'Security Guard', 'No', '2004-12-01', 'Pruthvi@7714', 'India', 'Maharashtra', 'Nagpur', 'Dharampeth', 'Sunshine Villa', '440010', 'Axis Bank', 'Nagpur', 'Fixed Depo', '3456789012', 'UTIB0001234'),
(4, 'Amit', 'Ramesh', 'Kulkarni', '9723456789', '9123456700', 'amitkulkarni@gmail.com', '423456789012', '1981-03-20', 'PQRST6789V', 'Male', 'Unmarried', 'Aurangabad University', 'Aurangabad', 'Dr. Babasaheb Ambedkar Marathwada University', 'MBA', '2004', '79', 'Compounder', 'No', '2004-05-10', 'Amit@123', 'India', 'Maharashtra', 'Aurangabad', 'CIDCO', 'Silver Crest', '431001', 'HDFC Bank', 'Aurangabad', 'Recurring ', '4567890123', 'HDFC0001234'),
(5, 'Priya', 'Anil', 'Sutar', '8998765432', '9223456789', 'priyasutar@gmail.com', '523456789012', '1982-07-25', 'UVWXY2345Z', 'Female', 'Married', 'Nashik College', 'Nashik', 'Yashwantrao Chavan Maharashtra Open University', 'BCA', '2003', '85', 'Ayaah', 'Yes', '2005-09-01', 'Priya789!', 'India', 'Maharashtra', 'Nashik', 'Gangapur Road', 'Hill View', '422002', 'Bank of Maharashtra', 'Nashik', 'Saving', '5678901234', 'MAHB0001234'),
(6, 'Rohit', 'Sunil', 'Shinde', '9834567890', '9834561234', 'rohitshinde@gmail.com', '223456789012', '1979-05-15', 'XYZAB1234C', 'Male', 'Married', 'COEP', 'Pune', 'Savitribai Phule Pune University', 'M.Tech', '2004', '89', 'Cleaner', 'Yes', '2005-07-01', 'Rohit$987', 'India', 'Maharashtra', 'Pune', 'Baner', 'Maple Heights', '411045', 'ICICI Bank', 'Pune', 'Current', '2345678901', 'ICIC0001234'),
(7, 'Anjali', 'Prakash', 'Katkar', '9185678901', '9185678902', 'anjalikatkar@gmail.com', '723456789012', '1984-11-18', 'EFGHI5678K', 'Female', 'Unmarried', 'Solapur University', 'Solapur', 'Punyashlok Ahilyadevi Holkar Solapur University', 'M.Sc', '2006', '77', 'Receptionist', 'No', '2005-01-10', 'Anjali_456', 'India', 'Maharashtra', 'Solapur', 'Vijapur Road', 'Manas Residency', '413001', 'Central Bank of India', 'Solapur', 'Fixed Depo', '7890123456', 'CBIN0001234'),
(8, 'Manoj', 'Ravi', 'Suryawanshi', '9887654321', '9234567891', 'manojsuryawanshi@gmail.com', '823456789012', '1985-06-22', 'HIJKL2345M', 'Male', 'Married', 'Nanded University', 'Nanded', 'Swami Ramanand Teerth Marathwada University', 'BCA', '2005', '83', 'Ayaah', 'Yes', '2005-03-15', 'Manoj1234', 'India', 'Maharashtra', 'Nanded', 'Vishnupuri', 'Sunset Apartments', '431606', 'Bank of Baroda', 'Nanded', 'Saving', '8901234567', 'BARB0001234'),
(9, 'Ritika', 'Anand', 'Naik', '9798765432', '9198765432', 'ritikanaik@gmail.com', '923456789012', '1986-02-15', 'MNOPQ4567R', 'Female', 'Unmarried', 'Thane University', 'Thane', 'Thane University', 'B.Sc', '2003', '76', 'Nurse', 'No', '2004-05-10', 'Ritika7890', 'India', 'Maharashtra', 'Thane', 'Ghodbunder Road', 'Shreeji Residency', '400607', 'Union Bank of India', 'Thane', 'Recurring ', '9012345678', 'UBIN0001234'),
(10, 'Vishal', 'Mohan', 'Deshmukh', '9456432189', '9456432190', 'vishaldeshmukh@gmail.com', '102345678901', '1987-08-30', 'QRSTU7890V', 'Male', 'Married', 'Nagpur University', 'Nagpur', 'Rashtrasant Tukadoji Maharaj Nagpur University', 'B.Com', '2002', '70', 'Security Guard', 'No', '2004-07-01', 'Vishal@234', 'India', 'Maharashtra', 'Nagpur', 'Sitabuldi', 'Paradise Towers', '440012', 'Canara Bank', 'Nagpur', 'Current', '0123456789', 'CNRB0001234'),
(11, 'Pooja', 'Nitin', 'Salunkhe', '9745612345', '9745612346', 'poojasalunkhe@gmail.com', '202345678901', '1988-01-25', 'VWXYZ1234A', 'Female', 'Unmarried', 'Navi Mumbai University', 'Navi Mumbai', 'University of Mumbai', 'MCA', '2005', '88', 'Receptionist', 'Yes', '2005-11-01', 'Pooja9876', 'India', 'Maharashtra', 'Navi Mumbai', 'Vashi', 'Seawoods Estate', '400703', 'IDBI Bank', 'Navi Mumbai', 'Saving', '1234567890', 'IBKL0001234'),
(12, 'Sandeep', 'Ravindra', 'More', '9734521678', '9734521679', 'sandeepmore@gmail.com', '302345678901', '1989-04-10', 'ABCDE2345B', 'Male', 'Married', 'Mumbai University', 'Mumbai', 'University of Mumbai', 'B.E', '2004', '85', 'Compounder', 'No', '2004-01-10', 'Sandeep@098', 'India', 'Maharashtra', 'Mumbai', 'Goregaon', 'Oberoi Springs', '400063', 'Bank of India', 'Mumbai', 'Fixed Depo', '2345678901', 'BKID0001234'),
(13, 'Kavita', 'Mahesh', 'Mane', '9723456789', '9723456790', 'kavitamane@gmail.com', '434567890123', '1990-12-05', 'FGHIJ3456C', 'Female', 'Unmarried', 'Pune University', 'Pune', 'Savitribai Phule Pune University', 'B.Com', '2006', '82', 'Cleaner', 'Yes', '2005-03-15', 'Kavita1234', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Amar Ambience', '411038', 'IndusInd Bank', 'Pune', 'Recurring ', '3456789012', 'INDB0001234'),
(14, 'Ajay', 'Sanjay', 'Jadhav', '9712345678', '9654321987', 'ajayjadhav@gmail.com', '545678901234', '1991-09-22', 'KLMNO4567D', 'Male', 'Married', 'Aurangabad University', 'Aurangabad', 'Dr. Babasaheb Ambedkar Marathwada University', 'M.Com', '2001', '72', 'Receptionist', 'Yes', '2004-05-10', 'Ajay@2345', 'India', 'Maharashtra', 'Solapur', 'Ashok Chowk', 'Galaxy Apartment', '413003', 'Kotak Mahindra Bank', 'Solapur', 'Saving', '4567890123', 'KKBK0001234'),
(15, 'Megha', 'Vijay', 'Kulkarni', '9801234567', '9612345678', 'meghakulkarni@gmail.com', '656789012345', '1992-07-11', 'PQRST5678E', 'Female', 'Unmarried', 'Nashik University', 'Nashik', 'Yashwantrao Chavan Maharashtra Open University', 'BCA', '2005', '87', 'Nurse', 'No', '2005-07-01', 'Megha123!', 'India', 'Maharashtra', 'Nagpur', 'Ramdaspeth', 'Jewel Residency', '440010', 'Yes Bank', 'Nagpur', 'Fixed Depo', '5678901234', 'YESB0001234'),
(16, 'Rajesh', 'Dinesh', 'Bhosale', '9754321890', '9487654321', 'rajeshbhosale@gmail.com', '767890123456', '1993-03-15', 'ABCDE6789F', 'Male', 'Married', 'Pune Institute of Computer Technology', 'Pune', 'Savitribai Phule Pune University', 'MCA', '2004', '80', 'Security Guard', 'Yes', '2005-11-01', 'Rajesh@5678', 'India', 'Maharashtra', 'Kolhapur', 'Shivaji Peth', 'Golden Villa', '416012', 'Syndicate Bank', 'Kolhapur', 'Current', '6789012345', 'SYNB0001234'),
(17, 'Ankita', 'Ravi', 'Rathod', '9734567890', '9176543210', 'ankitarathod@gmail.com', '878901234567', '1994-06-20', 'FGHIJ2345G', 'Female', 'Unmarried', 'MIT College of Engineering', 'Pune', 'Savitribai Phule Pune University', 'B.E', '2005', '78', 'Nurse', 'No', '2005-01-10', 'Ankita123', 'India', 'Maharashtra', 'Aurangabad', 'Samarth Nagar', 'Sai Palace', '431001', 'Union Bank of India', 'Aurangabad', 'Saving', '7890123456', 'UBIN0001234'),
(18, 'Prashant', 'Mohan', 'Yadav', '9743216789', '9145678901', 'prashantyadav@gmail.com', '567890123456', '1977-01-01', 'KLMNO6789H', 'Male', 'Married', 'Sinhgad College', 'Pune', 'Savitribai Phule Pune University', 'B.Sc', '2003', '74', 'Ayaah', 'Yes', '2005-05-10', 'Prashant@123', 'India', 'Maharashtra', 'Nagpur', 'Sadar', 'Rose Villa', '440001', 'IDBI Bank', 'Nagpur', 'Fixed Depo', '2345678901', 'IBKL0001234'),
(19, 'Sarika', 'Amol', 'Chavan', '9712345679', '9276543210', 'sarikachavan@gmail.com', '978901234567', '1986-04-14', 'PQRST2345I', 'Female', 'Unmarried', 'Walchand College of Engineering', 'Sangli', 'Shivaji University', 'B.Tech', '2002', '83', 'Compounder', 'Yes', '2004-11-01', 'Sarika7890', 'India', 'Maharashtra', 'Pune', 'Wakad', 'Golden Meadows', '411057', 'State Bank of India', 'Pune', 'Recurring ', '3456789012', 'SBIN0001234'),
(20, 'Sunil', 'Ashok', 'Joshi', '9756784321', '9365432109', 'suniljoshi@gmail.com', '789012345678', '1980-02-02', 'UVWXY1234J', 'Male', 'Married', 'VJTI', 'Mumbai', 'University of Mumbai', 'Diploma in Engineeri', '2001', '76', 'Cleaner', 'No', '2005-01-01', 'Sunil@789', 'India', 'Maharashtra', 'Thane', 'Dombivli', 'Sai Residency', '421201', 'HDFC Bank', 'Thane', 'Saving', '5678901234', 'HDFC0001234'),
(21, 'Rekha', 'Kishore', 'Mali', '9734567891', '9178654321', 'rekhamali@gmail.com', '890123456789', '1979-06-10', 'ABCDE3456K', 'Female', 'Unmarried', 'Government Law College', 'Mumbai', 'University of Mumbai', 'LLB', '2005', '85', 'Receptionist', 'Yes', '2004-03-15', 'Rekha@456', 'India', 'Maharashtra', 'Mumbai', 'Borivali', 'Sea Breeze', '400092', 'ICICI Bank', 'Mumbai', 'Current', '6789012345', 'ICIC0001234'),
(22, 'Raj', 'Prakash', 'Pawar', '9765432187', '9182765432', 'rajpawar@gmail.com', '234567890123', '1988-12-05', 'FGHIJ5678L', 'Male', 'Married', 'SP College', 'Pune', 'Savitribai Phule Pune University', 'BA', '2006', '79', 'Security Guard', 'No', '2005-01-01', 'Raj@5678', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Aashiyana', '411038', 'Axis Bank', 'Pune', 'Fixed Depo', '7890123456', 'UTIB0001234'),
(23, 'Swati', 'Suresh', 'Kadam', '9734567892', '9190876543', 'swatikadam@gmail.com', '567890123456', '1983-11-22', 'KLMNO3456M', 'Female', 'Unmarried', 'Fergusson College', 'Pune', 'Savitribai Phule Pune University', 'B.Com', '2004', '84', 'Nurse', 'Yes', '2004-06-10', 'Swati@123', 'India', 'Maharashtra', 'Nagpur', 'Ramdaspeth', 'Blue Heaven', '440010', 'Punjab National Bank', 'Nagpur', 'Saving', '8901234567', 'PUNB0001234'),
(24, 'Amit', 'Raghav', 'Tengale', '9798654321', '9208765432', 'amittengale@gmail.com', '345678901234', '1987-04-04', 'PQRST6789N', 'Male', 'Married', 'Modern College', 'Pune', 'Savitribai Phule Pune University', 'B.Sc', '2002', '77', 'Ayaah', 'Yes', '2004-12-15', 'Amit@789', 'India', 'Maharashtra', 'Mumbai', 'Andheri', 'Sunset Villa', '400058', 'Canara Bank', 'Mumbai', 'Recurring ', '0123456789', 'CNRB0001234'),
(25, 'Poonam', 'Anil', 'Jadhav', '9812345679', '9312345678', 'poonamjadhav@gmail.com', '456789012345', '1985-08-10', 'UVWXY4567O', 'Female', 'Unmarried', 'BMCC', 'Pune', 'Savitribai Phule Pune University', 'B.Com', '2005', '81', 'Compounder', 'No', '2005-03-01', 'Poonam@456', 'India', 'Maharashtra', 'Nashik', 'Gangapur Road', 'Sunshine Villa', '422002', 'Union Bank of India', 'Nashik', 'Fixed Depo', '1234567890', 'UBIN0001234'),
(26, 'Nikhil', 'Ashok', 'Kharat', '7076543227', '9423456789', 'nikhilkharat@gmail.com', '567890123457', '1983-12-15', 'ABCDE5678P', 'Male', 'Married', 'Ness Wadia College of Commerce', 'Pune', 'Savitribai Phule Pune University', 'BBA', '2003', '82', 'Cleaner', 'Yes', '2004-11-05', 'Nikhil@234', 'India', 'Maharashtra', 'Nagpur', 'Sitabuldi', 'Hill View', '440012', 'State Bank of India', 'Nagpur', 'Saving', '2345678901', 'SBIN0001234'),
(27, 'Arpita', 'Ramesh', 'More', '7023456780', '9534567890', 'arpitamore@gmail.com', '678901234567', '1981-10-20', 'FGHIJ7890Q', 'Female', 'Unmarried', 'Sir Parashurambhau College', 'Pune', 'Savitribai Phule Pune University', 'BA', '2001', '79', 'Receptionist', 'No', '2004-10-15', 'Arpita@123', 'India', 'Maharashtra', 'Pune', 'Baner', 'Silver Crest', '411045', 'ICICI Bank', 'Pune', 'Current', '3456789012', 'ICIC0001234'),
(28, 'Sagar', 'Rohit', 'Pujari', '8834567891', '9645678901', 'sagarpujari@gmail.com', '789012345679', '1978-03-15', 'KLMNO5678R', 'Male', 'Married', 'MIT World Peace University', 'Pune', 'MIT World Peace University', 'B.Tech', '2006', '85', 'Security Guard', 'Yes', '2004-05-10', 'Sagar@1234', 'India', 'Maharashtra', 'Kolhapur', 'Mahalaxmi Nagar', 'Sai Krupa', '416003', 'HDFC Bank', 'Kolhapur', 'Fixed Depo', '4567890123', 'HDFC0001234'),
(29, 'Sneha', 'Ravi', 'Kurade', '9545678902', '9756789012', 'snehakurade@gmail.com', '890123456790', '1982-07-01', 'PQRST7890S', 'Female', 'Unmarried', 'Poona College of Arts, Science and Commerce', 'Pune', 'Savitribai Phule Pune University', 'B.Sc', '2004', '80', 'Nurse', 'Yes', '2004-08-01', 'Sneha@4567', 'India', 'Maharashtra', 'Aurangabad', 'Samarth Nagar', 'Sunset Apartments', '431001', 'Axis Bank', 'Aurangabad', 'Saving', '5678901234', 'UTIB0001234'),
(30, 'Abhinav', 'Deepak', 'Gawde', '9555784120', '7973444501', 'abhinavgawde@gmail.com', '639698510212', '2001-06-24', 'VRZOR1074J', 'male', 'unmarried', 'K.I.T. Institute of Management Education & Research, Kolhapur.', 'Kolhapur', 'Shivaji University, Kolhapur', 'MCA - Master in Comp', 'Marc', '84.56', 'compounder', 'No', '2024-04-21', 'abhinav@1234', 'India', 'Maharashtra', 'Kolhapur', 'Rajarampuri 5th lane, Kolhapur', 'Sampurna Apartment', '416003', 'Bank of India', 'Kolhapur', 'saving', '968754218575458', 'BKID0008754'),
(31, 'Shivtej', 'Sudhir', 'Bartakke', '9588694176', '9577484176', 'shivtej3116@gmail.com', '678548510212', '2003-03-31', 'VRJUE1074S', 'male', 'unmarried', 'K.I.T. Institute of Management Education & Research, Kolhapur.', 'Kolhapur', 'Shivaji University, Kolhapur', 'MCA - Master in Comp', 'Marc', '84.56', 'compounder', 'No', '2024-06-27', 'Shiv@123', 'India', 'Maharashtra', 'Kolhapur', 'Rajarampuri 7th lane, Kolhapur', 'D\'Flex Plaza, Near g', '416003', 'Bank of baroda', 'Kolhapur', 'saving', '091116974284527', 'NJHD4437205');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `middlename` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `mothername` varchar(15) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `bld_grp` varchar(15) NOT NULL,
  `doct_refference` varchar(30) NOT NULL,
  `mobno` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `occuption` varchar(30) NOT NULL,
  `relation` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `area` varchar(30) NOT NULL,
  `bld_name` varchar(30) NOT NULL,
  `pincode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `firstname`, `middlename`, `lastname`, `mothername`, `gender`, `dob`, `age`, `bld_grp`, `doct_refference`, `mobno`, `email`, `occuption`, `relation`, `password`, `country`, `state`, `city`, `area`, `bld_name`, `pincode`) VALUES
(1, 'Arun', 'Vikas', 'Patil', 'Shobha', 'Male', '2021-08-01', 3, 'A+', 'Dr. Rao', '9876543210', 'arunpatil@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Sunshine Apartments', '411038'),
(2, 'Sara', 'Manoj', 'Lokare', 'Rupa', 'Female', '2022-02-11', 2, 'B-', 'Dr. Kumar', '8765432109', 'saramanojlokare@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Karve Nagar', 'Greenfield Residency', '411052'),
(3, 'Kabir', 'Ramesh', 'Kumbhar', 'Sneha', 'Male', '2019-04-17', 5, 'O+', 'Dr. Mehta', '7654321098', 'kabirrameshkumbhar@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Bluebell Homes', '411028'),
(4, 'Ishaan', 'Ajay', 'Sonule', 'Sujata', 'Male', '2020-10-21', 4, 'A-', 'Dr. Patil', '7543210987', 'ishaanajaysonule@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Wanowrie', 'Serenity Complex', '411040'),
(5, 'Riya', 'Suresh', 'Chougale', 'Leena', 'Female', '2023-08-02', 1, 'AB+', 'Dr. Shah', '7432109876', 'riyasureshchougale@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Silver Oaks', '411018'),
(6, 'Aarav', 'Anil', 'Shinde', 'Maya', 'Male', '2024-08-12', 0, 'B+', 'Dr. Joshi', '7321098765', 'aaravanilshinde@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'Emerald Heights', '411021'),
(7, 'Mira', 'Pravin', 'Tengale', 'Sunita', 'Female', '2018-03-19', 6, 'O-', 'Dr. Nair', '7210987654', 'mirapravingtengale@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Aundh', 'The Crest', '411007'),
(8, 'Rohan', 'Vijay', 'Suryawanshi', 'Archana', 'Male', '2021-01-22', 3, 'A+', 'Dr. Patil', '7109876543', 'rohanvijaysuryawanshi@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Kharadi', 'Cypress Park', '411014'),
(9, 'Diya', 'Gopal', 'Sutar', 'Meena', 'Female', '2019-12-03', 5, 'B+', 'Dr. Shah', '7098765432', 'diyagopalsutar@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Sangamner', 'Meadow View', '411015'),
(10, 'Rudra', 'Mahesh', 'Katkar', 'Neha', 'Male', '2022-05-15', 2, 'AB-', 'Dr. Kumar', '7987654321', 'rudramaheshkatkar@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Royal Gardens', '411030'),
(11, 'Anika', 'Vishal', 'Gaikwad', 'Pooja', 'Female', '2020-10-27', 4, 'A+', 'Dr. Rao', '7876543219', 'anikavishalgaikwad@gmail.com', 'Businesswoman', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Shivajinagar', 'Harmony Heights', '411033'),
(12, 'Ayaan', 'Prakash', 'Mane', 'Rita', 'Male', '2024-08-03', 1, 'O+', 'Dr. Mehta', '7765432108', 'ayaanprakashmane@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Viman Nagar', 'Lakeview Apartments', '411014'),
(13, 'Yash', 'Anil', 'Jadhav', 'Kavita', 'Male', '2024-08-04', 3, 'B-', 'Dr. Patil', '7654321097', 'yashaniljadhav@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Mundhwa', 'Pinnacle Heights', '411036'),
(14, 'Aditi', 'Mohan', 'Kulkarni', 'Neeta', 'Female', '2024-08-04', 6, 'AB+', 'Dr. Shah', '7543210986', 'aditimohankulkarni@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Pashan', 'Summit Tower', '411021'),
(15, 'Saanvi', 'Rajesh', 'Bhosale', 'Anita', 'Female', '2024-08-04', 2, 'A-', 'Dr. Joshi', '7432109875', 'saanvirajeshbhosale@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Wakad', 'Pinnacle Heights', '411027'),
(16, 'Vivaan', 'Nitin', 'Naik', 'Smita', 'Male', '2024-08-04', 4, 'O-', 'Dr. Kumar', '7321098764', 'vivaan nitinnaik@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Greenwood Apartments', '411038'),
(17, 'Ishita', 'Ajay', 'Salunkhe', 'Vidya', 'Female', '2024-08-05', 1, 'B+', 'Dr. Rao', '7210987653', 'ishitaajaysalunkhe@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'Skyline Residency', '411041'),
(18, 'Reva', 'Sandeep', 'Rathod', 'Asha', 'Female', '2024-08-05', 3, 'AB+', 'Dr. Patil', '7109876542', 'revasandeep rathod@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kharadi', 'Urban Heights', '411018'),
(19, 'Devansh', 'Mahesh', 'Joshi', 'Geeta', 'Male', '2024-08-05', 5, 'A+', 'Dr. Mehta', '7098765431', 'devanshmaheshjoshi@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Sangamner', 'Horizon Towers', '411039'),
(20, 'Kavya', 'Ajit', 'Chavan', 'Deepali', 'Female', '2024-08-05', 6, 'B+', 'Dr. Rao', '7987654320', 'kavyaajitchavan@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Greenfield Residency', '411025'),
(21, 'Nisha', 'Kiran', 'Mali', 'Sushma', 'Female', '2024-08-06', 3, 'O-', 'Dr. Shah', '7876543218', 'nishakiranmali@gmail.com', 'Businesswoman', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Wanowrie', 'Lakeview Apartments', '411034'),
(22, 'Ridhima', 'Deepak', 'Bartakke', 'Anjali', 'Female', '2024-08-06', 2, 'A+', 'Dr. Joshi', '7765432107', 'ridhimadeepakbartakke@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'The Crest', '411030'),
(23, 'Hrishikesh', 'Sagar', 'Sarvade', 'Supriya', 'Male', '2024-08-06', 4, 'AB-', 'Dr. Kumar', '7654321096', 'hrishikeshsagarsarvade@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Pashan', 'Harmony Heights', '411029'),
(24, 'Rudransh', 'Vijay', 'Kharat', 'Seema', 'Male', '2024-08-06', 1, 'O+', 'Dr. Mehta', '7543210985', 'rudranshvijaykharat@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'Sunshine Apartments', '411038'),
(25, 'Diya', 'Umesh', 'Pawar', 'Shweta', 'Female', '2024-08-07', 0, 'B-', 'Dr. Patil', '7432109874', 'diyaumeshpawar@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Cypress Park', '411017'),
(26, 'Aryan', 'Sanjay', 'Ghadge', 'Veena', 'Male', '2019-09-19', 5, 'A+', 'Dr. Rao', '7321098763', 'aryansanjayghadge@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Summit Tower', '411016'),
(27, 'Kiara', 'Suresh', 'Patil', 'Radhika', 'Female', '2021-12-17', 3, 'AB+', 'Dr. Joshi', '7210987652', 'kiarasureshpatil@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Urban Heights', '411020'),
(28, 'Siddharth', 'Anand', 'Dhavale', 'Vasundhara', 'Male', '2018-08-17', 6, 'A+', 'Dr. Patil', '7109876541', 'siddharthananddhavale@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Mumbai', 'Andheri', 'Shivani Building', '400053'),
(29, 'Ananya', 'Vikas', 'Bhingude', 'Rajeshwari', 'Female', '2022-01-19', 2, 'B+', 'Dr. Shah', '7098765430', 'ananyavikasbhingude@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Viman Nagar', 'Sai Apartment', '411014'),
(30, 'Rohan', 'Shrikant', 'Yadav', 'Shobha', 'Male', '2020-07-18', 4, 'O-', 'Dr. Rao', '7987654319', 'rohanshrikantyadav@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Nashik', 'Mico Circle', 'Green Valley', '422007'),
(31, 'Aarohi', 'Pradeep', 'Shetke', 'Nisha', 'Female', '2023-08-08', 1, 'AB+', 'Dr. Mehta', '7876543208', 'aarohipradeepshetke@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Aurangabad', 'CIDCO', 'Shree Samarth', '431001'),
(32, 'Reyansh', 'Rohit', 'Metkar', 'Manisha', 'Male', '2024-01-26', 0, 'O+', 'Dr. Patil', '7765432106', 'reyanshrohitmetkar@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Kolhapur', 'Shivaji Nagar', 'Ravi Residency', '416003'),
(33, 'Arya', 'Kunal', 'Raut', 'Geeta', 'Female', '2019-08-15', 5, 'A-', 'Dr. Shah', '7654321095', 'aryakunalraut@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Satara', 'Main Road', 'Sunshine Building', '415001'),
(34, 'Isha', 'Rajesh', 'Kore', 'Neeta', 'Female', '2018-09-04', 6, 'B-', 'Dr. Rao', '7543210984', 'isharajeshkore@gmail.com', 'Doctor', 'Mother', '', 'India', 'Maharashtra', 'Nagpur', 'Civil Lines', 'Pride Tower', '440001'),
(35, 'Rhea', 'Amit', 'Varpe', 'Smita', 'Female', '2022-01-09', 2, 'AB-', 'Dr. Mehta', '7432109873', 'rheamitvarpe@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Thane', 'Kalyan', 'Gokul Apartments', '421301'),
(36, 'Advait', 'Sumit', 'Kharade', 'Kavita', 'Male', '2018-09-12', 6, 'O-', 'Dr. Patil', '7321098762', 'advaitsumitkharade@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Solapur', 'Kondhwa', 'Ankur Plaza', '413001'),
(37, 'Avni', 'Santosh', 'Sawant', 'Leela', 'Female', '2021-08-10', 3, 'A+', 'Dr. Shah', '7210987651', 'avnisantoshsawant@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Latur', 'Ashoka Nagar', 'Sunshine Apartment', '413512'),
(38, 'Arjun', 'Nilesh', 'Kurade', 'Sunita', 'Male', '2019-03-01', 4, 'B+', 'Dr. Rao', '7109876540', 'arjunnileshkurade@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Amravati', 'Babulnath', 'Jain Residency', '444601'),
(39, 'Vihan', 'Dev', 'Pujari', 'Ranjana', 'Male', '2022-03-03', 2, 'O+', 'Dr. Mehta', '7098765429', 'vihandevpujari@gmail.com', 'Doctor', 'Mother', '', 'India', 'Maharashtra', 'Ratnagiri', 'Beach Road', 'Ocean View', '415612'),
(40, 'Zara', 'Abdul', 'Shaikh', 'Ayesha', 'Female', '2022-12-24', 2, 'AB+', 'Dr. Patil', '7987654318', 'zaraabdulshaikh@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Jalgaon', 'Narmada Colony', 'Greenfield Apartments', '425001'),
(41, 'Maria', 'David', 'Fernandes', 'Sara', 'Female', '2018-06-17', 6, 'A-', 'Dr. Shah', '7876543207', 'mariadavidfernandes@gmail.com', 'Businesswoman', 'Mother', '', 'India', 'Maharashtra', 'Sangli', 'Tilak Road', 'Shiv Shakti', '416416'),
(42, 'Noah', 'Matthew', 'D\'Souza', 'Elena', 'Male', '2020-06-06', 4, 'B+', 'Dr. Rao', '7765432105', 'noahmatthewdsouza@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Bhivandi', 'Nashik Road', 'Bharat Towers', '421302'),
(43, 'Ayaan', 'Sameer', 'Khan', 'Nazma', 'Male', '2022-06-26', 2, 'O-', 'Dr. Mehta', '7654321094', 'ayansameerkhan@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Junnar', 'Kopargaon', 'Dream House', '414001'),
(44, 'Maya', 'Vinayak', 'Deshmukh', 'Swati', 'Female', '2021-10-22', 3, 'AB-', 'Dr. Patil', '7543210983', 'mayavinayakdeshmukh@gmail.com', 'Doctor', 'Mother', '', 'India', 'Maharashtra', 'Nanded', 'Kacheri', 'Shree Krishna', '431602'),
(45, 'Ishaan', 'Rahul', 'More', 'Anjali', 'Male', '2018-04-14', 6, 'A+', 'Dr. Shah', '7432109872', 'ishaanrahulmore@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Yavatmal', 'Panchwati', 'Sai Mansion', '445001'),
(46, 'Aarohi', 'Rajesh', 'Mane', 'Kavita', 'Female', '2024-06-14', 0, 'B+', 'Dr. Rao', '7321098761', 'aarohirajeshmane@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Chandrapur', 'Ganjan', 'Vijay Nagar', '442401'),
(47, 'Kabir', 'Nilesh', 'Jadhav', 'Leena', 'Male', '2021-08-12', 3, 'O-', 'Dr. Mehta', '7210987650', 'kabirnileshjadhav@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Bhandara', 'Goregaon', 'Mahalaxmi Tower', '441901'),
(48, 'Mira', 'Rakesh', 'Kulkarni', 'Shweta', 'Female', '2018-02-15', 6, 'AB+', 'Dr. Patil', '7109876539', 'mirarakeshkulkarni@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Wardha', 'Ram Nagar', 'Shivam Apartment', '442001'),
(49, 'Ayaan', 'Suraj', 'Bhosale', 'Neha', 'Male', '2020-08-19', 0, 'A-', 'Dr. Shah', '7098765428', 'ayansurajbhosale@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pimpri', 'Gandhinagar', 'Sanghvi Plaza', '411017'),
(50, 'Riya', 'Sandeep', 'Naik', 'Rupali', 'Female', '2024-08-12', 2, 'A+', 'Dr. Patel', '7987654317', 'riyasandeepnaik@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Sunshine Apartments', '411038'),
(51, 'Aarav', 'Sagar', 'Salunkhe', 'Anita', 'Male', '2024-08-13', 6, 'B+', 'Dr. Kumar', '7876543206', 'aaravsagarsalunkhe@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Karve Nagar', 'Greenfield Residency', '411052'),
(52, 'Anika', 'Rajesh', 'Rathod', 'Kavita', 'Female', '2024-08-13', 1, 'O-', 'Dr. Rao', '7765432104', 'anikarajeshrathod@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Bluebell Homes', '411028'),
(53, 'Aryan', 'Pravin', 'Joshi', 'Rekha', 'Male', '2024-08-13', 3, 'AB+', 'Dr. Mehta', '7654321093', 'aryanpravinjoshi@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Wanowrie', 'Emerald Heights', '411040'),
(54, 'Rudra', 'Sanjay', 'Chavan', 'Pooja', 'Male', '2024-08-13', 5, 'A+', 'Dr. Patel', '7543210982', 'rudrasanjaychavan@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Sangamner', 'Serenity Complex', '411018'),
(55, 'Diya', 'Ramesh', 'Mali', 'Sangeeta', 'Female', '2024-08-13', 4, 'B+', 'Dr. Joshi', '7432109871', 'diyarameshmali@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Silver Oaks', '411015'),
(56, 'Rudransh', 'Sunil', 'Bartakke', 'Aarti', 'Male', '2024-08-14', 2, 'O-', 'Dr. Rao', '7321098760', 'rudranshsunilbartakke@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Royal Gardens', '411030'),
(57, 'Kavya', 'Mahesh', 'Sarvade', 'Geeta', 'Female', '2024-08-14', 6, 'A+', 'Dr. Mehta', '7210987649', 'kavyamaheshsarvade@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Pashan', 'Horizon Towers', '411029'),
(58, 'Aarohi', 'Anil', 'Kharat', 'Suman', 'Female', '2024-08-14', 3, 'AB-', 'Dr. Patel', '7109876538', 'aarohianilkharat@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Cypress Park', '411017'),
(59, 'Rudra', 'Satish', 'Pawar', 'Savita', 'Male', '2024-08-14', 5, 'B-', 'Dr. Joshi', '7098765427', 'rudrasatishpawar@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'The Crest', '411041'),
(60, 'Riya', 'Kunal', 'Ghadge', 'Ritika', 'Female', '2024-08-14', 2, 'O+', 'Dr. Rao', '7987654316', 'riyakunalgadge@gmail.com', 'Businesswoman', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Karve Nagar', 'Summit Tower', '411021'),
(61, 'Rudransh', 'Ajay', 'Patil', 'Seema', 'Male', '2024-08-15', 4, 'AB+', 'Dr. Kumar', '7876543205', 'rudranshajaypatil@gmail.com', 'Nurse', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Pinnacle Heights', '411027'),
(62, 'Reyansh', 'Suresh', 'Dhavale', 'Sunita', 'Male', '2024-08-15', 3, 'A-', 'Dr. Mehta', '7765432103', 'reyanhssureshdhavale@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Wanowrie', 'Harmony Heights', '411029'),
(63, 'Ishaan', 'Pravin', 'Bhingude', 'Manisha', 'Male', '2024-08-15', 6, 'B+', 'Dr. Patel', '7654321092', 'ishaanpravinbhingude@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Sunshine Apartments', '411038'),
(64, 'Aarohi', 'Nitin', 'Yadav', 'Nisha', 'Female', '2024-08-15', 1, 'O-', 'Dr. Joshi', '7543210981', 'aarohininityadav@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kharadi', 'Greenwood Apartments', '411038'),
(65, 'Reva', 'Vishal', 'Shetke', 'Rita', 'Female', '2024-08-15', 3, 'AB+', 'Dr. Kumar', '7432109870', 'revavishalshetke@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Serenity Complex', '411018'),
(66, 'Ayaan', 'Sanjay', 'Metkar', 'Shilpa', 'Male', '2024-08-16', 2, 'A+', 'Dr. Patel', '7321098759', 'ayansanjaymetkar@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Sangamner', 'Harmony Heights', '411029'),
(67, 'Rudransh', 'Pravin', 'Raut', 'Sangita', 'Male', '2024-08-16', 6, 'B+', 'Dr. Joshi', '7210987648', 'rudranshpravinraut@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Cypress Park', '411017'),
(68, 'Diya', 'Rohit', 'Kore', 'Savita', 'Female', '2024-08-16', 4, 'O-', 'Dr. Mehta', '7109876537', 'diyarohitkore@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Emerald Heights', '411040'),
(69, 'Anika', 'Sandeep', 'Varpe', 'Usha', 'Female', '2024-08-16', 1, 'AB-', 'Dr. Patel', '7098765426', 'anikasandeepvarpe@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Silver Oaks', '411015'),
(70, 'Aryan', 'Rajesh', 'Kharade', 'Deepali', 'Male', '2024-08-16', 3, 'B+', 'Dr. Kumar', '7987654315', 'aryanrajeshkharade@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'Horizon Towers', '411029'),
(71, 'Riya', 'Vijay', 'Sawant', 'Priya', 'Female', '2024-08-17', 5, 'O+', 'Dr. Mehta', '7876543204', 'riyayvijaysawant@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Greenfield Residency', '411052'),
(72, 'Rudra', 'Nilesh', 'Kurade', 'Sunita', 'Male', '2024-08-17', 2, 'A-', 'Dr. Patel', '7765432102', 'rudranileshkurade@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Pinnacle Heights', '411027'),
(73, 'Anika', 'Dev', 'Pujari', 'Ranjana', 'Female', '2024-08-17', 6, 'B+', 'Dr. Joshi', '7654321091', 'anikadevpujari@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Sunshine Apartments', '411038'),
(74, 'Ayaan', 'Abdul', 'Shaikh', 'Ayesha', 'Male', '2024-08-17', 4, 'O-', 'Dr. Kumar', '7543210980', 'ayaanabdulshaikh@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Kharadi', 'Harmony Heights', '411029'),
(75, 'Riya', 'David', 'Fernandes', 'Sara', 'Female', '2024-08-18', 3, 'A+', 'Dr. Mehta', '7432109869', 'riyadavidfernandes@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Greenwood Apartments', '411040'),
(76, 'Ishaan', 'Matthew', 'D\'Souza', 'Elena', 'Male', '2024-08-18', 2, 'B-', 'Dr. Patel', '7321098758', 'ishaanmatthewdsouza@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'Emerald Heights', '411040'),
(77, 'Riya', 'Sameer', 'Khan', 'Nazma', 'Female', '2024-08-18', 5, 'O+', 'Dr. Kumar', '7210987647', 'riyasameerkhan@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Karve Nagar', 'Summit Tower', '411021'),
(78, 'Aarav', 'Vinayak', 'Deshmukh', 'Swati', 'Male', '2024-08-18', 1, 'AB-', 'Dr. Patel', '7109876536', 'aaravvinayakdeshmukh@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Horizon Towers', '411029'),
(79, 'Anika', 'Rahul', 'More', 'Anjali', 'Female', '2024-08-18', 4, 'B+', 'Dr. Joshi', '7098765425', 'anikarahulmore@gmail.com', 'Businesswoman', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Royal Gardens', '411030'),
(80, 'Rudra', 'Rajesh', 'Mane', 'Kavita', 'Male', '2024-08-18', 3, 'A+', 'Dr. Kumar', '7987654314', 'rudrarajeshmane@gmail.com', 'Soldier', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Pinnacle Heights', '411027'),
(81, 'Ayaan', 'Nilesh', 'Jadhav', 'Leena', 'Male', '2024-08-19', 2, 'O-', 'Dr. Patel', '7876543203', 'aayannileshjadhav@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Kharadi', 'Greenwood Apartments', '411038'),
(82, 'Anika', 'Rakesh', 'Kulkarni', 'Shweta', 'Female', '2024-08-19', 5, 'B+', 'Dr. Mehta', '7765432101', 'anikarakeshkulkarni@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'Emerald Heights', '411040'),
(83, 'Riya', 'Suraj', 'Bhosale', 'Neha', 'Female', '2024-08-19', 4, 'A-', 'Dr. Joshi', '7654321090', 'riyasurajbhosale@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Serenity Complex', '411018'),
(84, 'Rudra', 'Sandeep', 'Naik', 'Rupali', 'Male', '2024-08-19', 6, 'B+', 'Dr. Patel', '7543210979', 'rudrasandeepnaik@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Karve Nagar', 'The Crest', '411021'),
(85, 'Aryan', 'Sagar', 'Salunkhe', 'Anita', 'Male', '2024-08-19', 3, 'O+', 'Dr. Joshi', '7432109868', 'aryansagarsalunkhe@gmail.com', 'Farmer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Summit Tower', '411021'),
(86, 'Riya', 'Rajesh', 'Rathod', 'Kavita', 'Female', '2024-08-20', 2, 'A+', 'Dr. Kumar', '7321098757', 'riyarajeshrathod@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Sunshine Apartments', '411038'),
(87, 'Aryan', 'Pravin', 'Joshi', 'Rekha', 'Male', '2024-08-20', 4, 'B+', 'Dr. Patel', '7210987646', 'aryanpravinoshi@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Greenfield Residency', '411052'),
(88, 'Rudra', 'Sanjay', 'Chavan', 'Pooja', 'Male', '2024-08-20', 6, 'O-', 'Dr. Joshi', '7109876535', 'rudrasanjaychavan@gmail.com', 'Businessman', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Horizon Towers', '411029'),
(89, 'Rudransh', 'Ramesh', 'Mali', 'Sangeeta', 'Male', '2024-08-20', 3, 'A+', 'Dr. Patel', '7098765424', 'rudranshrameshmali@gmail.com', 'Nurse', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Serenity Complex', '411018'),
(90, 'Riya', 'Sunil', 'Bartakke', 'Aarti', 'Female', '2024-08-20', 5, 'B+', 'Dr. Kumar', '7987654313', 'riyasunilbartakke@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Karve Nagar', 'Greenfield Residency', '411052'),
(91, 'Rudra', 'Mahesh', 'Sarvade', 'Geeta', 'Male', '2024-08-20', 4, 'O-', 'Dr. Joshi', '7876543202', 'rudramaheshsarvade@gmail.com', 'Engineer', 'Father', '', 'India', 'Maharashtra', 'Pune', 'Bavdhan', 'Summit Tower', '411021'),
(92, 'Riya', 'Anil', 'Kharat', 'Suman', 'Female', '2024-08-20', 6, 'AB+', 'Dr. Patel', '7765432100', 'riyaanilkharat@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Kothrud', 'Emerald Heights', '411040'),
(93, 'Riya', 'Satish', 'Pawar', 'Savita', 'Female', '2024-08-20', 2, 'A-', 'Dr. Kumar', '7654321089', 'riyasatishpawar@gmail.com', 'Nurse', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Swargate', 'Sunshine Apartments', '411038'),
(94, 'Anika', 'Kunal', 'Ghadge', 'Ritika', 'Female', '2024-08-21', 3, 'B+', 'Dr. Patel', '7543210978', 'anikakunalghadge@gmail.com', 'Teacher', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Pimpri', 'Harmony Heights', '411029'),
(95, 'Riya', 'Ajay', 'Patil', 'Seema', 'Female', '2024-08-21', 0, 'O+', 'Dr. Joshi', '7547850978', 'riyaajaypatil@gmail.com', 'Housewife', 'Mother', '', 'India', 'Maharashtra', 'Pune', 'Hadapsar', 'Pinnacle Heights', '411027');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `pat_age` varchar(2) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `opt1` varchar(20) NOT NULL,
  `opt2` varchar(20) NOT NULL,
  `opt3` varchar(20) NOT NULL,
  `opt4` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `pat_age`, `ques`, `opt1`, `opt2`, `opt3`, `opt4`) VALUES
(1, '5', 'Is there a railway station near your house ?', 'Yes', 'No', 'None', 'None'),
(2, '3', 'Is there an airport station near your house ?', 'Yes', 'No', 'None', 'None'),
(3, '0', 'Did he/she hear his/her name when I called you?', 'Yes', 'No', 'None', 'None'),
(4, '6', 'Can he/her hear the music playing?', 'Yes', 'No', 'None', 'None'),
(5, '0', 'Can he/she hear mommy or daddy talking to him/her?', 'Yes', 'No', 'None', 'None'),
(6, '2', 'When did you hear the phone ring? Was it a moment ago?', 'Yes', 'No', 'None', 'None'),
(7, '3', 'Which sound did he/she hear first? Was it the dog barking?', 'Yes', 'No', 'None', 'None'),
(8, '5', 'Why did he/she cover your ears? Was the sound too loud?', 'Yes', 'No', 'None', 'None'),
(9, '1', 'Where is that sound coming from? Is it from outside?', 'Yes', 'No', 'None', 'None'),
(10, '4', 'What did he/she hear? Was it a bell?', 'Yes', 'No', 'None', 'None'),
(11, '6', 'When do he/she hear the birds singing? Is it in the morning?', 'Yes', 'No', 'None', 'None'),
(12, '4', 'Where did he/she hear that noise? Was it in the kitchen?', 'Yes', 'No', 'None', 'None'),
(13, '1', 'When did he/she hear the thunder? Was it last night?', 'Yes', 'No', 'None', 'None'),
(14, '2', 'Why did he/she turn your head? Did he/she hear someone calling his/her?', 'Yes', 'No', 'None', 'None'),
(15, '2', 'Tell me about your hearing issues.', 'it is good', 'Not very good', 'Okay', 'Very bad');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`) VALUES
(2, 'Sudhir Sarpata', 'sudhir@gmail.com', '12345'),
(3, 'Aditi Chavan', 'aditi@gmail.com', 'aditi@123'),
(4, 'pranita', 'pranita@gmail.com', 'pranita123'),
(5, 'pruthvi', 'pruthvi@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

CREATE TABLE `test_result` (
  `id` int(11) NOT NULL,
  `Patient_name` varchar(40) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `name`, `email`, `password`) VALUES
(1, 'Pruthvi', 'pruthvi@gmail.com', '4321'),
(2, 'admin', 'admin@gmail.com', 'admin123'),
(9, 'Riya ', 'riya@ri.com', 'iloveyousudhir'),
(10, 'Raghu Jadhav', 'raghujadhav@gmail.com', '87654321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
