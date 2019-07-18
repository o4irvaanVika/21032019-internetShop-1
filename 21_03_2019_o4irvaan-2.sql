-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 09 2019 г., 10:45
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `21_03_2019_o4irvaan-2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'Женщинам', 0),
(2, 'Мужчинам', 0),
(3, 'Детям', 0),
(4, 'Верхняя Одежда', 1),
(5, 'Обувь', 1),
(6, 'Верхняя Одежда', 2),
(7, 'Обувь', 2),
(8, 'Верхняя Одежда', 3),
(9, 'Одежда для дома', 3),
(10, 'Шляпы', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(6) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `adress`, `phone`, `email`) VALUES
(1, 'Москва,Большая Спасская 12', '8(495)626-46-00', 'info@gototop.com');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `link`, `img`) VALUES
(1, 'Новые разработки и новые тренинги', 'Компания маркетинговых инноваций GO TO TOP внедряет и сопровождает целый комплекс маркетинговых\r\n                    бизнес-процессов, встраивая Маркетинговую систему<br>\r\n                    продаж для компаний, желающих получить качественно новые результаты:<br><br>\r\n                    <b>Капитализацию маркетинга.</b><br>\r\n                    В ваших руках актив успеха, система, учитывающая создание качественного продукта и его\r\n                    максимальные продажи с наибольшей выгодой.<br><br>\r\n                    <b>Сокращение человеческого фактора.</b><br>\r\n                    На вашу деятельность больше не повлияет уход сотрудников, особенности бизнес партнеров, смена\r\n                    управляющего состава или исполнителей.<br><br>\r\n                    <b>Экономию маркетинговых бюджетов.</b><br>\r\n                    Средства, вложенные в маркетинг и рекламу, имеют накопительный эффект, а накопленный опыт\r\n                    позволяет исключить риски и сократить ненужные траты.<br><br>\r\n                    <b>Мощное конкурентное преимущество.</b><br>\r\n                    Пока другие ломают голову над тем, как выжить в кризис, вы уверенно движетесь вперед.<br><br>\r\n                    <b>Стабильность и возможность планировать собственное развитие.</b>', 'http://site-agency.ru/page2/index.php', 'images/top2.jpg'),
(2, 'Новые разработки и новые тренинги', 'Компания маркетинговых инноваций GO TO TOP внедряет и сопровождает целый комплекс маркетинговых\r\n                    бизнес-процессов, встраивая Маркетинговую систему<br>\r\n                    продаж для компаний, желающих получить качественно новые результаты:<br><br>\r\n                    <b>Капитализацию маркетинга.</b><br>\r\n                    В ваших руках актив успеха, система, учитывающая создание качественного продукта и его\r\n                    максимальные продажи с наибольшей выгодой.<br><br>\r\n                    <b>Сокращение человеческого фактора.</b><br>\r\n                    На вашу деятельность больше не повлияет уход сотрудников, особенности бизнес партнеров, смена\r\n                    управляющего состава или исполнителей.<br><br>\r\n                    <b>Экономию маркетинговых бюджетов.</b><br>\r\n                    Средства, вложенные в маркетинг и рекламу, имеют накопительный эффект, а накопленный опыт\r\n                    позволяет исключить риски и сократить ненужные траты.<br><br>\r\n                    <b>Мощное конкурентное преимущество.</b><br>\r\n                    Пока другие ломают голову над тем, как выжить в кризис, вы уверенно движетесь вперед.<br><br>\r\n                    <b>Стабильность и возможность планировать собственное развитие.</b>', 'http://site-agency.ru/page2/index.php', 'images/top2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `question` varchar(200) NOT NULL,
  `services` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `question`, `services`, `user_id`, `date`) VALUES
(1, 'как дела?', 'продвижение сайта,разработка', 1, '0000-00-00'),
(2, 'как дела?', 'продвижение сайта', 1, '0000-00-00'),
(3, 'как дела?', 'продвижение сайта,разработка', 1, '0000-00-00'),
(4, 'как дела?', 'продвижение сайта,разработка', 1, '0000-00-00'),
(5, 'как дела?', 'продвижение сайта,разработка', 1, '0000-00-00'),
(261, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 60, '2019-06-16'),
(262, 'вопрос', 'back1.jpg', 60, '2019-06-16'),
(263, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 62, '2019-06-19'),
(264, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 62, '2019-06-19'),
(265, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 62, '2019-06-19'),
(266, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 62, '2019-06-19'),
(292, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(293, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(294, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(295, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(296, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(297, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(298, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(299, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(300, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(301, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(302, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(303, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(304, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(305, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(306, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(307, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(308, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(309, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(310, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(311, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(312, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(313, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(314, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(315, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(316, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(317, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 3, '2019-06-20'),
(318, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg,11116.jpg,biznes.jpg,biccc.jpg', 67, '2019-06-20'),
(319, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg,11116.jpg,biznes.jpg,biccc.jpg', 67, '2019-06-20'),
(320, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg,11116.jpg,biznes.jpg,biccc.jpg', 67, '2019-06-20'),
(321, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg,11116.jpg,biznes.jpg,biccc.jpg', 68, '2019-06-20'),
(322, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg,11116.jpg', 67, '2019-06-23'),
(323, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg,11116.jpg', 67, '2019-06-23'),
(324, 'вопрос', 'back1.jpg,top1.jpg,top3.jpg', 69, '2019-06-28');

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`id`, `title`, `description`, `price`, `image`, `category`) VALUES
(1, 'футболка', 'описание', '1516.00', '13.jpg', '4'),
(2, 'платье', 'описание', '3478.00', '14.jpg', '4'),
(3, 'юбка', 'описание', '2378.00', '15.jpg', '4'),
(4, 'Джинсы', 'описание', '2893.00', '16.jpg', '4'),
(5, 'куртка', 'описание', '5372.00', '17.jpg', '4'),
(6, 'пиджак', 'описание', '4536.00', '18.jpg', '4'),
(7, 'сарафан', 'описание', '6376.00', '19.jpg', '4'),
(8, 'шорты', 'описание', '1296.00', '20.jpg', '4'),
(9, 'топ', 'описание', '1563.00', '21.jpg', '4'),
(10, 'Платье', 'описание', '999.00', '22.jpg', '4'),
(11, 'Куртка синяя', 'описание', '5400.00', '1.jpg', '6'),
(12, 'Кожаная Куртка', 'описание', '22500.00', '2.jpg', '6'),
(13, 'Куртка с карманами', 'описание', '9200.00', '3.jpg', '6'),
(14, 'Куртка с капюшоном', 'описание', '6100.00', '4.jpg', '6'),
(15, 'Куртка Casual', 'описание', '8800.00', '5.jpg', '6'),
(16, 'Стильная кожаная куртка', 'описание', '12800.00', '6.jpg', '6'),
(17, 'Кеды серые', 'описание', '2900.00', '7.jpg', '7'),
(18, 'Кеды черные', 'описание', '4500.00', '8.jpg', '7'),
(19, 'Кеды Casual', 'описание', '5900.00', '9.jpg', '7'),
(20, 'Кеды всепогодные', 'описание', '9200.00', '10.jpg', '7'),
(21, 'Джинсы', 'описание', '4800.00', '11.jpg', '6'),
(22, 'Джинсы голубые', 'описание', '4200.00', '12.jpg', '6');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `fio` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fio`, `email`, `phone`) VALUES
(1, 'Виктория Очирваань', 'o4irvaan@yandex.ru', '89135675456'),
(2, 'Катя Петрова', 'kate@yandex.ru', '89768888343'),
(3, 'Дмитрий Петров', 'dima@mail.ru', '654657634'),
(4, 'fdhfd', 'jdfhdjhfjd@nb', '444444'),
(5, 'fdhfd', 'jdfhdjhfjd@nb', '444444'),
(6, '', '', ''),
(7, 'ÐŸÐµÑ‚Ñ€ Ð˜Ð²Ð°Ð½Ð¾Ð²Ð¸Ñ‡', 'petr@mail.ru', '34342443'),
(8, 'Петр Иванович', 'petr@mail.ru', '34342443'),
(9, 'Петр Иванович', 'petr@mail.ru', '34342443'),
(67, 'vika', 'vika@mail.ru', '17364736573465'),
(68, 'оговора', 'csdf@dvgshg', 'cnbbsddsbs'),
(69, 'ghghg', 'nmnm@cbzc', '5555555');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT для таблицы `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
