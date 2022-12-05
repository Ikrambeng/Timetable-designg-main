-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04 ديسمبر 2022 الساعة 23:17
-- إصدار الخادم: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttms`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- بنية الجدول `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `classrooms`
--

INSERT INTO `classrooms` (`name`) VALUES
('labo1'),
('labo2'),
('labo3'),
('labo4'),
('labo5'),
('labo6'),
('labo7'),
('salle22'),
('salle23'),
('salle24'),
('salle25');

-- --------------------------------------------------------

--
-- بنية الجدول `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_type` varchar(15) NOT NULL,
  `specialite` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `specialite`) VALUES
('CO10', 'english', 'THEORY', 'reseau'),
('CO11', 'modelisation systeme', 'THEORY', 'fondamentale'),
('CO9', 'modelisation systeme', 'THEORY', 'industurielle'),
('CO8', 'seminaire et projet', 'LAB', 'reseau'),
('CO7', 'modelisation systeme', 'LAB', 'reseau'),
('CO6', 'systeme distribuee', 'LAB', 'reseau'),
('CO5', 'signaux et systeme', 'THEORY', 'reseau'),
('CO3', 'security', 'THEORY', 'reseau'),
('CO4', 'system exploitation et prog sys', 'LAB', 'reseau'),
('CO2', 'reseau', 'THEORY', 'reseau'),
('CO1', 'base de donnees avancee', 'THEORY', 'reseau');

-- --------------------------------------------------------

--
-- بنية الجدول `teachers`
--

CREATE TABLE `teachers` (
  `name` text NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `faculty_number` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `teachers`
--

INSERT INTO `teachers` (`name`, `emailid`, `faculty_number`) VALUES
('PROF Korichi.a', 'Korichi@gmail.com', 'T01'),
('PROF Khelil.f', 'Khelil@gmail.com', 'T02'),
('PROF Merrezogui.n', 'Merrezogui@gmail.com', 'T03'),
('PROF Toumi.ch', 'Toumi@gmail.com', 'T04'),
('PROF Benkadour.m', 'Benkadour@gmail.com', 'T05'),
('PROF Eushi.s', 'Eushi@gmail.com', 'T06'),
('PROF Djediai.h', 'Djediai@gmail.com', 'T07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`emailid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
