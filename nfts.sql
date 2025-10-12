-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2025 at 12:37 AM
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
(3, 'Lac Troi', 1, '<p>\"<strong>Lạc trôi</strong>\" (literally \"mindlessly floating\" or \"lost\" in <a href=\"https://en.wikipedia.org/wiki/Vietnamese_language\">Vietnamese</a>) is a song of the singer and songwriter <a href=\"https://en.wikipedia.org/wiki/S%C6%A1n_T%C3%B9ng_M-TP\">Sơn Tùng M-TP</a> from his first <a href=\"https://en.wikipedia.org/wiki/Greatest_hits_album\">greatest hits album</a>, <a href=\"https://en.wikipedia.org/wiki/M-tp_M-TP\"><i>m-tp M-TP</i></a> (2017). The song was composed and performed by Son Tung himself with the co-production of producer Triple D. The song was first released on December 31, 2016 as the first and lead single from the album.<a href=\"https://en.wikipedia.org/wiki/L%E1%BA%A1c_tr%C3%B4i#cite_note-1\">[1]</a> and was released on <a href=\"https://en.wikipedia.org/wiki/ITunes\">iTunes</a> Store by M-TP Entertainment and by <a href=\"https://nhac.vn/\">Nhac.vn</a>. This is the first song by Son Tung M-TP in 2017 as well as his first song after leaving Wepro Entertainment and former manager Nguyen Quang Huy.</p><p>\"Lạc trôi\" is a combination of traditional musical instruments and <a href=\"https://en.wikipedia.org/wiki/Future_bass\">future bass</a> style.<a href=\"https://en.wikipedia.org/wiki/L%E1%BA%A1c_tr%C3%B4i#cite_note-2\">[2]</a> The song is considered to have no catchy chorus. The melody was also not as outstanding as his previous hits. However, this song has received enthusiastic reception from the audiences.<a href=\"https://en.wikipedia.org/wiki/L%E1%BA%A1c_tr%C3%B4i#cite_note-:0-3\">[3]</a> The music video \"Lạc trôi\" is performed in the combination of ancient and modern styles and was filmed in <a href=\"https://en.wikipedia.org/wiki/L%C3%A2m_%C4%90%E1%BB%93ng_Province\">Lam Dong</a>. The highlight of this music video is that the singer puts on antique clothing while wearing modern sneakers. This is considered as the advertising tactics of Biti\'s – a footwear company - products. There are several cover versions, among them a <a href=\"https://en.wikipedia.org/wiki/Chinese_language\">Chinese</a> version, a <a href=\"https://en.wikipedia.org/wiki/Japanese_language\">Japanese</a> version, a <a href=\"https://en.wikipedia.org/wiki/Thai_language\">Thai</a> version and an <a href=\"https://en.wikipedia.org/wiki/English_language\">English</a> version.</p><p>During the first two days, \"Lạc trôi\" came in at No. 6 on the list of the most viewed videos of the week on YouTube. The music video uploaded to YouTube has so far garnered more than 100 million views after 61 days of release and has become one of Asia\'s most viewed music videos.</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760277442/b4jhvpc1mafc03nqliaz.jpg', 200, 'Sơn Tùng', '0x513E27b559764c90943929AaF8106D06CDaB3895', '2025-10-12 21:00:22', '2025-10-12 22:20:04', '2025-10-13 00:20:36', -1),
(4, 'Tom and Jerry', 1, '<h3>About</h3><p>Tom and Jerry is an American animated media franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera. Best known for its 161 theatrical short films by Metro-Goldwyn-Mayer, the series centers on the enmity between the titular characters of a cat named Tom and a mouse named Jerry. <a href=\"https://en.wikipedia.org/wiki/Tom_and_Jerry\">Wikipedia</a></p><p><strong>Film(s): </strong>Tom and Jerry: The Movie (1992); Tom and Jerry (2021); Tom and Jerry: Forbidden Compass (2025)</p><p><strong>Created by: </strong><a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=William+Hanna&amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MM4tLklexMobnpmTk5mYq-CRmJeXCAClHdDnHQAAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAguEAI\">William Hanna</a>; <a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=Joseph+Barbera&amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MLGwSLdcxMrnlV-cWpCh4JRYlJRalAgADjsRtB4AAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAguEAM\">Joseph Barbera</a></p><p><strong>Musical(s): </strong><a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=Tom+and+Jerry:+Purr-Chance+to+Dream+(2019)&amp;stick=H4sIAAAAAAAAAONgVuLRT9c3NCyyMMirTClYxKoVkp-rkJiXouCVWlRUaaUQUFpUpOuckZiXnKpQkq_gUpSamKugYWRgaKkJAMeWCmc9AAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAgqEAI\">Tom and Jerry: Purr-Chance to Dream (2019)</a></p><p><strong>Original work: </strong><a href=\"https://www.google.com/search?sa=X&amp;sca_esv=d803b5e7521b1d51&amp;rlz=1C5CHFA_enAE1089VN1091&amp;biw=1680&amp;bih=956&amp;sxsrf=AE3TifMZV4O9Azmp9G8Mj_JKEaf6FxNA-Q:1760279194815&amp;q=Puss+Gets+the+Boot+(1940)&amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MCvIik9bxCoZUFpcrOCeWlKsUJKRquCUn1-ioGFoaWKgCQD6OG4dKQAAAA&amp;ved=2ahUKEwiz-vKA756QAxVyslYBHVUNEHcQmxN6BAgvEAI\">Puss Gets the Boot (1940)</a></p><p><strong>Owners: </strong>Turner Entertainment Co. (Warner Bros.)</p><p><strong>Soundtrack(s): </strong>Tom and Jerry &amp; Tex Avery Too!</p>', 'https://res.cloudinary.com/xuanhung2401/image/upload/v1760278948/u365d4rt1rhwvhrxa17d.jpg', 230, 'Warner Bros', '0x88802D2B06936E4E7F6406102Afbaaeb9d6De3bb', '2025-10-12 21:27:38', NULL, '2025-10-13 00:09:55', 1);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
