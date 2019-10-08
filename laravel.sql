-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 07 2019 г., 21:27
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'Первый комментарий', '2019-10-08 21:00:00', '2019-10-15 21:00:00'),
(3, 2, 'Второй комментарий', '1995-11-23 22:00:00', '2002-11-04 22:00:00'),
(53, 25, 'In exercitationem quia omnis inventore occaecati ratione tempore. Perferendis nihil sit et quidem error cum quis. Accusamus libero corrupti amet eum.', '2017-01-14 22:00:00', '2003-08-18 21:00:00'),
(54, 26, 'Nisi odio molestiae culpa optio voluptas. Saepe nisi iure temporibus incidunt. Recusandae et exercitationem rem et sit consequatur accusamus. Fuga quo iste ut quia unde est.', '2016-01-25 22:00:00', '2019-02-18 22:00:00'),
(55, 27, 'Nobis cum magnam id culpa autem nobis est. Nam atque aut et est veniam beatae. Atque deleniti porro aperiam qui.', '1972-04-30 21:00:00', '1981-02-06 22:00:00'),
(56, 28, 'Magnam laboriosam iste odit laborum. Minus minima aperiam doloremque maiores. Delectus quidem nisi fuga sunt voluptas ducimus. Neque eligendi perferendis est et.', '2010-11-20 22:00:00', '1990-09-08 21:00:00'),
(57, 29, 'Quia praesentium non sed qui earum quis. Deleniti necessitatibus ipsum sed dolor placeat. Voluptas dolorem minus veniam cupiditate quas voluptate.', '1990-11-13 22:00:00', '1992-10-25 22:00:00'),
(58, 30, 'Rerum tempora possimus minus id laboriosam. Libero occaecati maiores natus suscipit. Alias perferendis omnis voluptas.', '2011-09-17 21:00:00', '2015-07-24 21:00:00'),
(59, 31, 'Fuga labore quibusdam ipsum eaque fugit. Ut ut sed et qui autem aut eos. Et aut unde nam voluptatibus quia doloribus ex nihil.', '1975-02-04 22:00:00', '1985-12-26 22:00:00'),
(60, 32, 'Fugit fugit tempora mollitia aut suscipit. Culpa optio est incidunt praesentium temporibus est dicta. Quod est tenetur quisquam aut. Est ut beatae et dolorem accusamus odio vitae.', '2016-10-22 21:00:00', '1985-04-19 21:00:00'),
(61, 33, 'Omnis fugiat voluptas minus ab. Sit laborum atque nostrum impedit. Possimus exercitationem iusto est ullam corporis. Qui eum dolorem iusto.', '1974-06-25 21:00:00', '1970-07-16 21:00:00'),
(62, 34, 'Atque enim dolorem doloremque quaerat ut mollitia aperiam ipsam. Atque corporis ut et enim enim. Dicta quis in mollitia et quisquam.', '2019-03-29 22:00:00', '1997-05-12 21:00:00'),
(63, 35, 'Hic dolores iure adipisci provident fugiat harum quia reiciendis. Consequuntur quo aut soluta ullam quam quos officiis. Et quis quas voluptatem velit ipsa.', '2005-02-01 22:00:00', '1996-08-13 21:00:00'),
(64, 36, 'Sapiente libero facilis eum. Minus at sunt ut est at eos id. Rerum libero perspiciatis placeat. Nesciunt voluptas accusantium doloremque rerum.', '1972-03-03 22:00:00', '1972-05-24 21:00:00'),
(65, 37, 'Enim odio sed et aut totam ea. Repudiandae similique est officiis ratione. Nam illum ab natus quos illum similique laudantium. Non beatae et libero laborum rerum dolorem provident.', '1982-09-29 21:00:00', '2012-05-16 21:00:00'),
(66, 38, 'Qui est ut eligendi architecto. Eius enim alias consectetur rerum impedit fugit velit. Aut aliquam tempora fuga repellat ut soluta quis. Facere fugiat nisi veniam voluptatem.', '2000-08-08 21:00:00', '2007-12-05 22:00:00'),
(67, 39, 'Et nulla aliquam occaecati tempora quaerat repellendus. Vero aut sapiente sint molestias nobis saepe hic. Est minima perferendis autem mollitia velit dolorum aut.', '2006-06-21 21:00:00', '2016-01-19 22:00:00'),
(68, 40, 'Nulla labore sunt in nihil dolores recusandae ut. Nobis possimus repudiandae quasi quidem beatae tempore. Perferendis esse optio et qui.', '1981-01-07 22:00:00', '1979-04-06 21:00:00'),
(69, 41, 'Possimus eos delectus ipsum corrupti. Deleniti accusantium omnis neque possimus odit ullam optio. Et id qui soluta doloribus dolor non doloribus expedita. Placeat voluptas dolore asperiores dicta.', '2014-11-23 22:00:00', '1983-03-03 22:00:00'),
(70, 42, 'Odio corporis facilis voluptatum magni inventore dicta. Impedit sunt fugiat architecto rerum nostrum. Excepturi voluptates enim quas nulla dicta illo. Maiores laboriosam est voluptatem voluptate.', '1977-10-15 21:00:00', '2014-09-15 21:00:00'),
(71, 43, 'Voluptatibus a ut similique enim ut. Nulla quaerat enim praesentium nulla. Enim doloribus beatae et vel ratione et. Possimus impedit enim earum rerum harum eius iusto.', '2016-09-25 21:00:00', '1991-06-28 21:00:00'),
(72, 44, 'Porro sed aut repudiandae aut. Nesciunt optio eum non qui saepe facilis suscipit recusandae.', '1983-11-25 22:00:00', '1988-10-07 21:00:00'),
(73, 1, 'sdfsdfsdfsdf sdf sdfsdfsdfsd', '2019-10-07 08:57:37', '2019-10-07 08:57:37'),
(74, 1, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '2019-10-07 09:04:15', '2019-10-07 09:04:15'),
(75, 1, 'Лорем Лорем Лорем Лорем', '2019-10-07 09:40:15', '2019-10-07 09:40:15'),
(76, 1, 'пвапвап вапвапвапв впвапвап', '2019-10-07 09:41:35', '2019-10-07 09:41:35'),
(77, 1, 'repudiandae aut. Nesciunt optio eum non qui saepe facilis', '2019-10-07 09:46:03', '2019-10-07 09:46:03'),
(78, 1, 'AAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCC', '2019-10-07 09:59:17', '2019-10-07 09:59:17'),
(79, 1, 'AAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCC', '2019-10-07 09:59:31', '2019-10-07 09:59:31'),
(80, 1, 'fghfggfh fgh fghfghfg gfh gfhfgh', '2019-10-07 10:00:02', '2019-10-07 10:00:02'),
(81, 1, '$request->validate([\r\n            \'comment\' => \'required|min:20\'\r\n        ]);$request->validate([\r\n            \'comment\' => \'required|min:20\'\r\n        ]);', '2019-10-07 10:02:03', '2019-10-07 10:02:03'),
(82, 1, 'use App\\User;\r\nuse App\\User;\r\nuse App\\User;', '2019-10-07 10:02:41', '2019-10-07 10:02:41'),
(83, 1, 'BBBBBBBBBBBBBBCCCCCCCCCCBBBBBBBBBBBBBBCCCCCCCCCC', '2019-10-07 10:04:24', '2019-10-07 10:04:24'),
(84, 1, 'BBBBBBBBBBBBBBCCCCCCCCCC', '2019-10-07 10:04:30', '2019-10-07 10:04:30'),
(85, 1, 'use Illuminate\\Support\\Facades\\Auth;\r\nuse Illuminate\\Support\\Facades\\Auth;', '2019-10-07 10:04:55', '2019-10-07 10:04:55'),
(86, 1, 'sdfsdfdsfd   dfsfsfsdds sdfsdfsdfsdf  sdffsf', '2019-10-07 10:19:59', '2019-10-07 10:19:59'),
(87, 1, '12345678901234567890', '2019-10-07 10:20:17', '2019-10-07 10:20:17'),
(88, 1, 'sdfsdfs sdfsdf comment_add_success', '2019-10-07 10:21:25', '2019-10-07 10:21:25'),
(89, 1, 'sdfsdfss sdfsdfsd sdf sdf sdf', '2019-10-07 10:26:35', '2019-10-07 10:26:35');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_06_200326_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guest',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/no-image.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Александр Виденчук', 'sentens@ukr.net', NULL, '$2y$10$1uRgNi02iDA8jhDn40Y2j.CFuBT52O9ExiTxYpqX2.EiCQvVrP34i', 'admin', 'img/no-image.jpg', NULL, '2019-10-07 06:52:00', '2019-10-07 06:52:00'),
(2, 'Иванов Иван', 'ivanov@ivan.com', NULL, '$2y$10$95rUZu.g8NRHR9vFL8IeM.rTNti4IJL4Wb1vEzYpMhxTp0Aim8I.a', 'guest', 'img/no-image.jpg', NULL, '2019-10-06 19:37:26', '2019-10-06 19:37:26'),
(25, 'Evans Ullrich IV', 'wilburn06@example.com', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'Du54UmT8V5', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(26, 'Corbin Grimes', 'qmertz@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'DTICSXoeio', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(27, 'Natalie Rice', 'qshanahan@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', '3tcIzmyv4L', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(28, 'Prof. Ivory Tremblay', 'tremblay.roy@example.org', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', '2HqND1EpAF', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(29, 'Jay Batz', 'felton.dare@example.org', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'RHIGFpm3hb', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(30, 'Ms. Julianne Marks', 'athena37@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'os1K51mVlr', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(31, 'Kyra Reinger I', 'conn.carlo@example.com', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'CG25V3zWZR', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(32, 'Layla Jacobs', 'satterfield.katlyn@example.org', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'wrH0OUHEb9', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(33, 'Maximillia Goodwin', 'sydnie.kunde@example.com', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'mAzWpUkuww', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(34, 'Garth Kris', 'merl.bednar@example.com', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'LSsEIm2edG', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(35, 'Albina Kunde', 'btoy@example.com', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'ce8xz2Yv5F', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(36, 'Prof. Dave Cummings III', 'bradly89@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'SqpA5MdTXl', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(37, 'Merritt Sporer', 'bahringer.thaddeus@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'DUZjlaRuYF', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(38, 'Mr. Edwin Fritsch', 'xbalistreri@example.org', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'D58w8OJxVv', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(39, 'Domenick Hodkiewicz', 'okon.hilma@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'fsaKLi0Brj', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(40, 'Jonas Buckridge', 'hilma.renner@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', '5NeQvjO8Za', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(41, 'Mr. Eriberto Prohaska DDS', 'mertz.albina@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'qCLj8s8HuX', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(42, 'Elfrieda Lind', 'strosin.cassandra@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'BbES42wlkS', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(43, 'Mack Roberts', 'dlarson@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'YtQNgRYVFU', '2019-10-07 06:53:47', '2019-10-07 06:53:47'),
(44, 'Anderson Nolan', 'imcglynn@example.net', '2019-10-07 06:53:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'img/no-image.jpg', 'CaDPI1ZGd1', '2019-10-07 06:53:47', '2019-10-07 06:53:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
