-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 15, 2019 lúc 06:44 PM
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

--
-- Đang đổ dữ liệu cho bảng `new_word`
--

INSERT INTO `new_word` (`id`, `word`, `type`, `meaning`) VALUES
(1, 'untidy ', 'Adj', 'không gọn gàng'),
(2, 'uncomfortable', 'Adj', 'khó chịu'),
(3, 'product ', 'N', 'sản phẩm'),
(4, 'spray ', 'V', 'Xịt nước'),
(5, 'wrap ', 'V', 'bọc'),
(6, 'towel ', 'V', 'khăn tắm\r\n'),
(7, 'inexpensive', 'Adj', 'không tốn kém\r\n'),
(8, 'order ', 'N', 'gọi món'),
(9, 'fabulous', 'Adj', 'tuyệt vời\r\n'),
(10, 'imperfect', 'Adj', 'không hoàn hảo\r\n'),
(11, 'dishonest', 'Adj', 'Không trung thực\r\n'),
(12, 'best', 'Adj', 'better than all others in quality or value'),
(13, 'Chesapeake Bay', 'N', 'an inlet of the Atlantic, in Maryland and Virginia. It is 200 miles (or 320 km) long; and from 4–40 miles (or 6–64 km) wide.'),
(14, 'corn-on-the-cob', 'N', 'corn when cooked and eaten straight from the cob - the part of corn that the kernels grow on; an ear of corn'),
(15, 'crab ', 'N', 'a sea animal that has a hard shell, eight legs, and two large claws'),
(16, 'money ', 'N', 'something (such as coins or bills) used as a way to pay for goods and services and to pay people for their work'),
(17, 'oldest ', 'Adj', 'having the highest age of a group'),
(18, 'seafood ', 'N', 'fish and shellfish that live in the ocean and are used for food'),
(19, 'spend ', 'V', 'to use money to pay for something'),
(20, 'pound ', 'N', 'a unit of weight that is equal to 16 ounces or about a half of a kilogram');

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
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source_video` text COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `speaking` text COLLATE utf8_unicode_ci NOT NULL,
  `speaking_video` text COLLATE utf8_unicode_ci NOT NULL,
  `pronunciation` text COLLATE utf8_unicode_ci NOT NULL,
  `pronunciation_video` text COLLATE utf8_unicode_ci NOT NULL,
  `conversation` text COLLATE utf8_unicode_ci NOT NULL,
  `conversation_script` text COLLATE utf8_unicode_ci NOT NULL,
  `writing` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `title`, `source_video`, `summary`, `speaking`, `speaking_video`, `pronunciation`, `pronunciation_video`, `conversation`, `conversation_script`, `writing`, `img`) VALUES
(1, 'It’s Unbelievable!', 'https://learningenglish.voanews.com/embed/player/0/3620702.html?type=video', 'Anna sees an ad for a hair product on television. Her friend Pete is in the ad, so she believes that the product is a good one. She learns that she cannot believe everything she sees in television ads.', 'In this video, learn how to say the new words. Then learn about using negative prefixes with adjectives.​', 'https://learningenglish.voanews.com/embed/player/0/3620698.html?type=video', 'Use this video to learn about the pronunciation of the words \"comfortable\" and \"uncomfortable.\"', 'https://learningenglish.voanews.com/embed/player/0/3655618.html?type=video', '<br/>Anna: Hello! Winter weather in Washington, D.C. can be really windy. And wind messes up my hair. It is really windy today. Look at my hair. Will it be windy this weekend? I’ll listen to the news. I am tired of my untidy hair.\r\n<br/>Pete: Are you tired of your untidy hair?\r\n<br/>Anna: Yes. Yes, I am. And it’s … uncomfortable.\r\n<br/>Pete: Is it … uncomfortable?\r\n<br/>Anna: Yes. Yes, it is! Hey, is that … Pete?\r\n<br/>Pete: Hi. I’m Pete. And I have the perfect product for you -- Hair Be Good!\r\n<br/>Pete: Just spray Hair Be Good on your hair … wrap in a towel … and you are done! Hair Be Good works and it’s inexpensive. One can costs only $10! So, go online and order your Hair Be Good today!\r\n<br/>Anna: Hair Be Good sounds perfect! And I can trust Pete! I am buying some right now. Okay, I will order one can of Hair Be Good for $10. I’ll pay with a credit card. My delivery will arrive in 2 days. Awesome!\r\n<br/>Anna: It arrived! I\'ll use it before I go to work. Okay, Hair Be Good, make my untidy hair tidy! No, make it … fabulous!\r\n<br/>Amelia: Hi, Anna.\r\n<br/>Anna: Hello, Amelia!\r\n<br/>Amelia: Anna, you look … different.\r\n<br/>Anna: Thanks! I used a new product called Hair Be Good.\r\n<br/>Amelia: Well, it’s not.\r\n<br/>Anna: It’s not what?\r\n<br/>Amelia: Good. Your hair does not look good.\r\n<br/>Anna: Oh, no! This is not good.\r\n<br/>Amelia: Why don’t you go home and take care of … this.\r\n<br/>Anna: Good idea.\r\n<br/>Pete: Hi, Anna!\r\n<br/>Anna: Hello, Pete.\r\n<br/>Pete: Is something wrong?\r\n<br/>Anna: This is wrong!\r\n<br/>Pete: What did you do to your hair?\r\n<br/>Anna: Hair Be Good did this to my hair.\r\n<br/>Pete: Ah, you bought it!\r\n<br/>Anna: Yes, I bought it. You said in your ad it was a perfect product. This is not perfect. This is imperfect!\r\n<br/>Pete: It’s unbelievable!\r\n<br/>Anna: I believed your ad, Pete. It was dishonest!\r\n<br/>Pete: Anna, you don’t believe everything you see in ads, do you?\r\n<br/>Anna: No, Pete. Just the ones with my friends.\r\n<br/>Pete: Your hair will be okay. Just wash it ... a couple of times.\r\n<br/>Anna: Thanks. Thanks a lot, Pete! Here, here\'s your product! You should call it \"Hair Be Really <br/>Bad!\" Until next time, Pete! Till next time.', 'https://learningenglish.voanews.com/embed/player/0/3620666.html?type=audio', 'In this lesson, Anna believed an ad she saw on television. It was not a good decision. Do you believe the ads you see on television? Why or why not? Write to us by email or in the Comments section.', 'https://gdb.voanews.com/73559C96-F93D-444A-BCF2-C4538A65A474_cx20_cy15_cw59_w144_r1.jpg'),
(2, 'She\'s My Best Friend!', 'https://learningenglish.voanews.com/embed/player/0/3616524.html?type=video', 'In this lesson, Anna\'s best friend from her hometown, Penelope, visits Washington, D.C. Anna tells Penelope about her friends and her job. Is Penelope going to make a change in her life?\r\n\r\n', 'In this video, learn how to say the new words for this lesson and the rules of making superlative adjectives.', 'https://learningenglish.voanews.com/embed/player/0/3616508.html?type=video', 'Use this video to learn about stressing the superlative adjectives in a sentence.', 'https://learningenglish.voanews.com/embed/player/0/3655618.html?type=video', 'Anna<br/>: Hello! I have great news. My best friend from my hometown is coming here -- to Washington, D.C.! I can’t wait to catch up with her! Oh! I gotta go. Her train arrives in 10 minutes!\r\n<br/>Anna: Penelope!\r\n<br/>Penelope: Anna! I am really happy to see you!\r\n<br/>Anna: Me too! How was your trip?\r\n<br/>Penelope: It was fine.\r\n<br/>Anna: Let me help you with your bags.\r\n<br/>Penelope: I’m really excited to be in Washington, D.C.! I can’t wait to hear about … everything!\r\n<br/>Anna: I have so much to tell you. Let’s go to my apartment. We can talk over a hot cup of tea.\r\n<br/>Penelope: I love your apartment building, Anna. Is your rent expensive?\r\n<br/>Anna: Well, I have a roommate. So, we split the rent.\r\n<br/>Penelope: Oh, that’s right. Is your roommate nice?\r\n<br/>Anna: Marsha is the nicest person I know in this city. Sometimes she worries too much. And she says I’m the messiest cook she knows. But we are great roommates.\r\n<br/>Penelope: So, Anna, is it hard to make friends in D.C.?\r\n<br/>Anna: At first it was hard. But now, Marsha is a good friend. And there’s Pete. Of all the people I know in D.C., Pete is the most serious and also the silliest.\r\n<br/>Penelope: He sounds … interesting.\r\n<br/>Anna: Jonathan and Ashley are two other good friends of mine. In the city, they are the friendliest people I know. They always help me when I need it.\r\n<br/>Penelope: Your friends sound great! So, tell me about your job.\r\n<br/>Anna: I love my work! I make a children’s show called the “Time Traveling Treehouse.”\r\nPenelope: Anna, that is the best job for you! Do you remember when we were little? We played in that old treehouse behind my family’s house for hours!\r\n<br/>Anna: I forgot about that! We thought it really time traveled! Penelope, it is really good to talk to you. New friends are good. But old friends are the best.\r\n<br/>Penelope: I know. Our hometown isn’t the same now. You are not there.\r\n<br/>Anna: No crying. Why don\'t you move here and live with me and Marsha?\r\n<br/>Penelope: Anna, I can’t leave our hometown. You forget -- I love my job, too.\r\n<br/>Anna: I didn’t forget. You are the most famous turkey farmer I know!\r\n<br/>Penelope: Thanks, Anna.\r\n<br/>Anna: Come on. Let’s go eat dinner at one of D.C.’s most famous restaurants.\r\n<br/>Penelope: Awesome!\r\n<br/>Anna: That’s the restaurant, Penelope. I’ll be right there.\r\n<br/>Anna: I have a great apartment. I love my work. And I have awesome friends -- both old and new. I am the luckiest woman in Washington, D.C.\r\n(sound of thunder)\r\n<br/>Anna: Until next time ?', 'https://learningenglish.voanews.com/embed/player/0/3616502.html?type=video', 'Who is the most important person in your life? They can be a family member or a friend. Tell us about them using some superlative adjectives like nicest, silliest, the most _____ and so on. Write to us by email or in the Comments section.', 'https://gdb.voanews.com/fcccbc6e-6130-4fb0-ad40-537c63a7404a_tv_w144_r1.jpg'),
(3, 'Let\'s Agree to Disagree', 'https://learningenglish.voanews.com/embed/player/0/3601302.html?type=video', 'In this lesson, Anna meets a new friend. Phil is new to Washington, D.C. and he feels lost in the city. Anna asks him to make the city a friendlier place.', 'Use this video to earn the new words for this lesson. Then, learn how to give a reason when you say your opinion.', 'https://learningenglish.voanews.com/embed/player/0/3601209.html?type=video', 'Use this video to learn how to pronounce possessive pronouns.', 'https://learningenglish.voanews.com/embed/player/0/3655618.html?type=video', '<br/>Anna: You know, I am from the country and sometimes I miss it. But I really like life in the city! I love the city. Oh, look. Someone lost a bag. Maybe it\'s theirs. Excuse me. Is this bag yours?\r\nDr. Jill: No. It\'s not mine. It might be hers.\r\n<br/>Anna: Excuse me. Is this bag yours?\r\nSarah: No. It\'s not mine. It might be his.\r\n<br/>Anna: Thank you. Hello. Is this bag yours?\r\n<br/>Phil: Yes, that\'s mine. These are all my travel things. Thank you, thank you!\r\n<br/>Anna: Are you okay? You seem ... nervous.\r\n<br/>Phil: Well, this is my first visit to Washington, D.C. I\'m from a small town in the country. I feel a little lost.\r\n<br/>Anna: I am from the country too! And I understand. When I first came here, I felt lost ... all the time.\r\n<br/>Phil: So, do you like living in the country or in the city?\r\n<br/>Anna: I like to live in the city.\r\n<br/>Phil: Why?\r\n<br/>Anna: The city is exciting! It has more culture than the country. There are many museums and restaurants. Every night, there is theater and music. And, there are more jobs. That is why I\'m here.\r\n<br/>Phil: Well, I agree. There is more culture in the city and there might be more jobs. But the country has more nature! It\'s peaceful and beautiful. There are more trees and mountains. The air is clean. You can go hiking and camping. The city is not beautiful. It\'s noisy and dirty.\r\n<br/>Anna: I disagree. I think all the different buildings are beautiful. And I like to watch all the different people.\r\n<br/>Phil: That\'s another thing that is different. People in the country are friendly. They always say \"hello!\" Here, no one says \"hello.\" I think city people are rude.\r\n<br/>Anna: Well, I agree. Country people are friendly. But I don\'t think city people are rude. I think they\'re just busy.\r\n<br/>Phil: That\'s a good point.\r\n<br/>Anna: Look at me. I live in the city and I said \"hello\" to you.\r\n<br/>Phil: But you are from the country.\r\n<br/>Anna: I have an idea. Let\'s say \"hello!\" to people -- to many people!\r\n<br/>Phil: What? Why?\r\n<br/>Anna: Well, if we say \"hello,\" maybe they will say \"hello\" to other people ... Hello!\r\n<br/>Phil: ... and they will say \"hello\" to more people! That\'s a great idea! I\'m glad you found my bag.\r\n<br/>Anna: Come on. Let\'s go say \"hello\" to people.\r\n<br/>Anna: We don\'t have to agree with people. They have their opinions. We have ours. And as we like to say, you can always agree to disagree! Until next time...! Hello!', 'https://learningenglish.voanews.com/embed/player/0/3601212.html?type=video', 'What is the best place to live? Tell us about where you live now or where you want to live. Be sure you give a reason for your opinion. Write to us by email or in the Comments section.', 'https://gdb.voanews.com/E6F0D328-A9A5-4C1A-BD9D-F061BF702042_w144_r1.png'),
(4, 'The Woods Are Alive', 'https://learningenglish.voanews.com/embed/player/0/3656890.html?type=video', 'Anna\'s New Year’s Resolution is to try something new. She auditions for a play. Will she get the part?', 'In this video, learn how to say the new words. Then learn about asking for and giving feedback.', 'https://learningenglish.voanews.com/embed/player/0/3655703.html?type=video', 'Use this video to learn about projecting when public speaking. Learn one way to make your voice sound more confident when you speak to a group.', 'https://learningenglish.voanews.com/embed/player/0/3655618.html?type=video', '<br/>Anna: Happy New Year! Some people, at the start of a new year, make a resolution -- a promise to yourself to be better. I thought about my resolution carefully. I want to be an actor on the stage! Today I will audition for a show called \"The Woods Are Alive!\" Wish me luck!\r\n<br/>Director: Next! What is your name?<br/>\r\nAnna: My name is Anna Matteo.<br/>\r\nDirector: Are you ready to audition?<br/>\r\nAnna: (warms up voice) Yes.<br/>\r\nDirector: Great. Let\'s begin on page 1. Here is the story. You are lost in the woods. You are searching desperately for a way out. Suddenly, you hear something.<br/>\r\nDirector: Now, say your line.<br/>\r\nAnna: \'What was that? Hello. Is someone there?\'<br/>\r\nDirector: Anna, you are speaking too softly. Can you speak more loudly and a little more, um, seriously?<br/>\r\nAnna: Yes, of course I can. \'What was that? Hello. Is someone there?\' Is that loud enough?<br/>\r\nDirector: Yes, that is loud enough. Let\'s turn to page 25. In this scene, you are moving slowly and quietly through the woods.<br/>\r\nDirector: Anna. Anna! You are walking quickly and loudly. Walk slowly and quietly.<br/>\r\nAnna: I\'m walking slowly and quietly. I am walking…<br/>\r\nDirector: Anna. Anna. You don\'t need to say \"slowly\" and \"quietly.\" Alright, let\'s try the last scene. Turn to page 48. I say my line first, then you say your line.<br/>\r\nDirector: \'You will never get out of these woods alive! Mwa-ha-ha-ha-ha Mwa-ha-ha-ha-ha!\'\r\nAnna: \'Yes, I will.\'<br/>\r\nDirector: Okay, Anna, you said that line -- you said that line really late. You need to say it earlier.<br/>\r\nAnna: Sorry. Sorry. Let me try again.<br/>\r\nDirector: \'You will never …\'<br/>\r\nAnna: \'Yes, I will.\'<br/>\r\nDirector: \'… get out of the woods alive.\'<br/>\r\nAnna: I was too early, wasn\'t I?<br/>\r\nDirector: Yes. Yes, you were.<br/>\r\nAnna: Director, how am I doing?<br/>\r\nDirector: You know, Anna. I think that I have the perfect part for you.\r\nDirector: The costume is in the back. Please go try it on.<br/>\r\nAnna: Awesome! (Anna returns as a tree.)<br/>\r\nDirector: Oh, Anna, that fits you perfectly!<br/>\r\nAnna: I\'m a tree. I\'m a tree in … \"The Woods Are Alive!\" Yes!\r\nAnna: My new year is starting awesomely! Excuse me, Director! I have a great idea for my tree. Oh, wait! Until next time!<br/>', 'https://learningenglish.voanews.com/embed/player/0/3655904.html?type=audio', 'In this lesson, Anna tries something new. What new activity do you want to try in 2017? Why do you want to do it? Write to us by email or in the Comments section.\r\n', 'https://gdb.voanews.com/08f45af8-01ba-4a6f-8eff-7a8c7b7f365c_tv_w144_r1.jpg'),
(5, 'Take Me Out to the Ball Game', 'https://learningenglish.voanews.com/embed/player/0/3539918.html?type=video', 'Anna wants to go to see a baseball game. The question is: what is the fastest way for her to get there? Her friends Jonathan and Ashley give her advice.', 'In this video, learn to say the new words for this lesson. You can also learn about ​comparative adjectives like \"faster,\" and superlative adjectives like \"fastest.\"\r\n\r\n', 'https://learningenglish.voanews.com/embed/player/0/3539912.html?type=video', 'Use this video to learn about pronouncing \"than\" in sentences with comparative adjectives.', 'https://learningenglish.voanews.com/embed/player/0/3538221.html?type=video', 'Anna: Hi, there, sports fans! Baseball is America’s sport. Today, I am going to Nationals Park. It is home to Washington, D.C.’s baseball team -- the Washington Nationals! <br/>\r\nAnna: Hi, Jonathan!<br/>\r\nJonathan: Hi, Anna! Where are you going?<br/>\r\nAnna: I am taking a bus to a Nationals baseball game!<br/>\r\nJonathan: Don’t take the bus. A taxi is faster than a bus.<br/>\r\nAnna: Oh, good idea. You know I love baseball.<br/>\r\nJonathan: That’s great. Have fun.<br/>\r\nAnna: In fact, I wanted to be a baseball player.<br/>\r\nJonathan: Is this one of your memories? I’m really busy.<br/>\r\nAnna: This won’t take long. I can see it now... I am at home plate. I wait for the pitch. The ball comes. I swing. It’s a hit!<br/> I run to first base, second base, third base, then home plate. It’s a home run! The crowd cheers! Woo hoo!\r\nJonathan: You really love baseball. Have fun at the game, Anna.\r\nAnna: Thanks, Jonathan.Taxi!<br/>\r\nAshley: Hi, Anna. Where are you going?<br/>\r\nAnna: Hi, Ashley. I am going to see a Nationals baseball game!<br/>\r\nAshley: What time is the game?<br/>\r\nAnna: 7 o’clock.<br/>\r\nAshley: Do you have a ticket?\r\nAnna: No, not yet.\r\nAshley: Anna, you should go a lot earlier than 7 o’clock.\r\nAnna: That is why I’m taking a taxi. Taxi!\r\nAshley: Anna, Anna, that’s not a good idea. A bicycle is faster than a taxi.\r\nAnna: Oh, Ashley. Ashley, Ashley, Ashley. A car is faster than your bicycle.\r\nAshley: In D.C. traffic sometimes a bicycle is faster than a car. And right now, there is a lot of traffic.\r\nAnna: Good point. But I don’t have a bicycle.\r\nAshley: Okay, Anna, you can use my bicycle.\r\nAnna: Thanks! I really want to learn how to ride one.\r\nAshley: What do you mean, learn how to ride a bike? Oh, Anna! Anna, Anna!\r\nAshley: You know, Anna, the Metro is faster than a taxi and a bicycle. You ought to take the Metro. It’s that way.\r\nAnna: Good idea.<br/>\r\nAshley: OK.<br/>\r\nAnna: See you later!<br/>\r\nAshley: Bye, Anna!<br/>\r\nAnna: Bye!<br/>\r\nAnna: The Metro was a lot faster than a bus, taxi or bike. And now I’m at Nationals Park! Look at all these fans! So many people like to watch baseball. There’s the ticket window. What? The tickets are sold out? Nooooooo!Nooooooo! But I really want to watch a baseball game. Does anyone have an extra ticket?<br/>\r\nFan: Next time, you should buy your ticket online.<br/>\r\nAnna: Thanks. Thanks a lot. It is good advice. Being early is better than being late. Until next time …<br/>', 'https://learningenglish.voanews.com/embed/player/0/3539896.html?type=audio', 'Do you like to watch sports? Where do you watch them? Write to tell us about a game you saw. Try to use some of the words from this lesson, like ticket, crowd, fans, and cheer. Write to us by email or in the Comments section.', 'https://gdb.voanews.com/559DE412-0283-452C-A317-BCE58CC6EF82_w408_r1.jpg'),
(6, 'Rolling on the River', 'https://learningenglish.voanews.com/embed/player/0/3527582.html?type=video', 'Anna plans to have a dinner party. She needs to buy seafood, so she goes to the waterfront. She gets a surprise at the fish market.', 'In this video, learn to say the new words for this lesson. You can also learn about how to use count and noncount nouns.', 'https://learningenglish.voanews.com/embed/player/0/3531669.html?type=video', 'Use this video to learn about the abbreviations for dozen and pounds.', 'https://learningenglish.voanews.com/embed/player/0/3531654.html?type=video', 'Anna: Hello! Washington, D.C. sits on the Potomac River. This river is important to the history and culture of the city. Today, I am at an outdoor seafood market near the Potomac River. Some say it is the oldest outdoor seafood market in the United States! I am here to buy seafood. Let’s see what they have!<br/>\r\nAnna: Excuse me. Can you help me?<br/>\r\nPete: Sure! What do you need?<br/>\r\nAnna: Pete!<br/>\r\nPete: Anna!<br/>\r\nAnna: What are you doing here?<br/>\r\nPete: I work here. You know, it’s not easy to be a writer.<br/>\r\nAnna: Yeah, I heard that. Sorry.<br/>\r\nPete: But this job is great. I work outside by the river. And I can eat all the free seafood I want!<br/>\r\nAnna: That is great, Pete. In fact, I am here to buy some seafood for my dinner party.<br/>\r\nPete: You came to the right place. They have the freshest seafood in town. How much money can you spend?<br/>\r\nAnna: I can only spend $50.<br/>\r\nPete: Okay. What do you want?<br/>\r\nAnna: First, I want to buy some shrimp.<br/>\r\nPete: Sure thing. Follow me. How much shrimp do you want?<br/>\r\nAnna: How much do I need for five people?<br/>\r\nPete: (yells to co-worker) Give her a pound of shrimp!<br/>\r\nAnna: Ok, now I want to buy some crabs.<br/>\r\nPete: The crabs here are delicious! They are the best because they come from the nearby Chesapeake Bay! Walk this way.<br/>\r\nPete: How many crabs do you want?<br/>\r\nAnna: I want a dozen crabs.<br/>\r\nPete: You should get the larger crabs. They have the most meat.<br/>\r\nAnna: Then I want a dozen large crabs, please!<br/>\r\nPete: Is that everything you need?<br/>\r\nAnna: Let’s see … I have shrimp and crabs. And a friend is bringing a salad and many ears of corn-on-the-cob.<br/>\r\nPete: Is that all the seafood that you need?<br/>\r\nAnna: Yes.<br/>\r\nPete: That’ll be $49.95. Cash or credit?<br/>\r\nAnna: Credit, please.<br/>\r\nPete: Anna, you love to eat seafood. Did you grow up on the water?<br/>\r\nAnna: No, I didn’t. But I love the water. And I love being on the water.<br/>\r\nPete: You know how to sail?<br/>\r\nAnna: Well … this afternoon I am going on a boat.<br/>\r\nPete: You are full of surprises. What kind of boat? Is it a motorboat or a sailboat?<br/>\r\nAnna: It’s a special boat, Pete. Well, thanks for your help. See you later!<br/>\r\nPete: See you, Anna! Wow, Anna’s a sailor! Who knew?<br/>\r\nAnna: Yes, rivers are important to the history and culture of Washington, D.C. And now I am part of this city’s interesting waterfront culture. Until next time!<br/>', 'https://learningenglish.voanews.com/embed/player/0/3527610.html?type=audio', 'Where do you buy fresh food? Is there a seafood or vegetable market near where you live? Tell us about it! Try to use some of the words from this lesson, like best, freshest, oldest, spend, money, and larger. Write to us by email or in the Comments section.', 'https://gdb.voanews.com/A74AA0CC-41C6-4445-83BC-67D616291EF3_w408_r1.jpg'),
(7, 'A Long Time Ago', 'https://learningenglish.voanews.com/embed/player/0/3510569.html?type=video', 'Anna and Marsha have a lot of work to do. An advertisement makes them remember their childhood dreams. What do you think they wanted to be?', 'In this video, learn to say the new words for this lesson. You can also learn about how to use adjectives.', 'https://learningenglish.voanews.com/embed/player/0/3511039.html?type=video', 'Use this video to learn about the noises English speakers make to show they are listening.', 'https://learningenglish.voanews.com/embed/player/0/3511052.html?type=video', 'Anna: Hello! In Washington, D.C., there are many places that bring history to life. But people who live here often do not have time to see them. They are too busy with work -- like me. Hi, Marsha!<br/>\r\nMarsha: Hi, Anna! Have a seat.<br/>\r\nAnna: Thanks. This was a good idea. Working outdoors is nice.<br/>\r\nMarsha: Um-hum, it is.<br/>\r\nAnna: I am tired. Today was a busy day at work. And I still have work to do!<br/>\r\nMarsha: Hmm, that’s too bad.<br/>\r\nAnna: How are you these days?<br/>\r\nMarsha: I\'m really busy too, Anna. Let’s get to work.<br/>\r\nAnna: Marsha, look! That bus has a photo of Abraham Lincoln!<br/>\r\nMarsha: That’s an advertisement for Ford’s Theatre. They have a new show.<br/>\r\nAnna: They have shows where Abraham Lincoln died?<br/>\r\nMarsha: Yeah, it’s a working theater and a museum.<br/>\r\nAnna: I love Lincoln. You know, Marsha, that advertisement reminds me of something.<br/>\r\nMarsha: Um-hum. What’s that?<br/>\r\nAnna: When I was a little girl … When I was a little girl … I was not like other children.<br/>\r\nMarsha: Um-hum, I can believe that.<br/>\r\nAnna\'s voice: I was tall, serious child. At the playground the other children played silly games. They played with dart guns. They played on the swings, the slide and the teeter-totter. They also played ball But not me. I loved to read serious books about U.S. presidents.<br/>\r\nAnna: In fact, I wanted to be … don’t laugh … President of the United States.\r\nMarsha: (laughs)<br/>\r\nAnna: Stop! I know it’s a silly childhood dream.<br/>\r\nMarsha: I’m sorry. It’s not silly. Guess what I wanted to be?<br/>\r\nAnna: What?<br/>\r\nMarsha: I wanted to be... an astronaut.<br/>\r\nAnna: Really?<br/>\r\nMarsha\'s Voice: When I was a kid, I studied the stars and planets. I wanted to fly into outer space!<br/>\r\nAnna: You know, Marsha, childhood dreams are really important.<br/>\r\nMarsha: They are. And it’s good to remember them.<br/>\r\nAnna: Hey! I have an idea. Let’s go.<br/>\r\nMarsha: Go where?<br/>\r\nAnna: Let’s go make our childhood dreams come true.<br/>\r\nMarsha: We’re going to the Air & Space Museum! Yes!<br/>\r\nAnna: No. We’re going to see a show at Ford’s Theatre just like Abraham Lincoln did when he died! It’s not far from here.<br/>\r\nMarsha: Uh huh. That is your childhood dream.<br/>\r\nAnna: Good point. Okay, next week, we\'ll come here and be astronauts.<br/>\r\nMarsha: Honestly?<br/>\r\nAnna: Honestly.<br/>\r\nAnna: Tonight we are seeing a show at Ford’s Theatre, where a man shot President Abraham Lincoln. This is history come to life … and a childhood dream come true! Until next time ...<br/>', 'https://learningenglish.voanews.com/embed/player/0/3510012.html?type=audio', 'In this lesson you learn about Anna and Marsha\'s childhood dreams. What was your childhood dream? What did you want to be? Write to us by email or in the Comments section.', 'https://gdb.voanews.com/8ED12298-E324-42BC-AA71-1E8E1E3E62EE_w408_r1.jpg'),
(8, 'I Passed It!', 'https://learningenglish.voanews.com/embed/player/0/3499371.html?type=video', 'Anna tells her roommate, Marsha, about the problems she had in her driving test. Then Anna says she wants to drive to a special place in Washington, D.C. Where will she drive?', 'Learn to pronounce the new words for this lesson. You can also learn about the imperative verb form.', 'https://learningenglish.voanews.com/embed/player/0/3497928.html?type=video', 'Use this video to learn about how people say \"well\" to give bad news, or an answer someone does not expect.', 'https://learningenglish.voanews.com/embed/player/0/3497853.html?type=video', 'Anna: Hello! Guess what this is? This is my driver’s license! I passed my driving test!<br/>\r\nToday, I rented a car so I can drive around Washington, D.C. You can see more of the city this way. Marsha!<br/>\r\nMarsha: Anna, did you get your driver’s license?<br/>\r\nAnna: I did! But it was not easy.<br/>\r\nMarsha: Why? What happened?<br/>\r\nAnna: Well, you know, I can drive farm equipment really well. But I was really nervous driving in Washington, D.C. traffic!<br/>\r\nMarsha: Did you pass the test the first time?<br/>\r\nAnna: Well…no. But I did pass the second time.<br/>\r\nMarsha: What happened during the first test?<br/>\r\nAnna: It started fine.<br/>\r\nJohn: Okay … Anna. Is your seatbelt buckled?<br/>\r\nAnna: Yes, sir!<br/>\r\nJohn: Great. Please start the car.<br/>\r\nAnna: (to herself) Okay, Anna, start the car.Started the car. Good job, Anna.<br/>\r\nJohn: Why are you talking to yourself?<br/>\r\nAnna: I am a little nervous. When I’m nervous, I talk to myself.<br/>\r\nJohn: You don\'t need to be nervous.<br/>\r\nAnna: Listen to that engine!<br/>\r\nJohn: Please, stop pushing the gas pedal!<br/>\r\nAnna: Sorry.<br/>\r\nJohn: Okay, when you are ready, turn.<br/>\r\nAnna: Great!<br/>\r\nJohn: Not now! You almost hit that car!<br/>\r\nAnna: You said “turn!”<br/>\r\nJohn: Look first! There were cars in the street.<br/>\r\nAnna: Please don’t yell at me!<br/>\r\nJohn: I’m sorry! I was afraid.<br/>\r\nAnna: You were yelling.<br/>\r\nJohn: Look out for that car! Brake! Brake!!<br/>\r\nAnna and John: Ahhh!<br/>\r\nAnna: Why is everyone honking at us?<br/>\r\nJohn: You were driving too slow! Anna, stay on the street!<br/>\r\nJohn: Hands on the wheel, Anna.<br/>\r\nAnna: What’s that sound?<br/>\r\nJohn: That, Anna, is the police.<br/>\r\nMarsha: That sounds awful.<br/>\r\nAnna: Yes, it did not go well. But, I practiced and passed the second time!<br/>\r\nMarsha: Do you know where you want to take your first drive in Washington, D.C.?<br/>\r\nAnna: Yes! Let’s go!<br/>\r\nAnna: There it is … the White House!<br/>\r\nMarsha: Anna, you do know you can’t drive up to the White House, don’t you?<br/>\r\nAnna: Yes. No. I didn’t know. I guess we walk from here!<br/>\r\nAnna: Sometimes you can see more of Washington, D.C. in a car. If you want to see the White House, you need to walk. Until next time … <br/>!', 'https://learningenglish.voanews.com/embed/player/0/3499400.html?type=audio', 'Do you know how to drive a car? Were you nervous when you first learned? Write to us by email or in the Comments section.', 'https://gdb.voanews.com/DCC1B7B4-C519-401C-831A-A6650B8C6287_w408_r1.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
