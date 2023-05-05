SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2020-07-04 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2020-07-04 19:31:42'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2020-07-04 19:31:42'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2020-07-04 19:31:42'),
(9, 'B001', 'BIS', 'Bachelor of information system', '2021-07-25 21:46:55'),
(10, 'BE765', 'BE', 'Bachelor of Engineering', '2021-07-25 21:49:42');


CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', '1', '1', '1', '1'),
(2, 'Admin', '1', NULL, '1', '1'),
(3, 'User', NULL, NULL, '1', NULL);


CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(7, 201, 2, 6000, 1, '2021-07-11', 4, 'Bachelor  of Science', 10004, 'Arinaitwe', '', 'Gerald', 'male', 770546590, 'gerald@gmail.com', 757537271, 'Baguma Fred', 'Dad', 757537271, 'Muyenga', 'kampala', 'Assam', 790, 'Muyenga', 'kampala', 'Assam', 790, '2021-07-11 15:15:51', NULL),
(8, 112, 3, 4000, 1, '2021-07-11', 3, 'Bachelor of Engineering', 10002, 'John', '', 'Simith', 'male', 770546590, 'john@gmail.com', 757537271, 'Williams Fred', 'Dad', 757537271, 'Luthuli Avenue', 'California', 'Goa', 790, 'Luthuli Avenue', 'California', 'Goa', 790, '2021-07-11 15:30:56', NULL);



CREATE TABLE users (
id int(11) NOT NULL,
username varchar(255) CHARACTER SET latin1 NOT NULL,
password varchar(255) CHARACTER SET latin1 NOT NULL,
email varchar(255) CHARACTER SET latin1 NOT NULL,
permission varchar(255) CHARACTER SET latin1 NOT NULL,
reg_date timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users (id, username, password, email, permission, reg_date) VALUES
(1, 'admin', 'admin@123', 'admin@example.com', 'Superuser', '2021-07-25 23:15:54'),
(2, 'user1', 'user@123', 'user1@example.com', 'User', '2021-07-25 23:16:24'),
(3, 'user2', 'user@123', 'user2@example.com', 'User', '2021-07-25 23:16:39');

ALTER TABLE courses
ADD PRIMARY KEY (id);

ALTER TABLE permissions
ADD PRIMARY KEY (id);

ALTER TABLE registration
ADD PRIMARY KEY (id);

ALTER TABLE users
ADD PRIMARY KEY (id);

ALTER TABLE courses
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE permissions
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE registration
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE users
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

SELECT * FROM courses;
SELECT * FROM permissions;
SELECT * FROM registration;
SELECT * FROM users;
