-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for 123
CREATE DATABASE IF NOT EXISTS `123` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `123`;

-- Dumping structure for table 123.friends
CREATE TABLE IF NOT EXISTS `friends` (
  `FriendID` int(11) NOT NULL AUTO_INCREMENT,
  `FriendWhoAdded` int(11) DEFAULT NULL,
  `FriendBeingAdded` int(11) DEFAULT NULL,
  `IsAccepted` tinyint(1) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`FriendID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 123.friends: ~0 rows (approximately)
INSERT INTO `friends` (`FriendID`, `FriendWhoAdded`, `FriendBeingAdded`, `IsAccepted`, `DateAdded`) VALUES
	(1, 1, 2, 1, '2024-09-03 09:25:07'),
	(2, 1, 3, 0, '2024-09-03 09:25:07'),
	(3, 2, 4, 1, '2024-09-03 09:25:07'),
	(4, 3, 5, 1, '2024-09-03 09:25:07'),
	(5, 4, 1, 0, '2024-09-03 09:25:07');

-- Dumping structure for table 123.groupmembershiprequests
CREATE TABLE IF NOT EXISTS `groupmembershiprequests` (
  `GroupMemberShipRequestsID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) DEFAULT NULL,
  `GroupMemberUserID` int(11) DEFAULT NULL,
  `IsGroupMemberShipAccepted` tinyint(1) DEFAULT NULL,
  `DateAccepted` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`GroupMemberShipRequestsID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 123.groupmembershiprequests: ~0 rows (approximately)
INSERT INTO `groupmembershiprequests` (`GroupMemberShipRequestsID`, `GroupID`, `GroupMemberUserID`, `IsGroupMemberShipAccepted`, `DateAccepted`) VALUES
	(1, 1, 2, 1, '2024-09-03 09:25:07'),
	(2, 2, 3, 0, '2024-09-03 09:25:07'),
	(3, 3, 4, 1, '2024-09-03 09:25:07'),
	(4, 4, 5, 0, '2024-09-03 09:25:07'),
	(5, 5, 1, 1, '2024-09-03 09:25:07');

-- Dumping structure for table 123.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(100) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 123.groups: ~0 rows (approximately)
INSERT INTO `groups` (`GroupID`, `GroupName`, `CreatedBy`, `DateAdded`) VALUES
	(1, 'Hiking Enthusiasts', 1, '2024-09-03 09:25:07'),
	(2, 'Cooking Lovers', 2, '2024-09-03 09:25:07'),
	(3, 'Book Club', 3, '2024-09-03 09:25:07'),
	(4, 'Tech Innovators', 4, '2024-09-03 09:25:07'),
	(5, 'Gaming Squad', 5, '2024-09-03 09:25:07');

-- Dumping structure for table 123.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `PostID` int(11) NOT NULL AUTO_INCREMENT,
  `PostDescription` varchar(255) DEFAULT NULL,
  `PostedBy` int(11) DEFAULT NULL,
  `IsPublic` tinyint(1) DEFAULT NULL,
  `IsOnlyForFriends` tinyint(1) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `DatePosted` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`PostID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 123.posts: ~0 rows (approximately)
INSERT INTO `posts` (`PostID`, `PostDescription`, `PostedBy`, `IsPublic`, `IsOnlyForFriends`, `GroupID`, `DatePosted`) VALUES
	(1, 'Had an amazing hike today!', 1, 1, 0, 1, '2024-09-03 09:25:07'),
	(2, 'Tried a new recipe, it was delicious!', 2, 0, 1, 2, '2024-09-03 09:25:07'),
	(3, 'Just finished reading a great book!', 3, 1, 0, 3, '2024-09-03 09:25:07'),
	(4, 'Excited about the new tech gadgets coming out!', 4, 1, 1, 4, '2024-09-03 09:25:07'),
	(5, 'Anyone up for a game this weekend?', 5, 0, 1, 5, '2024-09-03 09:25:07');

-- Dumping structure for table 123.users
CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 123.users: ~5 rows (approximately)
INSERT INTO `users` (`UserID`, `Username`, `FirstName`, `LastName`, `DateOfBirth`, `Password`, `DateAdded`) VALUES
	(1, 'JhonnyBravo', 'John', 'Doe', '1990-01-01', 'password123', '2024-09-03 09:25:07'),
	(2, 'BravoJhonny', 'Jane', 'Doe', '1992-02-14', 'password456', '2024-09-03 09:25:07'),
	(3, 'BravoJohn', 'Bob', 'Smith', '1985-07-23', 'password789', '2024-09-03 09:25:07'),
	(4, 'JohnBravo', 'Alice', 'Johnson', '1995-05-30', 'passwordabc', '2024-09-03 09:25:07'),
	(5, 'AliceGuo', 'Mike', 'Brown', '1988-12-12', 'passwordxyz', '2024-09-03 09:25:07');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
