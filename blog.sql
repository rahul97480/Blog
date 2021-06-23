-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 06:44 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `message`, `added_on`) VALUES
(1, 'Vishal Gupta', 'vishal@gmail.com', '9999999999', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel dictum odio. Nullam sed nunc vitae enim laoreet ultricies. Sed a rhoncus nisl. Donec posuere iaculis dolor, vel ultrices neque vulputate id. Duis viverra lacus felis, at pellentesque eros fringilla sit amet. Vestibulum vitae gravida mauris, eu scelerisque lectus. Proin fermentum laoreet nulla non vehicula. Nullam venenatis nisi lorem. Donec sed purus in lectus tristique euismod. Etiam vulputate enim at leo semper auctor. Nunc eget rutrum metus. Maecenas aliquet tellus vitae nunc condimentum, bibendum elementum metus blandit.', '2020-08-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `description`, `status`, `added_on`) VALUES
(2, 'About Us', 'about-us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel dictum odio. Nullam sed nunc vitae enim laoreet ultricies. Sed a rhoncus nisl. Donec posuere iaculis dolor, vel ultrices neque vulputate id. Duis viverra lacus felis, at pellentesque eros fringilla sit amet. Vestibulum vitae gravida mauris, eu scelerisque lectus. Proin fermentum laoreet nulla non vehicula. Nullam venenatis nisi lorem. Donec sed purus in lectus tristique euismod. Etiam vulputate enim at leo semper auctor. Nunc eget rutrum metus. Maecenas aliquet tellus vitae nunc condimentum, bibendum elementum metus blandit.', 1, '2020-08-31 02:47:11'),
(3, 'Services', 'services', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel dictum odio. Nullam sed nunc vitae enim laoreet ultricies. Sed a rhoncus nisl. Donec posuere iaculis dolor, vel ultrices neque vulputate id. Duis viverra lacus felis, at pellentesque eros fringilla sit amet. Vestibulum vitae gravida mauris, eu scelerisque lectus. Proin fermentum laoreet nulla non vehicula. Nullam venenatis nisi lorem. Donec sed purus in lectus tristique euismod. Etiam vulputate enim at leo semper auctor. Nunc eget rutrum metus. Maecenas aliquet tellus vitae nunc condimentum, bibendum elementum metus blandit.', 1, '2020-08-31 02:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` varchar(1000) NOT NULL,
  `long_desc` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `post_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_desc`, `long_desc`, `image`, `post_date`, `status`, `added_on`) VALUES
(12, 'm ipsum dolor sit amet, consectetur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vestibulum, ligula vel tincidunt consectetur, lorem turpis bibendum ex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vestibulum, ligula vel tincidunt consectetur, lorem turpis bibendum ex, eu aliquam ex sem vel turpis. Sed lobortis porttitor libero quis condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris ut justo odio. Donec sed placerat ipsum. Integer eleifend urna odio, nec pellentesque est sagittis in. Duis eleifend erat non ultrices placerat. Sed eu ullamcorper nibh. Quisque accumsan tortor mattis purus lobortis, nec consequat dolor consectetur. Maecenas nec est sit amet enim rhoncus egestas. Praesent a tortor ac nisl commodo sodales vitae sed mauris. Nullam ultrices dictum massa. Integer et tortor a turpis faucibus porta id non velit. Nunc sit amet tincidunt felis.', '1598637308.jpeg', '2020-08-25', 1, '2020-08-28 05:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'Vishal Gupta', 'vishal@gmail.com', 'vishal', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
