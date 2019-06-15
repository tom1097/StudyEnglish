-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 09, 2019 lúc 06:28 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `study_english`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_05_062435_create_courses_table', 1),
(4, '2019_05_05_063221_create_videos_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new_word`
--

CREATE TABLE `new_word` (
  `id` int(11) NOT NULL,
  `word` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('N','Adj','Adv','V') COLLATE utf8_unicode_ci DEFAULT NULL,
  `meaning` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `source_video` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `speaking` text COLLATE utf8_unicode_ci NOT NULL,
  `speaking_video` text COLLATE utf8_unicode_ci NOT NULL,
  `pronunciation` text COLLATE utf8_unicode_ci NOT NULL,
  `pronunciation_script` text COLLATE utf8_unicode_ci NOT NULL,
  `conversation` text COLLATE utf8_unicode_ci NOT NULL,
  `writing` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `source_video`, `title`, `summary`, `speaking`, `speaking_video`, `pronunciation`, `pronunciation_script`, `conversation`, `writing`) VALUES
(1, '<iframe src=\"https://learningenglish.voanews.com/embed/player/0/3620702.html?type=video\" frameborder=\"0\" scrolling=\"no\" allowfullscreen></iframe>', 'It’s Unbelievable!', 'Anna sees an ad for a hair product on television. Her friend Pete is in the ad, so she believes that the product is a good one. She learns that she cannot believe everything she sees in television ads.', 'In this video, learn how to say the new words. Then learn about using negative prefixes with adjectives.​', '<iframe src=\"https://learningenglish.voanews.com/embed/player/0/3620698.html?type=video\" frameborder=\"0\" scrolling=\"no\" width=\"100%\" height=\"100%\" allowfullscreen></iframe>', 'Use this video to learn about the pronunciation of the words \"comfortable\" and \"uncomfortable.\"', '<iframe src=\"https://learningenglish.voanews.com/embed/player/0/3620666.html?type=audio\" frameborder=\"0\" scrolling=\"no\" width=\"100%\" allowfullscreen></iframe>', '<br/>Anna: Hello! Winter weather in Washington, D.C. can be really windy. And wind messes up my hair. It is really windy today. Look at my hair. Will it be windy this weekend? I’ll listen to the news. I am tired of my untidy hair.\r\n<br/>Pete: Are you tired of your untidy hair?\r\n<br/>Anna: Yes. Yes, I am. And it’s … uncomfortable.\r\n<br/>Pete: Is it … uncomfortable?\r\n<br/>Anna: Yes. Yes, it is! Hey, is that … Pete?\r\n<br/>Pete: Hi. I’m Pete. And I have the perfect product for you -- Hair Be Good!\r\n<br/>Pete: Just spray Hair Be Good on your hair … wrap in a towel … and you are done! Hair Be Good works and it’s inexpensive. One can costs only $10! So, go online and order your Hair Be Good today!\r\n<br/>Anna: Hair Be Good sounds perfect! And I can trust Pete! I am buying some right now. Okay, I will order one can of Hair Be Good for $10. I’ll pay with a credit card. My delivery will arrive in 2 days. Awesome!\r\n<br/>Anna: It arrived! I\'ll use it before I go to work. Okay, Hair Be Good, make my untidy hair tidy! No, make it … fabulous!\r\n<br/>Amelia: Hi, Anna.\r\n<br/>Anna: Hello, Amelia!\r\n<br/>Amelia: Anna, you look … different.\r\n<br/>Anna: Thanks! I used a new product called Hair Be Good.\r\n<br/>Amelia: Well, it’s not.\r\n<br/>Anna: It’s not what?\r\n<br/>Amelia: Good. Your hair does not look good.\r\n<br/>Anna: Oh, no! This is not good.\r\n<br/>Amelia: Why don’t you go home and take care of … this.\r\n<br/>Anna: Good idea.\r\n<br/>Pete: Hi, Anna!\r\n<br/>Anna: Hello, Pete.\r\n<br/>Pete: Is something wrong?\r\n<br/>Anna: This is wrong!\r\n<br/>Pete: What did you do to your hair?\r\n<br/>Anna: Hair Be Good did this to my hair.\r\n<br/>Pete: Ah, you bought it!\r\n<br/>Anna: Yes, I bought it. You said in your ad it was a perfect product. This is not perfect. This is imperfect!\r\n<br/>Pete: It’s unbelievable!\r\n<br/>Anna: I believed your ad, Pete. It was dishonest!\r\n<br/>Pete: Anna, you don’t believe everything you see in ads, do you?\r\n<br/>Anna: No, Pete. Just the ones with my friends.\r\n<br/>Pete: Your hair will be okay. Just wash it ... a couple of times.\r\n<br/>Anna: Thanks. Thanks a lot, Pete! Here, here\'s your product! You should call it \"Hair Be Really <br/>Bad!\" Until next time, Pete! Till next time.', 'In this lesson, Anna believed an ad she saw on television. It was not a good decision. Do you believe the ads you see on television? Why or why not? Write to us by email or in the Comments section.'),
(2, '<iframe src=\"https://learningenglish.voanews.com/embed/player/0/3616524.html?type=video\" frameborder=\"0\" scrolling=\"no\" width=\"100%\" height=\"100%\" allowfullscreen></iframe>', 'She\'s My Best Friend!', 'In this lesson, Anna\'s best friend from her hometown, Penelope, visits Washington, D.C. Anna tells Penelope about her friends and her job. Is Penelope going to make a change in her life?\r\n\r\n', 'In this video, learn how to say the new words for this lesson and the rules of making superlative adjectives.', '<iframe src=\"https://learningenglish.voanews.com/embed/player/0/3616508.html?type=video\" frameborder=\"0\" scrolling=\"no\" width=\"100%\" height=\"100%\" allowfullscreen></iframe>', 'Use this video to learn about stressing the superlative adjectives in a sentence.', '<iframe src=\"https://learningenglish.voanews.com/embed/player/0/3616502.html?type=video\" frameborder=\"0\" scrolling=\"no\" width=\"100%\" height=\"100%\" allowfullscreen></iframe>', 'Anna<br/>: Hello! I have great news. My best friend from my hometown is coming here -- to Washington, D.C.! I can’t wait to catch up with her! Oh! I gotta go. Her train arrives in 10 minutes!\r\n<br/>Anna: Penelope!\r\n<br/>Penelope: Anna! I am really happy to see you!\r\n<br/>Anna: Me too! How was your trip?\r\n<br/>Penelope: It was fine.\r\n<br/>Anna: Let me help you with your bags.\r\n<br/>Penelope: I’m really excited to be in Washington, D.C.! I can’t wait to hear about … everything!\r\n<br/>Anna: I have so much to tell you. Let’s go to my apartment. We can talk over a hot cup of tea.\r\n<br/>Penelope: I love your apartment building, Anna. Is your rent expensive?\r\n<br/>Anna: Well, I have a roommate. So, we split the rent.\r\n<br/>Penelope: Oh, that’s right. Is your roommate nice?\r\n<br/>Anna: Marsha is the nicest person I know in this city. Sometimes she worries too much. And she says I’m the messiest cook she knows. But we are great roommates.\r\n<br/>Penelope: So, Anna, is it hard to make friends in D.C.?\r\n<br/>Anna: At first it was hard. But now, Marsha is a good friend. And there’s Pete. Of all the people I know in D.C., Pete is the most serious and also the silliest.\r\n<br/>Penelope: He sounds … interesting.\r\n<br/>Anna: Jonathan and Ashley are two other good friends of mine. In the city, they are the friendliest people I know. They always help me when I need it.\r\n<br/>Penelope: Your friends sound great! So, tell me about your job.\r\n<br/>Anna: I love my work! I make a children’s show called the “Time Traveling Treehouse.”\r\nPenelope: Anna, that is the best job for you! Do you remember when we were little? We played in that old treehouse behind my family’s house for hours!\r\n<br/>Anna: I forgot about that! We thought it really time traveled! Penelope, it is really good to talk to you. New friends are good. But old friends are the best.\r\n<br/>Penelope: I know. Our hometown isn’t the same now. You are not there.\r\n<br/>Anna: No crying. Why don\'t you move here and live with me and Marsha?\r\n<br/>Penelope: Anna, I can’t leave our hometown. You forget -- I love my job, too.\r\n<br/>Anna: I didn’t forget. You are the most famous turkey farmer I know!\r\n<br/>Penelope: Thanks, Anna.\r\n<br/>Anna: Come on. Let’s go eat dinner at one of D.C.’s most famous restaurants.\r\n<br/>Penelope: Awesome!\r\n<br/>Anna: That’s the restaurant, Penelope. I’ll be right there.\r\n<br/>Anna: I have a great apartment. I love my work. And I have awesome friends -- both old and new. I am the luckiest woman in Washington, D.C.\r\n(sound of thunder)\r\n<br/>Anna: Until next time ?', 'Who is the most important person in your life? They can be a family member or a friend. Tell us about them using some superlative adjectives like nicest, silliest, the most _____ and so on. Write to us by email or in the Comments section.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_newword`
--

CREATE TABLE `video_newword` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `new_word`
--
ALTER TABLE `new_word`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video_newword`
--
ALTER TABLE `video_newword`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `new_word`
--
ALTER TABLE `new_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `video_newword`
--
ALTER TABLE `video_newword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
