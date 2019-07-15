-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 10:09 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdatabases`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(3) NOT NULL,
  `answers` varchar(1000) NOT NULL,
  `ans_id` int(3) NOT NULL,
  `q_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answers`, `ans_id`, `q_id`) VALUES
(1, 'class', 1, 1),
(2, 'id', 2, 1),
(3, 'article', 3, 1),
(4, 'html', 4, 1),
(5, 'dir', 1, 2),
(6, 'style', 2, 2),
(7, 'class', 3, 2),
(8, 'article', 4, 2),
(9, 'tooltip', 1, 3),
(10, 'dir', 2, 3),
(11, 'title', 3, 3),
(12, 'head', 4, 3),
(13, 'lang', 1, 4),
(14, 'sub', 2, 4),
(15, 'dir', 3, 4),
(16, 'ds', 4, 4),
(17, 'dataFormatAs', 1, 5),
(18, 'datafld', 2, 5),
(19, 'disabled', 3, 5),
(20, 'datasrc', 4, 5),
(21, 'A data structure that shows a hierarchical behavior', 1, 6),
(22, 'Container of objects of similar types', 2, 6),
(23, 'Container of objects of mixed types', 3, 6),
(24, 'All of the mentioned', 4, 6),
(25, 'Compile-time', 1, 7),
(26, 'Run-time', 2, 7),
(27, 'Not an error', 3, 7),
(28, 'None of the mentioned', 4, 7),
(29, 'Binary trees', 1, 8),
(30, 'Scheduling of processes', 2, 8),
(31, 'Caching', 3, 8),
(32, 'Spatial locality', 4, 8),
(33, 'Easier to store elements of same data type', 1, 9),
(34, 'Used to implement other data structures like stack and queue', 2, 9),
(35, 'Convenient way to represent matrices as a 2D array', 3, 9),
(36, 'All of the mentioned', 4, 9),
(37, 'difficulty in knowing children nodes of a node', 1, 10),
(38, ' difficult in finding the parent of a node', 2, 10),
(39, 'have to know the maximum number of nodes possible before creation of trees', 3, 10),
(40, 'difficult to implement', 4, 10),
(41, 'Stream API', 1, 11),
(42, 'Serialization', 2, 11),
(43, 'Spliterator', 3, 11),
(44, 'Lambda Expression', 4, 11),
(45, 'represents supplier of Boolean-valued results', 1, 12),
(46, 'returns Boolean-valued result', 2, 12),
(47, 'There is no such function interface', 3, 12),
(48, 'returns null if Boolean is passed as argument', 4, 12),
(49, 'string', 1, 13),
(50, 'object', 2, 13),
(51, 'void', 3, 13),
(52, 'function', 4, 13),
(53, 'sequential and parallel', 1, 14),
(54, 'sequential and random', 2, 14),
(55, 'parallel and random', 3, 14),
(56, 'random and synchronized', 4, 14),
(57, 'workPool', 1, 15),
(58, 'newWorkStealingPool', 2, 15),
(59, 'threadPool', 3, 15),
(60, 'workThreadPool', 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(3) NOT NULL,
  `ans_id` int(3) NOT NULL,
  `question` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `ans_id`, `question`) VALUES
(1, 2, 'Which attribute specifies a unique alphanumeric identifier to be associated with an element?'),
(2, 2, 'Which attribute specifies an inline style associated with an element, which determines the rendering of the affected element?'),
(3, 3, 'Which attribute is used to provide an advisory text about an element or its contents?'),
(4, 3, 'Which attribute sets the text direction as related to the lang attribute?'),
(5, 2, 'Which of the following is the attribute that specifies the column name from the data source object that supplies the bound data?'),
(6, 2, 'Which of these best describes an array?'),
(7, 2, 'When does the ArrayIndexOutOfBoundsException occur?'),
(8, 4, 'Which of the following concepts make extensive use of arrays?'),
(9, 4, 'What are the advantages of arrays?'),
(10, 3, 'Disadvantage of using array representation for binary trees is?'),
(11, 2, 'Which of the following is not introduced with Java 8?'),
(12, 1, 'What is the purpose of BooleanSupplier function interface?'),
(13, 4, 'What is the return type of lambda expression?'),
(14, 1, 'What are the two types of Streams offered by java 8?'),
(15, 2, 'Which feature of java 8 enables us to create a work stealing thread pool using all available processors at its target?');

-- --------------------------------------------------------

--
-- Table structure for table `quizregistration`
--

CREATE TABLE `quizregistration` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizregistration`
--

INSERT INTO `quizregistration` (`user`, `pass`) VALUES
('pooja', 'pooja');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `totalques` int(11) NOT NULL,
  `anscorrect` int(11) NOT NULL,
  `id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`totalques`, `anscorrect`, `id`, `username`) VALUES
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(0, 0, 0, 'pooja'),
(5, 0, 0, ''),
(5, 0, 0, ''),
(5, 0, 0, ''),
(5, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `usersession`
--

CREATE TABLE `usersession` (
  `u_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `u_q_id` int(10) NOT NULL,
  `u_a_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersession`
--

INSERT INTO `usersession` (`u_id`, `name`, `u_q_id`, `u_a_id`) VALUES
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0),
(0, 'pooja', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
