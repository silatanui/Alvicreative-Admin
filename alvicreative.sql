-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 01:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alvicreative`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `AboutId` int(11) NOT NULL,
  `AboutTitle` varchar(255) NOT NULL,
  `AboutParagraph` text NOT NULL,
  `Mission` text NOT NULL,
  `Vision` text NOT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`AboutId`, `AboutTitle`, `AboutParagraph`, `Mission`, `Vision`, `Photo`) VALUES
(1, 'About Us', 'Alvicreative Innovation Centre is a marketing company that was founded in 2021. This was after realizing a gap in the market where most businesses, both small and medium enterprises, were really struggling to grow and get to as many people as possible. Our main focus was to help these entities utilize the online space by making sure they were educated and taking advantage of the same.', 'Our mission is to provide creative, innovative, and effective integrated brand marketing and public relations solutions that help our clients grow their businesses and realize their marketing goals.', 'Delivering results-oriented brand marketing programs and public relations campaigns that enhance our clients awareness, improve their sales and foster their growth.', 'Alvi-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`id`, `name`, `email`, `subject`, `message`) VALUES
(4, 'CHARITY KAENI KEMUNTO', 'charitykaenikemunto12@gmail.com', ' Looking for a reliable partner to help me with my digital marketing.', 'Hi there,\n\nI came across your online marketing hub and was impressed by the services and solutions you offer. I am looking for a reliable partner to help me with my digital marketing efforts, and I think your team has the experience and expertise to help me achieve my goals.\n\nI would like to learn more about your services and how we can work together. Could you please send me more information, including pricing and case studies? I would also be interested in scheduling a call to discuss my specific needs and requirements in more detail.\n\nThank you for your time, and I look forward to hearing from you soon.\n\nBest regards,\nCHARITY KAENI KEMUNTO'),
(5, 'JACOB ABRAHAMS', 'jacobabrahams@gmail.com', ' Looking for a reliable partner to help me with my Web Development', 'Hi there,\n\nI came across your online marketing hub and noticed that you offer web development services. I am in the process of revamping my company\'s website and am looking for a team that can help me with the development and implementation of the new design.\n\nI would like to learn more about your web development services, including your pricing and availability. Could you please send me more information, and also provide some examples of your past work? I would also be interested in scheduling a call to discuss my project in more detail and see if we are a good fit.\n\nThank you for your time, and I look forward to hearing from you soon.\n\nBest regards,\nJacob Abrahams\n'),
(6, 'FELIX MUKHANDIA WASIKE', 'felixmukhandia@gmail.com', ' Looking for a reliable partner to help me with my Web Development', 'Here is an example of a contact form containing name, email, subject, and message, connected with an Ajax script with a 20-second load time. The form has a circle loader that is displayed before the success message is displayed. The Ajax script sends the form data to a database called contact_details through a PHP file, and displays the success message in a div:'),
(9, 'Joseph Waithera', 'jose@gmail.com', ' Looking for a reliable partner to help me with my Web Development', 'Need a website developer to develop me a website for my company ');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `HeaderId` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`HeaderId`, `Name`, `Link`) VALUES
(1, 'Logo', 'index.php'),
(2, 'Company Name', 'index.php'),
(3, 'Home', 'index.php'),
(4, 'About', 'about.php'),
(5, 'Services', 'services.php'),
(6, 'Team', 'team.php'),
(7, 'Contacts', 'contacts.php'),
(8, 'Client', 'client.php'),
(9, 'Twitter', 'https://twitter.com/alvicreativema3/'),
(10, 'Facebook', 'https://facebook.com/alvicreativ/'),
(11, 'Whatsapp', 'https://api.whatsapp.com/send/?phone=%2B254784012139&text&type=phone_number&app_absent=0'),
(12, 'Instagram', 'https://www.instagram.com/alvicreativemarketinghub/'),
(13, 'LinkedIn', 'https://www.linkedin.com/alvicreativemaketinghub.co.ke/');

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `HeroId` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Header` varchar(255) NOT NULL,
  `ParagraphText` text NOT NULL,
  `Photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`HeroId`, `Name`, `Header`, `ParagraphText`, `Photo`) VALUES
(1, 'Slide1', 'About Us', 'Alvicreative Marketing Company is a full-service marketing and advertising agency based in Nairobi, Kenya. We specialize in helping businesses of all sizes develop and execute effective marketing strategies that drive brand awareness and growth.', 'news-5.jpg'),
(2, 'Slide2', 'Our Services', 'At Alvicreative, we offer a wide range of services to help businesses grow and reach their target audience. Our services include social media management, website design and development, content creation, and much more.', 'slide-2.jpeg'),
(3, 'Slide3', 'Our Core Values', 'At Alvicreative, we believe in the power of innovation and collaboration. We are dedicated to providing our clients with high-quality services and exceeding their expectations. We also value sustainability and strive to make a positive impact on the world.', 'slide-3.jpeg'),
(4, 'Slide4', 'Meet Our Team', 'Our team at Alvicreative is made up of skilled and passionate professionals who are dedicated to helping businesses grow. From marketing strategists to designers to developers, we have the expertise and experience to take your business to the next level.', 'slide-4.jpeg'),
(5, 'Slide5', 'Client Success Stories', 'We are proud to have helped numerous businesses achieve their goals through our marketing services. From small startups to established corporations, our clients have seen increased brand awareness and improved sales thanks to our efforts.', 'slide-5.jpeg'),
(6, 'Slide6', 'Our Approach', 'At Alvicreative, we believe in taking a strategic and data-driven approach to marketing. We work closely with our clients to understand their unique goals and challenges, and develop customized campaigns that deliver measurable results.', 'slide-6.jpeg'),
(7, 'Slide7', 'Case Studies', 'See how we\'ve helped our clients succeed by checking out some of our case studies. From small startups to large corporations, we\'ve worked with a diverse range of businesses to achieve their marketing objectives.', 'slide-7.jpeg'),
(8, 'Slide8', 'Testimonials', 'Don\'t just take our word for it - see what our clients have to say about working with Alvicreative. We\'re proud of the relationships we\'ve built and the results we\'ve achieved for our clients.', 'slide-8.jpeg'),
(9, 'Slide9', 'Contact Us', 'Ready to see how Alvicreative can help your business grow? Get in touch with us to learn more about our services and schedule a consultation.', 'slide-9.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TeamId` int(255) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `About` mediumtext NOT NULL,
  `Role` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Twitter` varchar(255) NOT NULL,
  `Facebook` varchar(255) NOT NULL,
  `Instagram` varchar(255) NOT NULL,
  `LinkedIn` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TeamId`, `FullName`, `Email`, `Username`, `Password`, `About`, `Role`, `PhoneNumber`, `Address`, `Twitter`, `Facebook`, `Instagram`, `LinkedIn`, `Photo`) VALUES
(1, 'Alvin Imbukwa', 'alvi@gmail.com', 'Alvin', 'Alvin*12', 'Hello and welcome to Alvicreative Marketing Company! My name is Alvin Imbukwa and I am the founder and CEO of this dynamic marketing firm. With over 10 years of experience in the industry, I have a strong track record of helping businesses of all sizes achieve their marketing and advertising goals. Whether its developing a new brand identity, launching a digital marketing campaign, or creating engaging content, I am committed to delivering top-notch results for my clients. Outside of work, I am passionate about staying up to date with the latest marketing trends and techniques, and I am always on the lookout for new opportunities to learn and grow. Thank you for considering me as your marketing partner.', 'Founder and CEO', '+254741785675', '', 'https:// ', 'https:// ', 'https:// ', 'https:// ', 'Alvin Imbukwa.png'),
(2, 'Mike Mali Tinana', 'miketinana@gmail.com', 'Mike', 'Mike*12', 'As the Marketing and Advertising Director of Alvicreative Marketing Company, I bring a wealth of experience and expertise to our team. I am responsible for developing and implementing marketing and advertising strategies that help our clients achieve their business goals. With a focus on creativity and innovation, I work closely with our team to create campaigns that effectively engage our audience and drive results. Whether its through traditional or digital marketing channels, I am always looking for new ways to help our clients succeed.', 'Marketing and Advertising Director', '+257 84012139', '', 'https:// ', 'https:// ', 'https:// ', 'https:// ', 'Mike Mali Tinana.png'),
(3, 'Francis Njoroge', 'francisnjoroge@gmail.com', 'Francis', 'Francis*12', 'As a Software Developer and Graphic Designer at Alvicreative Marketing Company, I bring a unique set of skills to the table. My background in software development allows me to create custom solutions for our clients, while my passion for graphic design helps me craft visually stunning campaigns that effectively communicate our clients messages. I am constantly learning and staying up-to-date with the latest technologies and design trends, and I thrive in a collaborative environment where I can work closely with my team to deliver high-quality results for our clients. Whether Im coding a custom application or designing a marketing campaign, I am always striving to exceed our clients expectations.', 'Software Developer and Graphic Designer', '+254741785675', 'Nairobi', 'https:// ', 'https:// ', 'https:// ', 'https:// ', 'Francis Njoroge.jpeg'),
(4, 'FELIX MUKHANDIA WASIKE', 'fmukhandia@gmail.com', 'Felix', 'Felix*12', 'As a web developer at Alvicreative Marketing Hub, I am responsible for designing and building websites and web applications for our clients. This includes working with clients to understand their needs and creating custom solutions that meet their specific requirements. In addition to coding and programming, my work also involves testing and debugging web applications to ensure that they are reliable and user-friendly. I take pride in delivering high-quality, effective websites that help our clients achieve their business goals.', 'Website Developer ', '+254741785675', '10300- Kerugoya, Kenyan', 'https:// ', 'https:// ', 'https:// ', 'https:// ', 'Felix.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `topbar`
--

CREATE TABLE `topbar` (
  `TopBarId` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `topbar`
--

INSERT INTO `topbar` (`TopBarId`, `Name`, `Link`) VALUES
(1, 'Mail', 'alvicreativemarketing@gmail.com'),
(2, 'Tel', '2547840121392');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`AboutId`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`HeaderId`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`HeroId`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamId`);

--
-- Indexes for table `topbar`
--
ALTER TABLE `topbar`
  ADD PRIMARY KEY (`TopBarId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `AboutId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `HeaderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `HeroId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `TeamId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `topbar`
--
ALTER TABLE `topbar`
  MODIFY `TopBarId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
