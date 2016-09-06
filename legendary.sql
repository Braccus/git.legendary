-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 06 2016 г., 20:04
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
-- Структура таблицы `acc_pages`
--

CREATE TABLE IF NOT EXISTS `acc_pages` (
  `page` varchar(20) NOT NULL,
  `page_alias` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `acc_pages`
--

INSERT INTO `acc_pages` (`page`, `page_alias`) VALUES
('sign_up', 'Регистрация'),
('sign_in', 'Личный кабинет');

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE IF NOT EXISTS `main` (
  `logo` varchar(60) NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`logo`, `footer`) VALUES
('i/logo1.png', 'Copyright &copy; 2016 Legendary Guitars. Все права защищены.');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_pages`
--

CREATE TABLE IF NOT EXISTS `menu_pages` (
  `page` varchar(20) NOT NULL,
  `page_alias` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_pages`
--

INSERT INTO `menu_pages` (`page`, `page_alias`) VALUES
('index', 'Главная'),
('catalogue', 'Каталог'),
('contacts', 'Контакты');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `abbr`, `title`, `overview`, `specs`, `detailed_specs`) VALUES
(1, 'spstrat', 'American Special Stratocaster&reg;', '<h2>Overview</h2><p class="description">The American Special series Stratocaster® guitar puts genuine U.S-made Fender quality into the hands of players at any level.</p>', '<h2>Specifications</h2><ul class="specs"><li><b>Model Name: </b>American Special Stratocaster&reg;, Rosewood Fingerboard, Sonic Blue</li><li><b>Series: </b>American Special</li><li><b>Color: </b>Sonic Blue</li><li><b>Scale Length: </b>25.5"</li><li><b>Number of Strings: </b>6</li></ul>', '<div class="det_specs"><h2>Detailed Description</h2><h3><u>Body</u></h3><p><b>Body Shape: </b>Stratocaster&reg;</p><p><b>Body Material: </b>Alder</p><p><b>Body Finish: </b>Gloss Polyurethane</p><h3><u>Neck</u></h3><p><b>Neck Material: </b>Maple</p><p><b>Neck Shape: </b>Modern "C"</p><p><b>Scale Length: </b>25.5" (648 mm)</p><p><b>Fingerboard Radius: </b>9.5" (241 mm)</p><p><b>Number of Frets: </b>22</p><p><b>Fret Size: </b>Jumbo</p><p><b>String Nut: </b>Synthetic Bone</p><p><b>Nut Wth: </b>1.685" (42.8 mm)</p><p><b>Neck Finish: </b>Satin Polyurethane</p><p><b>Fingerboard: </b>Rosewood</p><p><b>Position Inlays: </b>Black Dots on Maple; White Dots on Rosewood</p><h3><u>Electronics</u></h3><p><b>Pickups: </b>Texas Special™ Single-Coil Strat</p><p><b>Controls: </b>Master Volume, Tone 1. (Neck Pickup) Greasebucket™ Tone Circuit, (Rolls Off Highs without Adding Bass) Tone 2. (Bridge Pickup), Greasebucket™ Tone Circuit</p><p><b>Pickup Switching: </b>5-Position Blade: Position 1. Brge Pickup, Position 2. Brge and Mdle Pickup, Position 3. Mdle Pickup,<br />Position 4. Mdle and Neck Pickup, Position 5. Neck Pickup</p><table><tr><td>Pickup Selector<br>Switch Position</td><th>Neck Pickup</th><th>Middle Pickup</th><th>Bridge Pickup</th><th>Tone Control in Effect</th></tr><tr><th>Position 1</th><td>-</td><td>-</td><td>ON</td><td>No Tone Control</td></tr><tr><th>Position 2</th><td>-</td><td>ON</td><td>ON</td><td>T2</td></tr><tr><th>Position 3</th><td>-</td><td>ON</td><td>-</td><td>T2</td></tr><tr><th>Position 4</th><td>ON</td><td>ON</td><td>-</td><td>T1&T2</td></tr><tr><th>Position 5</th><td>ON</td><td>-</td><td>-</td><td>T1</td></tr></table><p><b>Pickup Configuration: </b>SSS</p><h3><u>Hardware</u></h3><p><b>Brge: </b>6-Saddle Vintage-Style Synchronized Tremolo</p><p><b>Tuning Machines: </b>Fender Standard Cast/Sealed</p><p><b>Orientation: </b>Right-Hand</p><p><b>Pickguard: </b>3-Ply Mint Green</p><p><b>Control Knobs: </b>Parchment Plastic</p><h3><u>Miscellaneous</u></h3><p><b>Strings: </b>Fender&reg; USA, NPS, (.009-.042 Gauges)</p><p><b>Unique Features: </b>Large ‘70s Style Decal, Dual "T"-Roller String Trees</p><p><b>Included Accessories: </b>Polishing Cloth</p><br></div>'),
(2, 'elstrat', 'American Elite Stratocaster&reg;', '<h2>Overview</h2><p class="description">Externally the American Elite Stratocaster has Fender’s timeless style, but under the hood it’s an entirely new breed of guitar designed for 21st-century players who constantly push the envelope. With over a dozen new innovations, each guitar is a true performer with eye-catching style, exceptional feel and versatile sound from the very first moment you plug it in and play.</p><p class="description">Featured on all American Elite instruments, the new fourth generation Noiseless pickups are only available in this series, and represent a quantum leap in pickup design. Combining vintage-style sound with effectively noise-free performance, these are the pinnacle of Fender’s noiseless pickup designs, offering pristine cleans and fat, overdriven tones that scream with pure rock ‘n’ roll power. Designed for fast playing and effortless position changes, the compound profile neck is ideal for all playing styles. A modern “C”-shape at the nut, the profile morphs along the length of the neck to a modern “D”-shaped profile at the updated neck heel, providing plenty of comfortable support for fret hand antics. New locking short-post tuning machines provide increased break angle at the synthetic bone nut for buzz-free performance while the smooth two-point modern tremolo adds emotive touches to your performance without sacrificing your tuning.</p><p class="description">Fender is renowned for head-turning style, and this guitar is no different—from the redesigned sleek back and forearm contours that hug the player’s body for an enhanced playing experience to the black chrome headstock logo and large pearloid fret markers this instrument will dazzle the audience with elegant style. The American Elite Stratocaster is a bold new guitar for the brave new guitarist who is setting out to cross uncharted musical terrain. Includes a redesigned Elite Molded Case with TSA locks to provide increased protection for your cherished instrument.</p>', '<h2>Specifications</h2><ul class="specs"><li><b>Model Name: </b>American Elite Stratocaster&reg;, Rosewood Fingerboard, Sky Burst Metallic</li><li><b>Series: </b>American Elite</li><li><b>Color: </b>Sky Burst Metallic</li><li><b>Scale Length: </b>25.5"</li><li><b>Number of Strings: </b>6</li></ul>', '<div class="det_specs"><h2>Detailed Description</h2><h3><u>Body</u></h3><p><b>Body Shape: </b>Stratocaster&reg;</p><p><b>Body Material: </b>Alder</p><p><b>Body Finish: </b>Gloss Polyurethane</p><h3><u>Neck</u></h3><p><b>Neck Material: </b>Maple</p><p><b>Neck Shape: </b>Compound Back Shape, Modern "C" to "D"</p><p><b>Scale Length: </b>25.5" (648 mm)</p><p><b>Fingerboard Radius: </b>9.5"-14" Compound Radius (241 mm-355.6 mm)</p><p><b>Number of Frets: </b>22</p><p><b>Fret Size: </b>Medium Jumbo</p><p><b>String Nut: </b>Synthetic Bone</p><p><b>Nut Wth: </b>1.685" (42.8 mm)</p><p><b>Neck Finish: </b>Satin Urethane Finish on Back of Neck with Gloss Urethane Headstock Face</p><p><b>Fingerboard: </b>Rosewood</p><p><b>Position Inlays: </b>Large Black Pearloid Dots</p><h3><u>Electronics</u></h3><p><b>Pickups: </b>New 4th Generation Noiseless</p><p><b>Controls: </b>Master Volume (with S-1™ switch), Tone 1. (Neck Pickup), Tone 2. (Brge/Mdle Pickup; No-Load™ Tone control)</p><p><b>Pickup Switching: </b>5-Position Blade: Position 1. Brge Pickup, Position 2. Brge and Mdle Pickup, Position 3. Mdle Pickup,<br />Position 4. Mdle and Neck Pickup, Position 5. Neck Pickup</p><table><tr><td>Pickup Selector<br>Switch Position</td><th>Neck Pickup</th><th>Middle Pickup</th><th>Bridge Pickup</th><th>Tone Control in Effect</th></tr><tr><th>Position 1</th><td>-</td><td>-</td><td>ON</td><td>No Tone Control</td></tr><tr><th>Position 2</th><td>-</td><td>ON</td><td>ON</td><td>T2</td></tr><tr><th>Position 3</th><td>-</td><td>ON</td><td>-</td><td>T2</td></tr><tr><th>Position 4</th><td>ON</td><td>ON</td><td>-</td><td>T1&T2</td></tr><tr><th>Position 5</th><td>ON</td><td>-</td><td>-</td><td>T1</td></tr></table><p><b>Pickup Configuration: </b>SSS</p><h3><u>Hardware</u></h3><p><b>Brge: </b>2-Point Deluxe Synchronized Tremolo with Pop-In Arm</p><p><b>Tuning Machines: </b>Deluxe Staggered Cast/Sealed Locking</p><p><b>Orientation: </b>Right-Hand</p><p><b>Pickguard: </b>3-Ply Mint Green</p><p><b>Control Knobs: </b>Aged White Soft Touch Knobs</p><h3><u>Miscellaneous</u></h3><p><b>Strings: </b>Fender&reg; USA, NPS, (.009-.042 Gauges)</p><br></div>'),
(3, 'adstrat', 'American Deluxe Stratocaster&reg;', '<h2>Overview</h2><p class="description">Fender''s American Deluxe Stratocaster&reg; guitar has all the modern features today''s guitarists require. The compound radius fingerboard allows effortless string bending anywhere along the neck, and N3 Noiseless™ pickups provide improved Stratocaster tones for sparkling bell-like chime with no hum. Reconfigured S-1&trade; switching offers other distinctive tonal options; other features include staggered locking tuners, two-point synchronized American Deluxe tremolo bridge with pop-in arm, and beveled neck heel.</p>', '<h2>Specifications</h2><ul class="specs"><li><b>Model Name: </b>American Deluxe Stratocaster&reg;, Rosewood Fingerboard, Sunset Metallic</li><li><b>Series: </b>American Deluxe</li><li><b>Color: </b>Sunset Metallic</li><li><b>Scale Length: </b>25.5"</li><li><b>Number of Strings: </b>6</li></ul>', '<div class="det_specs"><h2>Detailed Description</h2><h3><u>Body</u></h3><p><b>Body Shape: </b>Stratocaster&reg;</p><p><b>Body Material: </b>Select Alder</p><p><b>Body Finish: </b>Urethane</p><h3><u>Neck</u></h3><p><b>Neck Material: </b>Maple</p><p><b>Neck Shape: </b>Modern "C"</p><p><b>Scale Length: </b>25.5" (648 mm)</p><p><b>Fingerboard Radius: </b>9.5"-14" Compound Radius (241 mm-355.6 mm)</p><p><b>Number of Frets: </b>22</p><p><b>Fret Size: </b>Medium Jumbo</p><p><b>String Nut: </b>Synthetic Bone</p><p><b>Nut Wth: </b>1.685" (42.8 mm)</p><p><b>Neck Finish: </b>Satin Urethane</p><p><b>Fingerboard: </b>Rosewood</p><p><b>Position Inlays: </b>Pearloid Dot</p><h3><u>Electronics</u></h3><p><b>Pickups: </b>Noiseless&trade; N3 Single-Coil Strat</p><p><b>Controls: </b>Master Volume (with S-1&trade; switch), Tone 1 (Neck Pickup), Tone 2 (Middle and Bridge Pickups; No-Load&trade; Tone control)</p><p><b>Pickup Switching: </b>5-Position Blade: Position 1. Brge Pickup, Position 2. Brge and Mdle Pickup, Position 3. Mdle Pickup,<br />Position 4. Mdle and Neck Pickup, Position 5. Neck Pickup</p><table><tr><td>Pickup Selector<br>Switch Position</td><th>Neck Pickup</th><th>Middle Pickup</th><th>Bridge Pickup</th><th>Tone Control in Effect</th></tr><tr><th>Position 1</th><td>-</td><td>-</td><td>ON</td><td>No Tone Control</td></tr><tr><th>Position 2</th><td>-</td><td>ON</td><td>ON</td><td>T2</td></tr><tr><th>Position 3</th><td>-</td><td>ON</td><td>-</td><td>T2</td></tr><tr><th>Position 4</th><td>ON</td><td>ON</td><td>-</td><td>T1&T2</td></tr><tr><th>Position 5</th><td>ON</td><td>-</td><td>-</td><td>T1</td></tr></table><p><b>Pickup Configuration: </b>SSS</p><p><b>Special Electronics: </b>S-1&trade; Switch</p><h3><u>Hardware</u></h3><p><b>Brge: </b>2-Point Deluxe Synchronized Tremolo with Pop-In Arm</p><p><b>Tuning Machines: </b>Deluxe Staggered Cast/Sealed Locking</p><p><b>Orientation: </b>Right-Hand</p><p><b>Pickguard: </b>3-Ply Mint Green</p><p><b>Control Knobs: </b>Aged White Plastic</p><h3><u>Miscellaneous</u></h3><p><b>Strings: </b>Fender&reg; USA Bullets&reg; 3250L, NPS, (.009-.042 Gauges)</p><p><b>Unique Features: </b>Compound Radius Fretboard, New Noiseless&trade;; N3 Strat&reg;; Pickups, Reconfigured S-1&trade; Switching, Locking Tuning Machines, Contoured Heel</p><p><b>Included Accessories: </b>Hardshell Case, Cable, Strap, Straplocks</p><br></div>'),
(4, 'ststrat', 'American Standard Stratocaster&reg;', '<h2>Overview</h2><p class="description">The American Standard Stratocaster&reg; guitar is the same great best-selling, go-to model it has always been, and now it’s upgraded with aged plastic parts and full-sounding Fender Custom Shop Fat ’50s pickups. The latest iteration of our time-honored classic, it is the very essence of Strat tone and remains a beauty to see, hear and feel.</p>', '<h2>Specifications</h2><ul class="specs"><li><b>Model Name: </b>American Standard Stratocaster&reg;, Maple Fingerboard, 3-Color Sunburst</li><li><b>Series: </b>American Standard</li><li><b>Color: </b>3-Color Sunburst</li><li><b>Scale Length: </b>25.5"</li><li><b>Number of Strings: </b>6</li></ul>', '<div class="det_specs"><h2>Detailed Description</h2><h3><u>Body</u></h3><p><b>Body Shape: </b>Stratocaster&reg;</p><p><b>Body Material: </b>Alder</p><p><b>Body Finish: </b>Urethane</p><h3><u>Neck</u></h3><p><b>Neck Material: </b>Maple</p><p><b>Neck Shape: </b>Modern "C"</p><p><b>Scale Length: </b>25.5" (648 mm)</p><p><b>Fingerboard Radius: </b>9.5" (241 mm)</p><p><b>Number of Frets: </b>22</p><p><b>Fret Size: </b>Medium Jumbo</p><p><b>String Nut: </b>Synthetic Bone</p><p><b>Nut Wth: </b>1.685" (42.8 mm)</p><p><b>Neck Finish: </b>Satin Finish on Back, Gloss Finish on Front</p><p><b>Fingerboard: </b>Maple</p><p><b>Position Inlays: </b>Black Dot</p><h3><u>Electronics</u></h3><p><b>Pickups: </b>Custom Shop Fat ''50s Single-Coil Strat</p><p><b>Controls: </b>Master Volume, Tone 1. (Neck Pickup), Tone 2. (Brge/Mdle Pickup)</p><p><b>Pickup Switching: </b>5-Position Blade: Position 1. Brge Pickup, Position 2. Brge and Mdle Pickup, Position 3. Mdle Pickup,<br />Position 4. Mdle and Neck Pickup, Position 5. Neck Pickup</p><table><tr><td>Pickup Selector<br>Switch Position</td><th>Neck Pickup</th><th>Middle Pickup</th><th>Bridge Pickup</th><th>Tone Control in Effect</th></tr><tr><th>Position 1</th><td>-</td><td>-</td><td>ON</td><td>No Tone Control</td></tr><tr><th>Position 2</th><td>-</td><td>ON</td><td>ON</td><td>T2</td></tr><tr><th>Position 3</th><td>-</td><td>ON</td><td>-</td><td>T2</td></tr><tr><th>Position 4</th><td>ON</td><td>ON</td><td>-</td><td>T1&T2</td></tr><tr><th>Position 5</th><td>ON</td><td>-</td><td>-</td><td>T1</td></tr></table><p><b>Pickup Configuration: </b>SSS</p><h3><u>Hardware</u></h3><p><b>Brge: </b>2-Point Synchronized Tremolo with Bent Steel Saddles</p><p><b>Tuning Machines: </b>Fender Standard Cast/Sealed Staggered</p><p><b>Orientation: </b>Right-Hand</p><p><b>Pickguard: </b>3-Ply Parchment</p><p><b>Control Knobs: </b>Aged White Plastic</p><h3><u>Miscellaneous</u></h3><p><b>Strings: </b>Fender&reg; Super 250L, NPS, (.009-.042 Gauges)</p><p><b>Unique Features: </b>Bent Steel Saddles with Elongated String Slots, Copper Infused High Mass 100% Metal Brge Block,<br />Thinner Undercoat Finish for Improved Body Resonance, Tinted Neck, Aged Plastic Parts.</p><p><b>Included Accessories: </b>Hardshell Case</p><br></div>'),
(5, 'squier51', 'Squier&reg; &#39;51', '<h2>Overview</h2><p class="description">The Squier &#39;51 returns in a hot new Vintage Modified model that delivers all the great style and features of the original value-priced screamer of the mid 2000s. All the &#39;51s enormous tonal versatility is back, with a powerful SH pickup configuration, rotary pickup selector, push-pull coil tap and more.</p><p class="description">Features include a basswood body, satin-finish maple neck with "C"-shaped profile, 9.5”-radius maple fingerboard with 21 medium jumbo frets, single-coil Stratocaster neck pickup and hot humbucking bridge pickup, knurled "chrome dome" master volume control knob that also functions as a push-pull bridge pickup coil-selector switch (full humbucking or inner coil only for single-coil bridge pickup tone), knurled "chrome dome" three-position rotary pickup selector switch (in place of a tone control knob), single-ply white pickguard (black pickguard on Vintage Blonde model) and six-saddle hardtail bridge. Available in Two-Color Sunburst, Candy Apple Red and Vintage Blonde.</p>', '<h2>Specifications</h2><ul class="specs"><li><b>Model Name: </b>Squier&reg; &#39;51, Maple Fingerboard, 2-Color Sunburst</li><li><b>Series: </b>Vintage Modified Models</li><li><b>Color: </b>2-Color Sunburst</li><li><b>Scale Length: </b>25.5"</li><li><b>Number of Strings: </b>6</li></ul>', '<div class="det_specs"><h2>Detailed Description</h2><h3><u>Body</u></h3><p><b>Body Shape: </b>Stratocaster&reg;</p><p><b>Body Material: </b>Basswood</p><p><b>Body Finish: </b>Gloss Poly</p><h3><u>Neck</u></h3><p><b>Neck Material: </b>Maple</p><p><b>Neck Shape: </b>Modern "C"</p><p><b>Scale Length: </b>25.5" (648 mm)</p><p><b>Fingerboard Radius: </b>9.5" (241 mm)</p><p><b>Number of Frets: </b>21</p><p><b>Fret Size: </b>Medium Jumbo</p><p><b>String Nut: </b>Synthetic Bone</p><p><b>Nut Wth: </b>1.650" (42 mm)</p><p><b>Neck Finish: </b>Satin Poly</p><p><b>Fingerboard: </b>Maple</p><p><b>Position Inlays: </b>Black Dot</p><h3><u>Electronics</u></h3><p><b>Bridge Pickup: </b>Hot Humbucking</p><p><b>Neck Pickup: </b>Standard Single-Coil Strat</p><p><b>Controls: </b>Master Volume, 3-Position Rotary</p><p><b>Pickup Switching: </b>3-Position Rotary Pickup Selector Switch: Position 1. Neck Pickup (Full Clockwise) Position 2. Bridge and Neck Pickups (Middle) Position 3. Bridge Pickup (Full Counterclockwise)</p><p><b>Pickup Configuration: </b>HS</p><p><b>Special Electronics: </b>Push/Pull Coil Selector Switch (On Master Volume Pot): Normal Position: Full Bridge Humbucking Pickup Up Position: Inside Coil of Bridge Humbucking Pickup</p><h3><u>Hardware</u></h3><p><b>Brge: </b>Hard-Tail 6-Saddle</p><p><b>Tuning Machines: </b>Standard Die-Cast</p><p><b>Orientation: </b>Right-Hand</p><p><b>Pickguard: </b>1-Ply White</p><p><b>Control Knobs: </b>Knurled Dome</p><h3><u>Miscellaneous</u></h3><p><b>Strings: </b>Fender&reg; USA, NPS, (.009-.042 Gauges)</p><br></div>');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
