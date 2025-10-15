-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2025 at 06:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hello_t2404e`
--

-- --------------------------------------------------------

--
-- Table structure for table `nfts`
--

CREATE TABLE `nfts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `creator` varchar(100) DEFAULT NULL,
  `wallet_address` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nfts`
--

INSERT INTO `nfts` (`id`, `name`, `category_id`, `description`, `image_url`, `price`, `creator`, `wallet_address`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Bored Monkey With Crown updated', 1, '<p>Lorem ipsum dolor sit amet. Id labore sint ad vitae dolorum <strong>Ut aspernatur et dolore aliquam</strong> qui corporis optio eos rerum cupiditate vel reprehenderit magni. Ex illo commodi ab ratione voluptate <a href=\"https://www.loremipzum.com/\">Id esse At error praesentium aut soluta corrupti ab consequatur distinctio</a>. Et voluptatem quod <i>Et veritatis</i> eos veritatis omnis ut nulla quaerat. Cum rerum possimusAut sint et dicta reprehenderit aut fugiat officia et galisum dolores quo temporibus laboriosam.</p><p>Qui dicta praesentium id debitis consequaturQui corrupti ut quaerat corporis hic blanditiis rerum sed itaque quae. Sit perferendis galisum <strong>Qui tempora</strong> et perferendis consequuntur.</p><p>Non totam provident eum laboriosam voluptates <strong>Aut delectus est debitis beatae</strong> ad temporibus cumque qui aperiam quis ut doloremque rerum. Est voluptas reiciendis <i>Vel voluptatem eos accusantium enim ad rerum atque</i> ut autem nisi aut sunt eaque non enim laborum.</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760259937/vlt4zn6wkynpwnjqz9nn.jpg', 100, 'Bao Ha', '0x9B34D671E88C67A23E5C3DA77E4A2F0F4C9A0D90', '2025-10-12 16:07:06', '2025-10-12 17:29:52', '2025-10-12 23:59:28', 1),
(2, 'Cyber Samurai updated', 5, '<p>Cyber Samurai: A Striking 4K Ultra HD Sci-Fi Robot Wallpaper by <a href=\"https://alphacoders.com/users/profile/69089/robokoboto\">robokoboto</a></p><h4>Est tempore corporis non quisquam quisquam sit obcaecati inventore.</h4><p>Lorem ipsum dolor sit amet. Et vero doloribus ut esse distinctio et laudantium magnam et aspernatur nostrum aut molestias voluptate sit doloribus perferendis. Aut delectus saepe ab maiores rerum est nobis tenetur vel voluptatem fugiat ut nemo aperiam aut dolorem omnis. Ut placeat perspiciatis sed magnam quam aut nostrum quaerat? Sit perferendis quibusdam ut quasi voluptates eos animi repudiandae et quos temporibus.</p><h4>In accusantium debitis quo sunt nostrum.</h4><p>Ab illum dolore et rerum aspernatur et aliquam omnis aut doloremque laboriosam ad praesentium voluptates qui exercitationem perspiciatis. Ut molestiae facere vel vero totam qui nihil magnam eum odio quis.</p><ul><li>Et ipsum quae ut consequatur blanditiis.</li><li>Id magni praesentium qui dolor officia ea inventore accusantium.</li></ul><h4>Et quas accusantium et architecto modi qui soluta Quis.</h4><p>Cum esse omnis hic quidem suscipit aut repellat facere ad cumque voluptatibus est voluptatem galisum aut temporibus error. Eos quia suscipit eum eius consectetur in impedit consequuntur aut dolore consequatur est vero dolorem? In rerum totam est amet consequatur et ipsam enim et reiciendis eligendi et pariatur rerum eum esse odio sit adipisci asperiores. Aut esse animi ut autem veritatis est recusandae laudantium At ullam debitis et velit consequuntur ut consequuntur dolor.</p><ol><li>Rem soluta itaque qui saepe illum.</li><li>Et dolorem cumque ex dolore nihil.</li><li>Qui tempora consequatur ex dolores blanditiis est soluta enim.</li><li>Ex optio cumque qui sint consequatur 33 incidunt placeat id aliquid rerum.</li><li>Ad labore voluptas in architecto placeat.</li></ol>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760274964/wdniprukhlyefybbym2z.png', 50, 'John Doe', '0x6E23F98D88A6B3C2A5D22C8E9F3B7B19A1E2C011', '2025-10-12 20:16:55', '2025-10-12 20:19:51', '2025-10-13 00:19:59', 1),
(3, 'Lac Troi', 1, '<p>\"<strong>Lạc trôi</strong>\" (literally \"mindlessly floating\" or \"lost\" in <a href=\"https://en.wikipedia.org/wiki/Vietnamese_language\">Vietnamese</a>) is a song of the singer and songwriter <a href=\"https://en.wikipedia.org/wiki/S%C6%A1n_T%C3%B9ng_M-TP\">Sơn Tùng M-TP</a> from his first <a href=\"https://en.wikipedia.org/wiki/Greatest_hits_album\">greatest hits album</a>, <a href=\"https://en.wikipedia.org/wiki/M-tp_M-TP\"><i>m-tp M-TP</i></a> (2017). The song was composed and performed by Son Tung himself with the co-production of producer Triple D. The song was first released on December 31, 2016 as the first and lead single from the album.<a href=\"https://en.wikipedia.org/wiki/L%E1%BA%A1c_tr%C3%B4i#cite_note-1\">[1]</a> and was released on <a href=\"https://en.wikipedia.org/wiki/ITunes\">iTunes</a> Store by M-TP Entertainment and by <a href=\"https://nhac.vn/\">Nhac.vn</a>. This is the first song by Son Tung M-TP in 2017 as well as his first song after leaving Wepro Entertainment and former manager Nguyen Quang Huy.</p><p>\"Lạc trôi\" is a combination of traditional musical instruments and <a href=\"https://en.wikipedia.org/wiki/Future_bass\">future bass</a> style.<a href=\"https://en.wikipedia.org/wiki/L%E1%BA%A1c_tr%C3%B4i#cite_note-2\">[2]</a> The song is considered to have no catchy chorus. The melody was also not as outstanding as his previous hits. However, this song has received enthusiastic reception from the audiences.<a href=\"https://en.wikipedia.org/wiki/L%E1%BA%A1c_tr%C3%B4i#cite_note-:0-3\">[3]</a> The music video \"Lạc trôi\" is performed in the combination of ancient and modern styles and was filmed in <a href=\"https://en.wikipedia.org/wiki/L%C3%A2m_%C4%90%E1%BB%93ng_Province\">Lam Dong</a>. The highlight of this music video is that the singer puts on antique clothing while wearing modern sneakers. This is considered as the advertising tactics of Biti\'s – a footwear company - products. There are several cover versions, among them a <a href=\"https://en.wikipedia.org/wiki/Chinese_language\">Chinese</a> version, a <a href=\"https://en.wikipedia.org/wiki/Japanese_language\">Japanese</a> version, a <a href=\"https://en.wikipedia.org/wiki/Thai_language\">Thai</a> version and an <a href=\"https://en.wikipedia.org/wiki/English_language\">English</a> version.</p><p>During the first two days, \"Lạc trôi\" came in at No. 6 on the list of the most viewed videos of the week on YouTube. The music video uploaded to YouTube has so far garnered more than 100 million views after 61 days of release and has become one of Asia\'s most viewed music videos.</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760277442/b4jhvpc1mafc03nqliaz.jpg', 200, 'Sơn Tùng', '0x513E27b559764c90943929AaF8106D06CDaB3895', '2025-10-12 21:00:22', '2025-10-12 22:20:04', '2025-10-13 00:20:36', 1),
(4, 'Tom and Jerry updated', 1, '<h3>About</h3><p>Tom and Jerry is an American animated media franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera. Best known for its 161 theatrical short films by Metro-Goldwyn-Mayer, the series centers on the enmity between the titular characters of a cat named Tom and a mouse named Jerry. <a href=\"https://en.wikipedia.org/wiki/Tom_and_Jerry\">Wikipedia</a></p><p><strong>Film(s): </strong>Tom and Jerry: The Movie (1992); Tom and Jerry (2021); Tom and Jerry: Forbidden Compass (2025)</p><p><strong>Created by: </strong><a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=William+Hanna&amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MM4tLklexMobnpmTk5mYq-CRmJeXCAClHdDnHQAAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAguEAI\">William Hanna</a>; <a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=Joseph+Barbera&amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MLGwSLdcxMrnlV-cWpCh4JRYlJRalAgADjsRtB4AAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAguEAM\">Joseph Barbera</a></p><p><strong>Musical(s): </strong><a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=Tom+and+Jerry:+Purr-Chance+to+Dream+(2019)&amp;stick=H4sIAAAAAAAAAONgVuLRT9c3NCyyMMirTClYxKoVkp-rkJiXouCVWlRUaaUQUFpUpOuckZiXnKpQkq_gUpSamKugYWRgaKkJAMeWCmc9AAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAgqEAI\">Tom and Jerry: Purr-Chance to Dream (2019)</a></p><p><strong>Original work: </strong><a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=Puss+Gets+the+Boot+(1940)&amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MCvIik9bxCoZUFpcrOCeWlKsUJKRquCUn1-ioGFoaWKgCQD6OG4dKQAAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAgvEAI\">Puss Gets the Boot (1940)</a></p><p><strong>Owners: </strong>Turner Entertainment Co. (Warner Bros.)</p><p><strong>Soundtrack(s): </strong>Tom and Jerry &amp; Tex Avery Too!</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760278948/u365d4rt1rhwvhrxa17d.jpg', 230, 'Warner Bros', '0x88802D2B06936E4E7F6406102Afbaaeb9d6De3bb', '2025-10-12 21:27:38', '2025-10-15 22:36:16', '2025-10-13 00:09:55', 1),
(5, 'Neon Samurai', 1, '<p>Futuristic digital samurai art glowing in neon purple tones.</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760545140/ezmfpvnrmpnwzetuvmen.jpg', 120, 'Kaito Nguyen', '0x1A2B3C4D5E6F7890ABCDEF1234567890ABCDEF12', '2025-10-15 23:16:03', '2025-10-15 23:19:46', NULL, 1),
(6, 'Ocean Dream', 1, '<p>A dreamy digital painting inspired by the deep ocean and bioluminescent life.</p>', 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=800', 80, 'Mai Anh', '0x9EFA11B22344CC55D66778899AABBCCDDEEFF001', '2025-10-15 23:16:03', NULL, NULL, 1),
(7, 'Cyber Lotus', 1, '<p>Abstract art combining traditional lotus with cyberpunk visual style.</p>', 'https://images.unsplash.com/photo-1547658719-da2b51169166?w=800', 150, 'Bao Ha', '0x9B34D671E88C67A23E5C3DA77E4A2F0F4C9A0D90', '2025-10-15 23:16:03', '2025-10-15 23:33:29', NULL, 1),
(8, 'Echoes of the Future', 2, '<p>Electronic chillwave track composed with analog synth textures.</p>', 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=800', 60, 'DJ Pulse', '0xAA2233445566778899AABBCCDDEEFF1122334455', '2025-10-15 23:16:03', NULL, NULL, 1),
(9, 'Midnight Jazz Loop', 2, '<p>A smooth lo-fi jazz loop recorded with live saxophone and bass.</p>', 'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?w=800', 45, 'Tuan Le', '0xBB11CC22DD33EE44FF5566778899AABBCCDDEE99', '2025-10-15 23:16:03', NULL, NULL, 1),
(10, 'Crimson Melody', 2, '<p>Experimental ambient soundtrack exploring emotions through sound layers.</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760545279/o6dz9xn3rp2mv5y4r4nn.jpg', 55, 'Mai Pham', '0x77777AAABBBCCCDDD11122233344455566677788', '2025-10-15 23:16:03', '2025-10-15 23:21:23', NULL, 1),
(11, 'The Last Frame', 3, '<p>A cinematic short NFT video clip showing a surreal world in slow motion.</p>', 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=800', 200, 'Bao Tran', '0x101010ABCDEFABCDEF101010ABCDEFABCDEF1010', '2025-10-15 23:16:03', NULL, NULL, 1),
(12, 'City of Lights', 3, '<p>Drone footage NFT of a futuristic neon cityscape at midnight.</p>', 'https://images.unsplash.com/photo-1503264116251-35a269479413?w=800', 220, 'Long Nguyen', '0xDEADBEEFCAFEBABE1234567890ABCDEF11111111', '2025-10-15 23:16:03', NULL, NULL, 1),
(13, 'Beyond Reality', 3, '<p>VR-based NFT short film blending human motion capture and CGI environments.</p>', 'https://images.unsplash.com/photo-1496307042754-b4aa456c4a2d?w=800', 310, 'Anna Dao', '0xFACEB00C1234567890ABCDEFABCD9876543210FE', '2025-10-15 23:16:03', NULL, NULL, 1),
(14, 'Pixel Cat Dance', 4, '<p>Animated GIF of a pixelated cat dancing endlessly on a disco floor.</p>', 'https://images.unsplash.com/photo-1546182990-dffeafbe841d?w=800', 25, 'Quang Huy', '0xABC123DEF456ABC123DEF456ABC123DEF456ABC1', '2025-10-15 23:16:03', NULL, NULL, 1),
(15, 'Looping Universe', 4, '<p>GIF animation of an infinite rotating galaxy loop.</p>', 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=800', 40, 'Linh Vu', '0x9999998888887777776666665555554444443333', '2025-10-15 23:16:03', NULL, NULL, 1),
(16, 'Glitch Bunny', 4, '<p>Retro-glitch GIF of a running bunny dissolving into pixels.</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760545417/lkqjxd3iqbyiszg5lsfx.png', 30, 'Neko Artist', '0xABABABCDCDCD1234567890EFEFEF987654321111', '2025-10-15 23:16:03', '2025-10-15 23:23:41', NULL, 1),
(17, 'Cyber Car Concept', 5, '<p>High-poly futuristic 3D car concept in metallic violet finish.</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760545491/joojxgf4wc7s1zfl4dpt.jpg', 500, 'Hoang Designer', '0xAAAABBBBCCCCDDDDEEEEFFFF1111222233334444', '2025-10-15 23:16:03', '2025-10-15 23:24:55', NULL, 1),
(18, 'Ancient Robot', 5, '<p>A 3D robot inspired by ancient sculpture art and steampunk style.</p>', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=800', 450, 'Linh Dao', '0x1234567890ABCDEF111122223333444455556666', '2025-10-15 23:16:03', NULL, NULL, 1),
(19, 'Dragon Guardian', 5, '<p>3D model NFT of a dragon statue guarding a temple gate.</p>', 'https://images.unsplash.com/photo-1502082553048-f009c37129b9?w=800', 600, 'Bao Ha', '0x6E23F98D88A6B3C2A5D22C8E9F3B7B19A1E2C011', '2025-10-15 23:16:03', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nfts`
--
ALTER TABLE `nfts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nfts`
--
ALTER TABLE `nfts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
