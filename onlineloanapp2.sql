-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for online_loan_application_fs1
CREATE DATABASE IF NOT EXISTS `online_loan_application_fs1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `online_loan_application_fs1`;


-- Dumping structure for table online_loan_application_fs1.address_table
CREATE TABLE IF NOT EXISTS `address_table` (
  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `local_address` varchar(50) NOT NULL DEFAULT '0',
  `city_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `master_city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.address_table: ~0 rows (approximately)
/*!40000 ALTER TABLE `address_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_table` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.bank_branch
CREATE TABLE IF NOT EXISTS `bank_branch` (
  `bank_branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(50) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pancard` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bank_branch_id`),
  KEY `FK_bank_branch_customer_registration_table` (`customer_id`),
  KEY `FK_bank_branch_master_bank_table` (`bank_id`),
  CONSTRAINT `FK_bank_branch_customer_registration_table` FOREIGN KEY (`customer_id`) REFERENCES `customer_registration_table` (`coustomer_id`),
  CONSTRAINT `FK_bank_branch_master_bank_table` FOREIGN KEY (`bank_id`) REFERENCES `master_bank_table` (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.bank_branch: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_branch` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.bank_loans_services_details_table
CREATE TABLE IF NOT EXISTS `bank_loans_services_details_table` (
  `load_id` int(10) NOT NULL AUTO_INCREMENT,
  `loan_name` varchar(50) NOT NULL DEFAULT '0',
  `loan_interset` double NOT NULL DEFAULT '0',
  `loan_amount` double NOT NULL DEFAULT '0',
  `tenure` double NOT NULL DEFAULT '0',
  `loan_services_charge` double NOT NULL DEFAULT '0',
  `bank_id` int(11) NOT NULL,
  PRIMARY KEY (`load_id`),
  KEY `FK_bank_loans_services_master_bank_table` (`bank_id`),
  CONSTRAINT `FK_bank_loans_services_master_bank_table` FOREIGN KEY (`bank_id`) REFERENCES `master_bank_table` (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.bank_loans_services_details_table: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_loans_services_details_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_loans_services_details_table` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.bank_services
CREATE TABLE IF NOT EXISTS `bank_services` (
  `bank_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_card_service` varchar(50) DEFAULT NULL,
  `debit_card` varchar(50) DEFAULT NULL,
  `bank_branch_id` int(11) NOT NULL,
  PRIMARY KEY (`bank_service_id`),
  KEY `FK_bank_services_bank_branch` (`bank_branch_id`),
  CONSTRAINT `FK_bank_services_bank_branch` FOREIGN KEY (`bank_branch_id`) REFERENCES `bank_branch` (`bank_branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.bank_services: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_services` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.b_l_app_registration
CREATE TABLE IF NOT EXISTS `b_l_app_registration` (
  `bank_laon_applied_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `loan_type_id` int(11) NOT NULL,
  `net_monthly_salary` double DEFAULT NULL,
  `employment_type` varchar(50) DEFAULT NULL,
  `pan_no` varchar(50) DEFAULT NULL,
  `adhar_no` varchar(50) DEFAULT NULL,
  `Identithy_proof` blob,
  `address_proof` blob,
  `do_you_file_ITR` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `annual_business_income` double DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bank_laon_applied_id`),
  KEY `FK_b_l_app_registration_bank_loans_services_details_table` (`loan_type_id`),
  KEY `FK_b_l_app_registration_status_id` (`status_id`),
  CONSTRAINT `FK_b_l_app_registration_bank_loans_services_details_table` FOREIGN KEY (`loan_type_id`) REFERENCES `bank_loans_services_details_table` (`load_id`),
  CONSTRAINT `FK_b_l_app_registration_status_id` FOREIGN KEY (`status_id`) REFERENCES `status_id` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.b_l_app_registration: ~0 rows (approximately)
/*!40000 ALTER TABLE `b_l_app_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_l_app_registration` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.customer_registration_table
CREATE TABLE IF NOT EXISTS `customer_registration_table` (
  `coustomer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_firstName` varchar(50) NOT NULL DEFAULT '0',
  `customer_lastName` varchar(50) NOT NULL DEFAULT '0',
  `userName` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `dob` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL DEFAULT '0',
  `mobile` bigint(10) NOT NULL DEFAULT '0',
  `address_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`coustomer_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `address_id` FOREIGN KEY (`address_id`) REFERENCES `address_table` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.customer_registration_table: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_registration_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_registration_table` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.loans_by_bank_
CREATE TABLE IF NOT EXISTS `loans_by_bank_` (
  `bank_loan_id` int(11) NOT NULL,
  `bank_loan_service` int(11) NOT NULL,
  KEY `FK_loans_by_bank_table_bank_loans_services_details_table` (`bank_loan_id`),
  KEY `FK_loans_by_bank_table_bank_services` (`bank_loan_service`),
  CONSTRAINT `FK_loans_by_bank_table_bank_loans_services_details_table` FOREIGN KEY (`bank_loan_id`) REFERENCES `bank_loans_services_details_table` (`load_id`),
  CONSTRAINT `FK_loans_by_bank_table_bank_services` FOREIGN KEY (`bank_loan_service`) REFERENCES `bank_services` (`bank_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.loans_by_bank_: ~0 rows (approximately)
/*!40000 ALTER TABLE `loans_by_bank_` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans_by_bank_` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.login
CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`login_id`),
  KEY `FK_login_role_table` (`role_id`),
  KEY `FK_login_customer_registration_table` (`customer_id`),
  CONSTRAINT `FK_login_customer_registration_table` FOREIGN KEY (`customer_id`) REFERENCES `customer_registration_table` (`coustomer_id`),
  CONSTRAINT `FK_login_role_table` FOREIGN KEY (`role_id`) REFERENCES `role_table` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.login: ~0 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.master_bank_table
CREATE TABLE IF NOT EXISTS `master_bank_table` (
  `bank_id` int(10) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.master_bank_table: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_bank_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_bank_table` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.master_city
CREATE TABLE IF NOT EXISTS `master_city` (
  `city_id` int(10) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL DEFAULT '0',
  `state_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `state_id` FOREIGN KEY (`state_id`) REFERENCES `master_state` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.master_city: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_city` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.master_country
CREATE TABLE IF NOT EXISTS `master_country` (
  `country_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.master_country: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_country` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.master_state
CREATE TABLE IF NOT EXISTS `master_state` (
  `state_id` int(10) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) NOT NULL DEFAULT '0',
  `country_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`state_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `country_id` FOREIGN KEY (`country_id`) REFERENCES `master_country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.master_state: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_state` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.mast_country
CREATE TABLE IF NOT EXISTS `mast_country` (
  `country_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.mast_country: ~0 rows (approximately)
/*!40000 ALTER TABLE `mast_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `mast_country` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.role_table
CREATE TABLE IF NOT EXISTS `role_table` (
  `roleId` int(11) NOT NULL,
  `rolename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.role_table: ~2 rows (approximately)
/*!40000 ALTER TABLE `role_table` DISABLE KEYS */;
INSERT INTO `role_table` (`roleId`, `rolename`) VALUES
	(1, 'admin'),
	(2, 'customer');
/*!40000 ALTER TABLE `role_table` ENABLE KEYS */;


-- Dumping structure for table online_loan_application_fs1.status_id
CREATE TABLE IF NOT EXISTS `status_id` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table online_loan_application_fs1.status_id: ~2 rows (approximately)
/*!40000 ALTER TABLE `status_id` DISABLE KEYS */;
INSERT INTO `status_id` (`status_id`, `status_name`) VALUES
	(1, 'Accepted'),
	(2, 'Rejected');
/*!40000 ALTER TABLE `status_id` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
