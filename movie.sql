

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `Movie_Name` varchar(100) NOT NULL,
  `No_of_tickets` int(11) NOT NULL,
  `Date_of_booking` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

--

INSERT INTO `bookings` (`id`, `Movie_Name`, `No_of_tickets`, `Date_of_booking`, `message`) VALUES
(24, 'ef', 3, '2020-11-16T20:00', 'ergfver'),
(132, 'eqrg', 3, '2020-11-16T20:00', 'wsfgv');

-- --------------------------------------------------------

--

--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `work_position` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--



INSERT INTO `employee` (`emp_id`, `emp_name`, `work_position`, `phone_number`) VALUES
(2001, 'Manideep', 'Tickets-manager', '345354368'),
(2002, 'Nikhil', 'Reel Operator', '16457345'),
(2003, 'Madhav', ' Food Stalls manager', '837468237');

-- --------------------------------------------------------

--

--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `screen_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `screen_no`) VALUES
(6001, 'DJ Tillu', 2),
(6002, 'Manjummel Boys', 1);

-- --------------------------------------------------------

--

--

CREATE TABLE `snacks_orders` (
  `s_no` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `seat_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--

INSERT INTO `snacks_orders` (`s_no`, `item_name`, `quantity`, `seat_no`) VALUES
(1, 'pop corn', 2, 'A15'),
(2, 'Samosa', 5, 'E5'),
(3, 'Coco cola', 2, 'J9');

-- --------------------------------------------------------



--

CREATE TABLE `viewers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `viewers` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `password`) VALUES
(1001, 'hemanth', 'kumar', '354338342359', 'hearthackerheisen@gmail.com', 'hemanth@2004'),
(1002, 'Guna', ' Sekhar', '1278561875', 'qiejfgiu@gmai.com', 'Guna@2004'),
(1003, 'Roni', 'Rapak', '1144334499', 'roni_349@gmail.com', 'roni@2004'),
(1004, 'Jayanth', 'Swaroop', '2837461837', 'jayanth_2004@gmail.com', 'jayanth@2004'),
(1011, 'Harsha', 'Vardhan', '21734677', 'harshvardhan@gmail.com', 'harsha@vishnu'),
(1018, 'jaswanth', 'kumar', '98734687', 'jaswanth@gmail.com', 'jaswanth@2004'),
(1019, 'Nikhil', 'sri ram', '8317533755', 'nikhilsrisrirampulluri@gmail.com', 'Nikhil@2004'),
(1020, 'Dhanesh', 'giri gari', '9052934926', 'dhaneshroshanna@gmail.com', 'Dhanesh@2004');

--

--



--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);



--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);


ALTER TABLE `viewers`
  ADD PRIMARY KEY (`id`);

--
-- 
--
ALTER TABLE `viewers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;
COMMIT;

