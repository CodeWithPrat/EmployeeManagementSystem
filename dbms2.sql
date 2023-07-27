SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `dbms2`

-- Table structure for table `alogin`

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'raksha', '1234'),
(3, 'pratik', '1234');

-- Table structure for table `employee`

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `employee`

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(101, 'AMRUTHA', 'GOWDA', 'ammu@gmail.com', '1234', '1997-08-13', 'female', '01919', 12121, 'bangalore', 'IT', 'Head', 'images/me.png'),
(102, 'Shreedhar', 'kumar', 'shreedhar@gmail.com', '1234', '2018-01-01', 'Male', '0202', 303, 'Mangaluru', 'CSE', 'CSE', 'images/no.jpg'),
(103, 'Swaty', 'naik', 'swaty@gmail.com', '1234', '1990-02-02', 'Male', '5252', 6262, 'Mysore', 'Creative', 'MSc', 'images/sw-google.png'),
(104, 'Anitha', 'G', 'anitha@gmail.com', '1234', '1971-12-01', 'Female', '9595', 5959, 'Mumbai', 'Creative', 'MSc', 'images/test.jpg'),
(105, 'Sallem', 'Muskan', 'sallem@gmail.com', '1234', '1971-06-28', 'Male', '8585', 5858, 'Delhi', 'SpaceTech', 'BSc', 'images/330px-Elon_Musk_Royal_Society.jpg'),
(106, 'Deesha', 'Patel', 'deesha@gmail.com', '1234', '1990-02-02', 'Female', '7575', 5757, 'Hyderabad', 'NetworkSecurity', 'MSc', 'images/hacker.png'),
(107, 'Manya', 'shree', 'manya@gmail.com', '1234', '1993-03-03', 'Female', '4545', 5454, 'Kochi', 'Defense ', 'MS', 'images/no.jpg'),
(108, 'Abhinav', 'patel', 'abhi@gmail.com', '1234', '1976-04-16', 'Male', '758758', 857857, 'Coimbatur', 'AI', 'PhD', 'images/download.jpeg'),
(109, 'Kush', '  M', 'kush@gmail.com', '1234', '1985-01-01', 'Male', '852852', 258258, 'Bangalore', 'AI', 'PhD', 'images/1-5.jpg'),
(110, 'Shilpa', 'M', 'shilpa@gmail.com', '1234', '1995-09-18', 'Female', '147147', 741741, 'Mumbai', 'NLP', 'PhD', 'images/download (1).jpeg'),
(111, 'Edwin', 'Shaji', 'edwin@gmail.com', '1234', '2001-02-01', 'Male', '0187282', 112233, 'Kasargod', 'Management', 'BSc.', 'images/jon-snow.jpg'),
(112, 'Rakshitha', 'r', 'raksharaj261@gmail.com', '1111', '2000-06-02', 'Female', '08123654789', 11111, 'BANGALORE', 'CSEE', 'ENGINERR', 'images/no.jpg'),
(113, 'Deepa', 'suni', 'deepa@gmail.com', '1234', '1999-02-11', 'Female', '1254', 228, 'Udupi', 'IS', 'ENGINERR', 'images/no.jpg'),
(120, 'Pratik', ' v', 'pratik@gmail.com', '1234', '2001-06-29', 'Male', '9213654789', 2103, 'Bidar', 'CSEE', 'ENGINERR', 'images/no.jpg'),
(121, 'sangu', 'kumar', 'sang@gmail.com', '1234', '1999-05-14', 'Male', '632145698', 12365, 'Mysore', 'AI', 'ENGINERR', 'images/no.jpg'),
(122, 'Shobha', 'A', 'shobha@gmail.com', '1234', '1980-04-12', 'Female', '987456212', 1233, 'Mysore', 'Tech', 'Msc', 'images/no.jpg');

-- Table structure for table `employee_leave`

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `employee_leave`

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(101, 301, '2019-04-07', '2019-04-08', 'Sick Leave', 'Approved'),
(102, 305, '2019-04-07', '2019-04-08', 'Urgent Family Cause', 'Approved'),
(103, 306, '2019-04-08', '2019-04-08', 'Concert Tour', 'Approved'),
(101, 307, '2019-04-14', '2019-04-30', 'Want to see GOT', 'Pending'),
(105, 308, '2019-04-26', '2019-04-30', 'Launching Tesla Model Y', 'Pending'),
(111, 309, '2019-04-09', '2019-04-13', 'Visit to Kings Landing', 'Pending'),
(104, 310, '2019-04-08', '2019-04-09', 'Emergency Leave', 'Pending'),
(112, 312, '2022-01-28', '2022-01-30', 'covid', 'Pending'),
(109, 313, '2022-01-22', '2022-01-24', 'cold', 'Pending');

-- Table structure for table `project`

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `project`

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 101, 'Database', '2019-04-07', '2019-04-04', 10, 'Submitted'),
(214, 102, 'Test', '2019-04-10', '0000-00-00', 0, 'Due'),
(215, 105, 'Tesla Model Y', '2019-04-19', '2019-04-06', 10, 'Submitted'),
(216, 106, 'Hack', '2019-05-04', '2019-04-05', 5, 'Submitted'),
(217, 111, 'Do Nothing', '2019-04-02', '2019-04-01', 8, 'Submitted'),
(218, 105, 'Tesla Model X', '2019-04-03', '2019-04-03', 10, 'Submitted'),
(219, 101, 'PHP', '2019-04-07', '0000-00-00', 0, 'Due'),
(220, 110, 'Data Analysis', '2019-04-16', '2019-04-04', 8, 'Submitted'),
(221, 110, 'Data Analysis', '2019-04-16', '2019-04-04', 7, 'Submitted'),
(222, 103, 'Statistical', '2019-04-19', '2019-04-04', 6, 'Submitted'),
(223, 108, 'Software Scema', '2019-04-09', '2019-04-02', 3, 'Submitted'),
(224, 107, 'Security Check', '2019-04-26', '2019-04-05', 9, 'Submitted'),
(225, 109, 'ML', '2019-04-03', '2019-04-04', 6, 'Submitted'),
(247, 111, 'database ', '2022-01-31', '0000-00-00', 0, 'Due'),
(248, 103, 'Tesla', '2100-04-12', '0000-00-00', 0, 'Due');

-- Table structure for table `rank`

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `rank`

INSERT INTO `rank` (`eid`, `points`) VALUES
(101, 10),
(102, 0),
(103, 6),
(104, 0),
(105, 20),
(106, 5),
(107, 9),
(108, 3),
(109, 6),
(110, 15),
(111, 8),
(112, 0),
(113, 0),
(120, 0),
(121, 0),
(122, 0);

-- Table structure for table `salary`

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `salary`

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(101, 55000, 10, 60500),
(102, 16500, 0, 16500),
(103, 65000, 6, 68900),
(104, 78000, 0, 78000),
(105, 105000, 20, 126000),
(106, 60000, 5, 63000),
(107, 77000, 9, 83930),
(108, 50000, 3, 51500),
(109, 85000, 6, 90100),
(110, 47000, 15, 54050),
(111, 45000, 8, 48600),
(112, 500000, 0, 500000),
(113, 40000, 0, 40000),
(120, 60000, 0, 60000),
(121, 50000, 0, 50000),
(122, 50000, 0, 50000);

-- Indexes for table `alogin`

ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `employee`
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `alogin`

ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- AUTO_INCREMENT for table `employee`
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

-- AUTO_INCREMENT for table `employee_leave`
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

-- AUTO_INCREMENT for table `project`
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

-- Constraints for dumped tables

-- Constraints for table `employee_leave`

ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `project`

ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Constraints for table `rank`

ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

