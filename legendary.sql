-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 31 2016 г., 00:18
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `legendary`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `abbr` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `overview` text NOT NULL,
  `specs` text NOT NULL,
  `detailed_specs` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `abbr`, `title`, `overview`, `specs`, `detailed_specs`) VALUES
(1, 'spstrat', 'American Special Stratocaster&reg;', '<h2>Overview</h2>\r\n			<p class="description">\r\n				The American Special series Stratocaster® guitar puts genuine U.S-made Fender quality into the hands of players at any level.\r\n			</p>', '<h2>Specifications</h2>\r\n			<ul class="specs">\r\n				<li><b>Model Name: </b>American Special Stratocaster&reg;, Rosewood Fingerboard, Sonic Blue</li>\r\n				<li><b>Series: </b>American Special</li>\r\n				<li><b>Color: </b>Sonic Blue</li>\r\n				<li><b>Scale Length: </b>25.5"</li>\r\n				<li><b>Number of Strings: </b>6</li>\r\n			</ul>', '<div class="det_specs">\r\n				<h2>Detailed Description</h2>\r\n				<h3><u>Body</u></h3>\r\n				<p><b>Body Shape: </b>Stratocaster&reg;</p>\r\n				<p><b>Body Material: </b>Alder</p>\r\n				<p><b>Body Finish: </b>Gloss Polyurethane</p>\r\n				<h3><u>Neck</u></h3>\r\n				<p><b>Neck Material: </b>Maple</p>\r\n				<p><b>Neck Shape: </b>Modern "C"</p>\r\n				<p><b>Scale Length: </b>25.5" (648 mm)</p>\r\n				<p><b>Fingerboard Radius: </b>9.5" (241 mm)</p>\r\n				<p><b>Number of Frets: </b>22</p>\r\n				<p><b>Fret Size: </b>Jumbo</p>\r\n				<p><b>String Nut: </b>Synthetic Bone</p>\r\n				<p><b>Nut Wth: </b>1.685" (42.8 mm)</p>\r\n				<p><b>Neck Finish: </b>Satin Polyurethane</p>\r\n				<p><b>Fingerboard: </b>Rosewood</p>\r\n				<p><b>Position Inlays: </b>Black Dots on Maple; White Dots on Rosewood</p>\r\n				<h3><u>Electronics</u></h3>\r\n				<p><b>Pickups: </b>Texas Special™ Single-Coil Strat</p>\r\n				<p><b>Controls: </b>Master Volume, Tone 1. (Neck Pickup) Greasebucket™ Tone Circuit, (Rolls Off Highs without Adding Bass) Tone 2. (Bridge Pickup), Greasebucket™ Tone Circuit</p>\r\n				<p><b>Pickup Switching: </b>5-Position Blade: Position 1. Brge Pickup, Position 2. Brge and Mdle Pickup, Position 3. Mdle Pickup,<br />Position 4. Mdle and Neck Pickup, Position 5. Neck Pickup</p>			\r\n				<p><b>Pickup Configuration: </b>SSS</p>\r\n				<h3><u>Hardware</u></h3>\r\n				<p><b>Brge: </b>6-Saddle Vintage-Style Synchronized Tremolo</p>\r\n				<p><b>Tuning Machines: </b>Fender Standard Cast/Sealed</p>\r\n				<p><b>Orientation: </b>Right-Hand</p>\r\n				<p><b>Pickguard: </b>3-Ply Mint Green</p>\r\n				<p><b>Control Knobs: </b>Parchment Plastic</p>\r\n				<h3><u>Miscellaneous</u></h3>\r\n				<p><b>Strings: </b>Fender&reg; USA, NPS, (.009-.042 Gauges)</p>\r\n				<p><b>Unique Features: </b>Large ‘70s Style Decal, Dual "T"-Roller String Trees</p>\r\n				<p><b>Included Accessories: </b>Polishing Cloth</p>\r\n				<br>\r\n			</div>'),
(2, 'elstrat', 'American Elite Stratocaster&reg;', '<h2>Overview</h2>\r\n			<p class="description">\r\n				Externally the American Elite Stratocaster has Fender’s timeless style, but under the hood it’s an entirely new breed of guitar designed for 21st-century players who constantly push the envelope. With over a dozen new innovations, each guitar is a true performer with eye-catching style, exceptional feel and versatile sound from the very first moment you plug it in and play.</p>\r\n				<p class="description">Featured on all American Elite instruments, the new fourth generation Noiseless pickups are only available in this series, and represent a quantum leap in pickup design. Combining vintage-style sound with effectively noise-free performance, these are the pinnacle of Fender’s noiseless pickup designs, offering pristine cleans and fat, overdriven tones that scream with pure rock ‘n’ roll power. Designed for fast playing and effortless position changes, the compound profile neck is ideal for all playing styles. A modern “C”-shape at the nut, the profile morphs along the length of the neck to a modern “D”-shaped profile at the updated neck heel, providing plenty of comfortable support for fret hand antics. New locking short-post tuning machines provide increased break angle at the synthetic bone nut for buzz-free performance while the smooth two-point modern tremolo adds emotive touches to your performance without sacrificing your tuning.</p>\r\n				<p class="description">Fender is renowned for head-turning style, and this guitar is no different—from the redesigned sleek back and forearm contours that hug the player’s body for an enhanced playing experience to the black chrome headstock logo and large pearloid fret markers this instrument will dazzle the audience with elegant style. The American Elite Stratocaster is a bold new guitar for the brave new guitarist who is setting out to cross uncharted musical terrain. Includes a redesigned Elite Molded Case with TSA locks to provide increased protection for your cherished instrument.</p>', '<h2>Specifications</h2>\r\n				<ul class="specs">\r\n					<li><b>Model Name: </b>American Elite Stratocaster&reg;, Rosewood Fingerboard, Sky Burst Metallic</li>\r\n					<li><b>Series: </b>American Elite</li>\r\n					<li><b>Color: </b>Sky Burst Metallic</li>\r\n					<li><b>Scale Length: </b>25.5"</li>\r\n					<li><b>Number of Strings: </b>6</li>\r\n				</ul>', '<div class="det_specs">\r\n					<h2>Detailed Description</h2>\r\n					<h3><u>Body</u></h3>\r\n					<p><b>Body Shape: </b>Stratocaster&reg;</p>\r\n					<p><b>Body Material: </b>Alder</p>\r\n					<p><b>Body Finish: </b>Gloss Polyurethane</p>\r\n					<h3><u>Neck</u></h3>\r\n					<p><b>Neck Material: </b>Maple</p>\r\n					<p><b>Neck Shape: </b>Compound Back Shape, Modern "C" to "D"</p>\r\n					<p><b>Scale Length: </b>25.5" (648 mm)</p>\r\n					<p><b>Fingerboard Radius: </b>9.5"-14" Compound Radius (241 mm-355.6 mm)</p>\r\n					<p><b>Number of Frets: </b>22</p>\r\n					<p><b>Fret Size: </b>Medium Jumbo</p>\r\n					<p><b>String Nut: </b>Synthetic Bone</p>\r\n					<p><b>Nut Wth: </b>1.685" (42.8 mm)</p>\r\n					<p><b>Neck Finish: </b>Satin Urethane Finish on Back of Neck with Gloss Urethane Headstock Face</p>\r\n					<p><b>Fingerboard: </b>Rosewood</p>\r\n					<p><b>Position Inlays: </b>Large Black Pearloid Dots</p>\r\n					<h3><u>Electronics</u></h3>\r\n					<p><b>Pickups: </b>New 4th Generation Noiseless</p>\r\n					<p><b>Controls: </b>Master Volume (with S-1™ switch), Tone 1. (Neck Pickup), Tone 2. (Brge/Mdle Pickup; No-Load™ Tone control)</p>\r\n					<p><b>Pickup Switching: </b>5-Position Blade: Position 1. Brge Pickup, Position 2. Brge and Mdle Pickup, Position 3. Mdle Pickup,<br />Position 4. Mdle and Neck Pickup, Position 5. Neck Pickup</p>					<p><b>Pickup Configuration: </b>SSS</p>\r\n					<h3><u>Hardware</u></h3>\r\n					<p><b>Brge: </b>2-Point Deluxe Synchronized Tremolo with Pop-In Arm</p>\r\n					<p><b>Tuning Machines: </b>Deluxe Staggered Cast/Sealed Locking</p>\r\n					<p><b>Orientation: </b>Right-Hand</p>\r\n					<p><b>Pickguard: </b>3-Ply Mint Green</p>\r\n					<p><b>Control Knobs: </b>Aged White Soft Touch Knobs</p>\r\n					<h3><u>Miscellaneous</u></h3>\r\n					<p><b>Strings: </b>Fender&reg; USA, NPS, (.009-.042 Gauges)</p>\r\n					<br>\r\n				</div>');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
