-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2018 a las 04:47:51
-- Versión del servidor: 5.5.42
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mainmodel`
--

CREATE TABLE `mainmodel` (
  `id` int(11) NOT NULL,
  `model` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `pricing` varchar(8) NOT NULL,
  `modelDetails` text NOT NULL,
  `imgPath` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mainmodel`
--

INSERT INTO `mainmodel` (`id`, `model`, `modelName`, `pricing`, `modelDetails`, `imgPath`) VALUES
(0, 'F55', 'Mini Cooper F55', '27,790', 'It’s the turbocharged motoring icon, with more handles to love. The MINI 5 door boasts the same iconic good looks as its 3 door brother, but features an extra pair of passenger doors for practical access to its spacious cabin. And despite its slightly longer frame, the MINI 5 door’s wide, athletic stance and wheels-pushed-out design deliver the corner-carving agility you’d expect from any MINI.', 'F55.jpg'),
(1, 'F56', 'Mini Cooper F56', '22,190', 'A true style icon – reimagined for contemporary living. Paying tribute to the original 1959 Austin Seven, the MINI Seven Edition brings together our most distinctive elements into one model. Striking Melting Silver details, a unique bonnet stripe design, and exclusive interior elements put this special edition MINI into a class of its own.', 'F56.jpg'),
(2, 'R58', 'Mini Cooper R58', '40,590', 'It’s almost time to re-discover the redesigned, re-engineered, and completely revamped MINI Convertible. From feistier more fuel-efficient engines, to smarter innovations that let you stay open at every point along the way, this all-new MINI Convertible brings an array of enhancements to get excited about. And although the next iteration of this sun-seeking MINI will look and feel more refined than its predecessor, the open-air exhilaration that awaits you behind the wheel remains the same. We can’t wait for you to experience it in person. Until then... stay open.', 'R57.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(40) NOT NULL,
  `reviews` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `video_url` varchar(512) NOT NULL,
  `thumbnail_url` varchar(512) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id`, `name`, `category`, `reviews`, `rating`, `video_url`, `thumbnail_url`) VALUES
(1, 'Coco', 'Kids', 'Aspiring musician Miguel, confronted with his family''s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 9, 'coco.mp4', 'coco.jpg'),
(2, 'How to train your dragon 1', 'Kids', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.', 8, 'dragon1.mp4', 'dragon1.jpg'),
(3, 'How to train your dragon 2', 'Kids', 'When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.', 8, 'dragon2.mp4', 'Dragon2.jpg'),
(4, 'The Book of Life', 'Kids', 'Manolo, a young man who is torn between fulfilling the expectations of his family and following his heart, embarks on an adventure that spans three fantastic worlds where he must face his greatest fears.', 7, 'booklife.mp4', 'bookoflife.jpg'),
(5, 'Lilo & Stitch', 'Kids', 'a story about a little girl who wants a dog and an alien who fulfills her wish and then some. The adorable prankster from outer space is at the heart of this story of accepting differences, and crash-landed his place in the Disney roster of iconic animated heroes. Funny, heartwarming and imaginative with an Elvis soundtrack to boot.', 8, 'lilostitch.mp4', 'liloystitch.jpg'),
(6, 'Pan''s labyrinth', 'Adults', 'In 1944 falangist Spain, a girl, fascinated with fairy-tales, is sent along with her pregnant mother to live with her new stepfather, a ruthless captain of the Spanish army. During the night, she meets a fairy who takes her to an old faun in the center of the labyrinth. He tells her she''s a princess, but must prove her royalty by surviving three gruesome tasks. If she fails, she will never prove herself to be the the true princess and will never see her real father, the king, again.', 8, 'pans.mp4', 'panslabyrinths.jpg'),
(7, 'The secret in their eyes', 'Adults', 'In 1999, retired Argentinian federal justice agent Benjamín Espósito is writing a novel, using an old closed case as the source material. That case is the brutal rape and murder of Liliana Coloto. In addition to seeing the extreme grief of the victim''s husband Ricardo Morales, Benjamín, his assistant Pablo Sandoval, and newly hired department chief Irene Menéndez-Hastings were personally affected by the case as Benjamín and Pablo tracked the killer, hence the reason why the unsatisfactory ending', 8, 'secret.mp4', 'secret.jpg'),
(8, 'The shape of the water', 'Adults', 'From master storyteller Guillermo del Toro comes THE SHAPE OF WATER, an otherworldly fable set against the backdrop of Cold War era America circa 1962. In the hidden high-security government laboratory where she works, lonely Elisa (Sally Hawkins) is trapped in a life of isolation. Elisa''s life is changed forever when she and co-worker Zelda (Octavia Spencer) discover a secret classified experiment. Rounding out the cast are Michael Shannon, Richard Jenkins, Michael Stuhlbarg, and Doug Jones.', 8, 'shapewater.mp4', 'shapeofwater.jpg'),
(9, 'X-files: fight the future', 'Adults', 'With problems appearing between FBI agents Fox Mulder and Dana Scully, a dangerous conspiracy is starting to appear. A deadly virus, which appears to be of extraterrestrial origin has appeared, which could destroy all life on Earth. With the help of a paranoid doctor, Alvin Kurtzweil, Mulder and Scully must act fast in order to save everyone on the planet.', 8, 'xfiles.mp4', 'xfiles.jpg'),
(10, 'wonder woman', 'Adults', 'Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, when a pilot crashes on their shores and tells of a massive conflict raging in the outside world, Diana leaves her home, convinced she can stop the threat. Fighting alongside man in a war to end all wars, Diana will discover her full powers and her true destiny.', 9, 'wonderwoman.mp4', 'wonderwoman.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mainmodel`
--
ALTER TABLE `mainmodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`),
  ADD UNIQUE KEY `modelDesc` (`modelName`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mainmodel`
--
ALTER TABLE `mainmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
