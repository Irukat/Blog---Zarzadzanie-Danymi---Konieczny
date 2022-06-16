-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mariadb106.server640683.nazwa.pl:3306
-- Czas generowania: 16 Cze 2022, 16:58
-- Wersja serwera: 10.6.7-MariaDB-log
-- Wersja PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `server640683_konieczny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `login` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `comment`
--

INSERT INTO `comment` (`id`, `id_post`, `login`, `comment`, `date_created`) VALUES
(3, 13, 'asf', 'kasfaw', '2022-06-16 16:48:14'),
(4, 13, 'Gal Anonim', 'Twoja stara sra do gara', '2022-06-16 16:48:15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `content` text NOT NULL,
  `excerpt` text NOT NULL,
  `cover` varchar(4096) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `post`
--

INSERT INTO `post` (`id`, `id_owner`, `title`, `content`, `excerpt`, `cover`, `date_created`) VALUES
(13, 16, 'Wpis prezentacyjny #1', '<h1>Qui culpa omnis ut consequatur excepturi aut mollitia quia.</h1>\r\n<p>Lorem ipsum dolor sit amet. Ea sunt eveniet ut vero laboriosam <strong>Cum distinctio</strong>. Sit doloribus omnis sit doloremque saepe in provident tempore cum maxime rerum sed maiores deserunt! A debitis repellat rem fugit earum ut voluptas tempora. Et nihil nesciunt et perspiciatis reiciendis et nulla rerum ut soluta pariatur. Id voluptatibus maiores rem perferendis corporis est atque praesentium est totam itaque ut corporis unde.</p>\r\n<ol>\r\n<li>Sit molestiae culpa qui suscipit rerum quo iure dignissimos sit optio quos.</li>\r\n<li>Ut fugit facere ea esse itaque qui iure eligendi.</li>\r\n<li>Qui dolorem pariatur qui voluptatum corporis et eveniet doloribus.</li>\r\n<li>Ut magnam nihil sed impedit earum ex nulla vero voluptas impedit.</li>\r\n</ol>\r\n<ul>\r\n<li>Id fugit facilis ea tempore ratione ut maiores molestiae?</li>\r\n<li>Sed possimus optio aut autem quasi.</li>\r\n<li>Et quia eligendi qui vero blanditiis ad architecto cum quisquam nihil?</li>\r\n<li>Aut amet velit quo nemo doloribus.</li>\r\n<li>In commodi explicabo est optio officia.</li>\r\n<li>Aut adipisci quibusdam et aspernatur quia ea commodi dolorum eum minus distinctio.</li>\r\n</ul>\r\n<h2>Et excepturi beatae sed sapiente Quis ut asperiores officiis?</h2>\r\n<p>Ut harum sapiente sed earum voluptatum sed amet explicabo. Qui repudiandae deserunt hic consectetur quaerat <em>Et laborum sit fugit quam</em>. Vel blanditiis quia <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Et dolorum 33 dolorem autem est nostrum repellendus</a>. Aut architecto quis sit quibusdam Quis et sequi consequatur sed doloremque veniam architecto nulla ut molestiae mollitia et aspernatur accusamus! Sit quas consequatur qui aliquam quia <strong>Qui sunt sed aliquam galisum</strong> id minima placeat aut sunt beatae est fugiat voluptatem!</p>\r\n<h3>Aut dolorem repellendus qui minus ipsum.</h3>\r\n<p>Quo ipsam animi ut corporis dolor et fuga expedita et fugit laudantium sit dolore voluptatum. Et voluptatem consequuntur et omnis minus eum aliquam quisquam et eligendi excepturi id provident sequi est quaerat velit qui voluptas deleniti. In aliquam consequatur et voluptates magnam aut debitis dolor qui soluta ipsum aut amet rerum. Et similique quibusdam aut perferendis doloremqui minus in voluptas animi ab voluptas harum. Ut recusandae itaque aut nobis consequatur est quod voluptatem in enim soluta qui inventore nihil quo deleniti nisi.</p>\r\n<h4>Et alias ut dolorem laborum?</h4>\r\n<p>Quo officia rerum in cupiditate asperiores ab voluptas tempore a dolor sint vel voluptas illo ex atque sunt. Eum molestias minima vel repudiandae corporis <em>Est deleniti nam error dicta sit tempore voluptatem in consequatur animi</em>. At modi commodi <strong>Et asperiores qui ullam magnam hic dignissimos reiciendis</strong>. Sit facere dolor aut ullam ipsam a perspiciatis voluptates ut voluptas laboriosam! Aut amet eligendi qui placeat veritatis in laboriosam nobis ut deserunt internos in ipsum neque sit dolore necessitatibus.</p>\r\n<h5>Non autem qui quam quisquam?</h5>\r\n<p>Est distinctio sint est placeat sunt aut fugit porro ut quasi minus ut quae numquam rem enim voluptatem. Quo voluptas voluptatem sed optio voluptatem et eaque sit odio recusandae est omnis atque qui blanditiis provident ipsum dicta? Aut porro expedita <em>Et doloremque et adipisci perspiciatis</em>? Ut quia beatae <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Sit laudantium aut dolor possimus id consequatur quam</a>? Ut reprehenderit debitis <strong>Sit fugit ut commodi molestias et porro suscipit</strong> in doloremque placeat. Cum similique sint id perferendis nulla aut aliquid molestias 33 aliquid quisquam sed rerum odio sed cupiditate illo. Aut fuga suscipit aut voluptate cumque vel nihil aperiam sed sunt iusto vel eaque impedit id quia natus quo sapiente aliquam.</p>\r\n<p>In fugiat laborum in deserunt consequatur quo maiores voluptatem. Quo placeat quia <em>Ut illo At tempora inventore et totam dicta ut quam dolores</em> quo alias tenetur qui earum provident. Sed nulla quisquam cum eveniet delectusquo quae eos quibusdam exercitationem ad maiores laboriosam. Quo voluptate tempore ea ipsam nobis id dolores quod ut dolores commodi ea quasi aliquam. Qui nesciunt dolorem est inventore ipsa <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Ea dolore non voluptas nihil est voluptates nisi et pariatur dolorum</a>. Qui soluta reiciendis quo consectetur ducimus qui repudiandae illo a adipisci eveniet ut cupiditate deleniti et dolor repellendus aut quasi nulla. Ex aliquam laudantium id incidunt dolore ab delectus quos ut dolorem omnis. Ad maxime obcaecati eos quis distinctio eum quasi galisum! Et sunt mollitia non assumenda commodi et tempora voluptatem!</p>\r\n<p>Non voluptates galisum quo ducimus animi est eveniet dolorem ex aperiam vero sit quasi dolor 33 reprehenderit unde aut enim explicabo. Qui veniam eligendi nam illum sunt ut aliquid harum! Ut necessitatibus maxime et veniam quia sed vero nesciunt in aliquid incidunt qui galisum necessitatibus. Ut ipsa delectus aut blanditiis culpa At deleniti voluptas sit enim enim qui accusamus commodi. Aut dolores maxime ut iusto dolorem <strong>Quo consequuntur ex impedit quia</strong> eum quam atque non accusamus fugiat est galisum quia!</p>\r\n<p>Ut nisi porro ut quibusdam voluptatibus ut commodi neque sit dolore sunt est pariatur saepe rem consequuntur reprehenderit id molestias iste. Eum accusantium inventore ut quibusdam deleniti qui expedita ipsum qui saepe fugit et itaque rerum aut placeat repellat. Non delectus ametsed provident in maiores nihil. Et consequatur minus rem molestiae eligendi vel alias tempore ut velit dolor et itaque quam. Qui totam facilis aut dolorum voluptate <em>Et quia hic consequatur eius</em> et velit nihil a incidunt voluptatem id quam modi.</p>\r\n<dl>\r\n<dt><dfn>At voluptas sapiente et iste vero? </dfn></dt>\r\n<dd>Sed culpa excepturi quo adipisci quia aut quis molestias.</dd>\r\n<dt><dfn>Ea tempore deleniti eos consequuntur magnam? </dfn></dt>\r\n<dd>Eos quia sunt eligendi laboriosam qui nihil quas ut suscipit rerum.</dd>\r\n<dt><dfn>Suscipit assumenda est aliquid reiciendis. </dfn></dt>\r\n<dd>Aut officia fugiat aut galisum magnam a quia quia.</dd>\r\n</dl>\r\n<p>Quo voluptatum ratione hic laborum aspernatursit sint est inventore repellendus sed perferendis sunt. Eos perferendis fuga ab incidunt unde ea doloribus sunt aut dolorem veniam vel commodi voluptatem non omnis quia est quam suscipit! Id magnam neque ut vitae tenetur est veniam corporis id beatae asperiores et necessitatibus obcaecati et nostrum itaque? Molestiae iste est alias aspernatur sed soluta repellendus. Et enim totam ut voluptatem asperioresqui alias. Eos ducimus voluptatibus <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Id ullam in quas ducimus</a>. Qui reiciendis voluptate a atque animi ex exercitationem velit aut debitis quisquam et illo architecto qui consequatur dignissimos?</p>\r\n<p>Sit reprehenderit rerum id fuga esse nam assumenda asperiores id eius illum eum perferendis galisum? In ipsam inventore <em>Cum quasi non nisi vitae aut sunt deserunt qui voluptatem</em> rem amet dolorem nam optio laudantium. Ut optio voluptatem ut voluptatumet aliquid est quos dolores. Et corporis reprehenderit ad illum Quis aut temporibus officiis cum dolore voluptatem aut accusamus vitae ab voluptatem consequuntur. Eos consequuntur praesentium in ratione suscipit eum sunt nesciunt eos maiores omnis eum enim tempore ut error consequatur. Id voluptas odit ut voluptatum enim et maiores dolorum ea mollitia molestiae. 33 fugiat dolores <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Aut voluptatem ut amet obcaecati</a>.</p>', 'Lorem ipsum dolor sit amet. Et fuga optio qui ratione itaque et ducimus corrupti eum reprehenderit libero est sunt magnam. Est praesentium quia aut tempora enim aut tempora quia. Eum possimus facere et optio temporibus sit velit officiis sit enim neque sed iusto recusandae qui voluptatem autem. Qui ipsa nisi qui culpa dolores et sunt voluptas sed quia aspernatur hic magni provident et galisum molestiae et dolores iste.', 'https://images5.alphacoders.com/685/thumb-1920-685514.jpg', '2022-06-16 16:32:53'),
(14, 16, 'Wpis prezentacyjny #2', '<h1>Qui culpa omnis ut consequatur excepturi aut mollitia quia.</h1>\r\n<p>Lorem ipsum dolor sit amet. Ea sunt eveniet ut vero laboriosam <strong>Cum distinctio</strong>. Sit doloribus omnis sit doloremque saepe in provident tempore cum maxime rerum sed maiores deserunt! A debitis repellat rem fugit earum ut voluptas tempora. Et nihil nesciunt et perspiciatis reiciendis et nulla rerum ut soluta pariatur. Id voluptatibus maiores rem perferendis corporis est atque praesentium est totam itaque ut corporis unde.</p>\r\n<ol>\r\n<li>Sit molestiae culpa qui suscipit rerum quo iure dignissimos sit optio quos.</li>\r\n<li>Ut fugit facere ea esse itaque qui iure eligendi.</li>\r\n<li>Qui dolorem pariatur qui voluptatum corporis et eveniet doloribus.</li>\r\n<li>Ut magnam nihil sed impedit earum ex nulla vero voluptas impedit.</li>\r\n</ol>\r\n<ul>\r\n<li>Id fugit facilis ea tempore ratione ut maiores molestiae?</li>\r\n<li>Sed possimus optio aut autem quasi.</li>\r\n<li>Et quia eligendi qui vero blanditiis ad architecto cum quisquam nihil?</li>\r\n<li>Aut amet velit quo nemo doloribus.</li>\r\n<li>In commodi explicabo est optio officia.</li>\r\n<li>Aut adipisci quibusdam et aspernatur quia ea commodi dolorum eum minus distinctio.</li>\r\n</ul>\r\n<h2>Et excepturi beatae sed sapiente Quis ut asperiores officiis?</h2>\r\n<p>Ut harum sapiente sed earum voluptatum sed amet explicabo. Qui repudiandae deserunt hic consectetur quaerat <em>Et laborum sit fugit quam</em>. Vel blanditiis quia <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Et dolorum 33 dolorem autem est nostrum repellendus</a>. Aut architecto quis sit quibusdam Quis et sequi consequatur sed doloremque veniam architecto nulla ut molestiae mollitia et aspernatur accusamus! Sit quas consequatur qui aliquam quia <strong>Qui sunt sed aliquam galisum</strong> id minima placeat aut sunt beatae est fugiat voluptatem!</p>\r\n<h3>Aut dolorem repellendus qui minus ipsum.</h3>\r\n<p>Quo ipsam animi ut corporis dolor et fuga expedita et fugit laudantium sit dolore voluptatum. Et voluptatem consequuntur et omnis minus eum aliquam quisquam et eligendi excepturi id provident sequi est quaerat velit qui voluptas deleniti. In aliquam consequatur et voluptates magnam aut debitis dolor qui soluta ipsum aut amet rerum. Et similique quibusdam aut perferendis doloremqui minus in voluptas animi ab voluptas harum. Ut recusandae itaque aut nobis consequatur est quod voluptatem in enim soluta qui inventore nihil quo deleniti nisi.</p>\r\n<h4>Et alias ut dolorem laborum?</h4>\r\n<p>Quo officia rerum in cupiditate asperiores ab voluptas tempore a dolor sint vel voluptas illo ex atque sunt. Eum molestias minima vel repudiandae corporis <em>Est deleniti nam error dicta sit tempore voluptatem in consequatur animi</em>. At modi commodi <strong>Et asperiores qui ullam magnam hic dignissimos reiciendis</strong>. Sit facere dolor aut ullam ipsam a perspiciatis voluptates ut voluptas laboriosam! Aut amet eligendi qui placeat veritatis in laboriosam nobis ut deserunt internos in ipsum neque sit dolore necessitatibus.</p>\r\n<h5>Non autem qui quam quisquam?</h5>\r\n<p>Est distinctio sint est placeat sunt aut fugit porro ut quasi minus ut quae numquam rem enim voluptatem. Quo voluptas voluptatem sed optio voluptatem et eaque sit odio recusandae est omnis atque qui blanditiis provident ipsum dicta? Aut porro expedita <em>Et doloremque et adipisci perspiciatis</em>? Ut quia beatae <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Sit laudantium aut dolor possimus id consequatur quam</a>? Ut reprehenderit debitis <strong>Sit fugit ut commodi molestias et porro suscipit</strong> in doloremque placeat. Cum similique sint id perferendis nulla aut aliquid molestias 33 aliquid quisquam sed rerum odio sed cupiditate illo. Aut fuga suscipit aut voluptate cumque vel nihil aperiam sed sunt iusto vel eaque impedit id quia natus quo sapiente aliquam.</p>\r\n<p>In fugiat laborum in deserunt consequatur quo maiores voluptatem. Quo placeat quia <em>Ut illo At tempora inventore et totam dicta ut quam dolores</em> quo alias tenetur qui earum provident. Sed nulla quisquam cum eveniet delectusquo quae eos quibusdam exercitationem ad maiores laboriosam. Quo voluptate tempore ea ipsam nobis id dolores quod ut dolores commodi ea quasi aliquam. Qui nesciunt dolorem est inventore ipsa <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Ea dolore non voluptas nihil est voluptates nisi et pariatur dolorum</a>. Qui soluta reiciendis quo consectetur ducimus qui repudiandae illo a adipisci eveniet ut cupiditate deleniti et dolor repellendus aut quasi nulla. Ex aliquam laudantium id incidunt dolore ab delectus quos ut dolorem omnis. Ad maxime obcaecati eos quis distinctio eum quasi galisum! Et sunt mollitia non assumenda commodi et tempora voluptatem!</p>\r\n<p>Non voluptates galisum quo ducimus animi est eveniet dolorem ex aperiam vero sit quasi dolor 33 reprehenderit unde aut enim explicabo. Qui veniam eligendi nam illum sunt ut aliquid harum! Ut necessitatibus maxime et veniam quia sed vero nesciunt in aliquid incidunt qui galisum necessitatibus. Ut ipsa delectus aut blanditiis culpa At deleniti voluptas sit enim enim qui accusamus commodi. Aut dolores maxime ut iusto dolorem <strong>Quo consequuntur ex impedit quia</strong> eum quam atque non accusamus fugiat est galisum quia!</p>\r\n<p>Ut nisi porro ut quibusdam voluptatibus ut commodi neque sit dolore sunt est pariatur saepe rem consequuntur reprehenderit id molestias iste. Eum accusantium inventore ut quibusdam deleniti qui expedita ipsum qui saepe fugit et itaque rerum aut placeat repellat. Non delectus ametsed provident in maiores nihil. Et consequatur minus rem molestiae eligendi vel alias tempore ut velit dolor et itaque quam. Qui totam facilis aut dolorum voluptate <em>Et quia hic consequatur eius</em> et velit nihil a incidunt voluptatem id quam modi.</p>\r\n<dl>\r\n<dt><dfn>At voluptas sapiente et iste vero? </dfn></dt>\r\n<dd>Sed culpa excepturi quo adipisci quia aut quis molestias.</dd>\r\n<dt><dfn>Ea tempore deleniti eos consequuntur magnam? </dfn></dt>\r\n<dd>Eos quia sunt eligendi laboriosam qui nihil quas ut suscipit rerum.</dd>\r\n<dt><dfn>Suscipit assumenda est aliquid reiciendis. </dfn></dt>\r\n<dd>Aut officia fugiat aut galisum magnam a quia quia.</dd>\r\n</dl>\r\n<p>Quo voluptatum ratione hic laborum aspernatursit sint est inventore repellendus sed perferendis sunt. Eos perferendis fuga ab incidunt unde ea doloribus sunt aut dolorem veniam vel commodi voluptatem non omnis quia est quam suscipit! Id magnam neque ut vitae tenetur est veniam corporis id beatae asperiores et necessitatibus obcaecati et nostrum itaque? Molestiae iste est alias aspernatur sed soluta repellendus. Et enim totam ut voluptatem asperioresqui alias. Eos ducimus voluptatibus <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Id ullam in quas ducimus</a>. Qui reiciendis voluptate a atque animi ex exercitationem velit aut debitis quisquam et illo architecto qui consequatur dignissimos?</p>\r\n<p>Sit reprehenderit rerum id fuga esse nam assumenda asperiores id eius illum eum perferendis galisum? In ipsam inventore <em>Cum quasi non nisi vitae aut sunt deserunt qui voluptatem</em> rem amet dolorem nam optio laudantium. Ut optio voluptatem ut voluptatumet aliquid est quos dolores. Et corporis reprehenderit ad illum Quis aut temporibus officiis cum dolore voluptatem aut accusamus vitae ab voluptatem consequuntur. Eos consequuntur praesentium in ratione suscipit eum sunt nesciunt eos maiores omnis eum enim tempore ut error consequatur. Id voluptas odit ut voluptatum enim et maiores dolorum ea mollitia molestiae. 33 fugiat dolores <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Aut voluptatem ut amet obcaecati</a>.</p>', 'Lorem ipsum dolor sit amet. Et fuga optio qui ratione itaque et ducimus corrupti eum reprehenderit libero est sunt magnam. Est praesentium quia aut tempora enim aut tempora quia. Eum possimus facere et optio temporibus sit velit officiis sit enim neque sed iusto recusandae qui voluptatem autem. Qui ipsa nisi qui culpa dolores et sunt voluptas sed quia aspernatur hic magni provident et galisum molestiae et dolores iste.', 'https://images5.alphacoders.com/685/thumb-1920-685514.jpg', '2022-06-16 16:32:53'),
(15, 16, 'Wpis prezentacyjny #4', '<h1>Qui culpa omnis ut consequatur excepturi aut mollitia quia.</h1>\r\n<p>Lorem ipsum dolor sit amet. Ea sunt eveniet ut vero laboriosam <strong>Cum distinctio</strong>. Sit doloribus omnis sit doloremque saepe in provident tempore cum maxime rerum sed maiores deserunt! A debitis repellat rem fugit earum ut voluptas tempora. Et nihil nesciunt et perspiciatis reiciendis et nulla rerum ut soluta pariatur. Id voluptatibus maiores rem perferendis corporis est atque praesentium est totam itaque ut corporis unde.</p>\r\n<ol>\r\n<li>Sit molestiae culpa qui suscipit rerum quo iure dignissimos sit optio quos.</li>\r\n<li>Ut fugit facere ea esse itaque qui iure eligendi.</li>\r\n<li>Qui dolorem pariatur qui voluptatum corporis et eveniet doloribus.</li>\r\n<li>Ut magnam nihil sed impedit earum ex nulla vero voluptas impedit.</li>\r\n</ol>\r\n<ul>\r\n<li>Id fugit facilis ea tempore ratione ut maiores molestiae?</li>\r\n<li>Sed possimus optio aut autem quasi.</li>\r\n<li>Et quia eligendi qui vero blanditiis ad architecto cum quisquam nihil?</li>\r\n<li>Aut amet velit quo nemo doloribus.</li>\r\n<li>In commodi explicabo est optio officia.</li>\r\n<li>Aut adipisci quibusdam et aspernatur quia ea commodi dolorum eum minus distinctio.</li>\r\n</ul>\r\n<h2>Et excepturi beatae sed sapiente Quis ut asperiores officiis?</h2>\r\n<p>Ut harum sapiente sed earum voluptatum sed amet explicabo. Qui repudiandae deserunt hic consectetur quaerat <em>Et laborum sit fugit quam</em>. Vel blanditiis quia <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Et dolorum 33 dolorem autem est nostrum repellendus</a>. Aut architecto quis sit quibusdam Quis et sequi consequatur sed doloremque veniam architecto nulla ut molestiae mollitia et aspernatur accusamus! Sit quas consequatur qui aliquam quia <strong>Qui sunt sed aliquam galisum</strong> id minima placeat aut sunt beatae est fugiat voluptatem!</p>\r\n<h3>Aut dolorem repellendus qui minus ipsum.</h3>\r\n<p>Quo ipsam animi ut corporis dolor et fuga expedita et fugit laudantium sit dolore voluptatum. Et voluptatem consequuntur et omnis minus eum aliquam quisquam et eligendi excepturi id provident sequi est quaerat velit qui voluptas deleniti. In aliquam consequatur et voluptates magnam aut debitis dolor qui soluta ipsum aut amet rerum. Et similique quibusdam aut perferendis doloremqui minus in voluptas animi ab voluptas harum. Ut recusandae itaque aut nobis consequatur est quod voluptatem in enim soluta qui inventore nihil quo deleniti nisi.</p>\r\n<h4>Et alias ut dolorem laborum?</h4>\r\n<p>Quo officia rerum in cupiditate asperiores ab voluptas tempore a dolor sint vel voluptas illo ex atque sunt. Eum molestias minima vel repudiandae corporis <em>Est deleniti nam error dicta sit tempore voluptatem in consequatur animi</em>. At modi commodi <strong>Et asperiores qui ullam magnam hic dignissimos reiciendis</strong>. Sit facere dolor aut ullam ipsam a perspiciatis voluptates ut voluptas laboriosam! Aut amet eligendi qui placeat veritatis in laboriosam nobis ut deserunt internos in ipsum neque sit dolore necessitatibus.</p>\r\n<h5>Non autem qui quam quisquam?</h5>\r\n<p>Est distinctio sint est placeat sunt aut fugit porro ut quasi minus ut quae numquam rem enim voluptatem. Quo voluptas voluptatem sed optio voluptatem et eaque sit odio recusandae est omnis atque qui blanditiis provident ipsum dicta? Aut porro expedita <em>Et doloremque et adipisci perspiciatis</em>? Ut quia beatae <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Sit laudantium aut dolor possimus id consequatur quam</a>? Ut reprehenderit debitis <strong>Sit fugit ut commodi molestias et porro suscipit</strong> in doloremque placeat. Cum similique sint id perferendis nulla aut aliquid molestias 33 aliquid quisquam sed rerum odio sed cupiditate illo. Aut fuga suscipit aut voluptate cumque vel nihil aperiam sed sunt iusto vel eaque impedit id quia natus quo sapiente aliquam.</p>\r\n<p>In fugiat laborum in deserunt consequatur quo maiores voluptatem. Quo placeat quia <em>Ut illo At tempora inventore et totam dicta ut quam dolores</em> quo alias tenetur qui earum provident. Sed nulla quisquam cum eveniet delectusquo quae eos quibusdam exercitationem ad maiores laboriosam. Quo voluptate tempore ea ipsam nobis id dolores quod ut dolores commodi ea quasi aliquam. Qui nesciunt dolorem est inventore ipsa <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Ea dolore non voluptas nihil est voluptates nisi et pariatur dolorum</a>. Qui soluta reiciendis quo consectetur ducimus qui repudiandae illo a adipisci eveniet ut cupiditate deleniti et dolor repellendus aut quasi nulla. Ex aliquam laudantium id incidunt dolore ab delectus quos ut dolorem omnis. Ad maxime obcaecati eos quis distinctio eum quasi galisum! Et sunt mollitia non assumenda commodi et tempora voluptatem!</p>\r\n<p>Non voluptates galisum quo ducimus animi est eveniet dolorem ex aperiam vero sit quasi dolor 33 reprehenderit unde aut enim explicabo. Qui veniam eligendi nam illum sunt ut aliquid harum! Ut necessitatibus maxime et veniam quia sed vero nesciunt in aliquid incidunt qui galisum necessitatibus. Ut ipsa delectus aut blanditiis culpa At deleniti voluptas sit enim enim qui accusamus commodi. Aut dolores maxime ut iusto dolorem <strong>Quo consequuntur ex impedit quia</strong> eum quam atque non accusamus fugiat est galisum quia!</p>\r\n<p>Ut nisi porro ut quibusdam voluptatibus ut commodi neque sit dolore sunt est pariatur saepe rem consequuntur reprehenderit id molestias iste. Eum accusantium inventore ut quibusdam deleniti qui expedita ipsum qui saepe fugit et itaque rerum aut placeat repellat. Non delectus ametsed provident in maiores nihil. Et consequatur minus rem molestiae eligendi vel alias tempore ut velit dolor et itaque quam. Qui totam facilis aut dolorum voluptate <em>Et quia hic consequatur eius</em> et velit nihil a incidunt voluptatem id quam modi.</p>\r\n<dl>\r\n<dt><dfn>At voluptas sapiente et iste vero? </dfn></dt>\r\n<dd>Sed culpa excepturi quo adipisci quia aut quis molestias.</dd>\r\n<dt><dfn>Ea tempore deleniti eos consequuntur magnam? </dfn></dt>\r\n<dd>Eos quia sunt eligendi laboriosam qui nihil quas ut suscipit rerum.</dd>\r\n<dt><dfn>Suscipit assumenda est aliquid reiciendis. </dfn></dt>\r\n<dd>Aut officia fugiat aut galisum magnam a quia quia.</dd>\r\n</dl>\r\n<p>Quo voluptatum ratione hic laborum aspernatursit sint est inventore repellendus sed perferendis sunt. Eos perferendis fuga ab incidunt unde ea doloribus sunt aut dolorem veniam vel commodi voluptatem non omnis quia est quam suscipit! Id magnam neque ut vitae tenetur est veniam corporis id beatae asperiores et necessitatibus obcaecati et nostrum itaque? Molestiae iste est alias aspernatur sed soluta repellendus. Et enim totam ut voluptatem asperioresqui alias. Eos ducimus voluptatibus <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Id ullam in quas ducimus</a>. Qui reiciendis voluptate a atque animi ex exercitationem velit aut debitis quisquam et illo architecto qui consequatur dignissimos?</p>\r\n<p>Sit reprehenderit rerum id fuga esse nam assumenda asperiores id eius illum eum perferendis galisum? In ipsam inventore <em>Cum quasi non nisi vitae aut sunt deserunt qui voluptatem</em> rem amet dolorem nam optio laudantium. Ut optio voluptatem ut voluptatumet aliquid est quos dolores. Et corporis reprehenderit ad illum Quis aut temporibus officiis cum dolore voluptatem aut accusamus vitae ab voluptatem consequuntur. Eos consequuntur praesentium in ratione suscipit eum sunt nesciunt eos maiores omnis eum enim tempore ut error consequatur. Id voluptas odit ut voluptatum enim et maiores dolorum ea mollitia molestiae. 33 fugiat dolores <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Aut voluptatem ut amet obcaecati</a>.</p>', 'Lorem ipsum dolor sit amet. Et fuga optio qui ratione itaque et ducimus corrupti eum reprehenderit libero est sunt magnam. Est praesentium quia aut tempora enim aut tempora quia. Eum possimus facere et optio temporibus sit velit officiis sit enim neque sed iusto recusandae qui voluptatem autem. Qui ipsa nisi qui culpa dolores et sunt voluptas sed quia aspernatur hic magni provident et galisum molestiae et dolores iste.', 'https://images5.alphacoders.com/685/thumb-1920-685514.jpg', '2022-06-16 16:32:53'),
(16, 16, 'Wpis prezentacyjny #3', '<h1>Qui culpa omnis ut consequatur excepturi aut mollitia quia.</h1>\r\n<p>Lorem ipsum dolor sit amet. Ea sunt eveniet ut vero laboriosam <strong>Cum distinctio</strong>. Sit doloribus omnis sit doloremque saepe in provident tempore cum maxime rerum sed maiores deserunt! A debitis repellat rem fugit earum ut voluptas tempora. Et nihil nesciunt et perspiciatis reiciendis et nulla rerum ut soluta pariatur. Id voluptatibus maiores rem perferendis corporis est atque praesentium est totam itaque ut corporis unde.</p>\r\n<ol>\r\n<li>Sit molestiae culpa qui suscipit rerum quo iure dignissimos sit optio quos.</li>\r\n<li>Ut fugit facere ea esse itaque qui iure eligendi.</li>\r\n<li>Qui dolorem pariatur qui voluptatum corporis et eveniet doloribus.</li>\r\n<li>Ut magnam nihil sed impedit earum ex nulla vero voluptas impedit.</li>\r\n</ol>\r\n<ul>\r\n<li>Id fugit facilis ea tempore ratione ut maiores molestiae?</li>\r\n<li>Sed possimus optio aut autem quasi.</li>\r\n<li>Et quia eligendi qui vero blanditiis ad architecto cum quisquam nihil?</li>\r\n<li>Aut amet velit quo nemo doloribus.</li>\r\n<li>In commodi explicabo est optio officia.</li>\r\n<li>Aut adipisci quibusdam et aspernatur quia ea commodi dolorum eum minus distinctio.</li>\r\n</ul>\r\n<h2>Et excepturi beatae sed sapiente Quis ut asperiores officiis?</h2>\r\n<p>Ut harum sapiente sed earum voluptatum sed amet explicabo. Qui repudiandae deserunt hic consectetur quaerat <em>Et laborum sit fugit quam</em>. Vel blanditiis quia <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Et dolorum 33 dolorem autem est nostrum repellendus</a>. Aut architecto quis sit quibusdam Quis et sequi consequatur sed doloremque veniam architecto nulla ut molestiae mollitia et aspernatur accusamus! Sit quas consequatur qui aliquam quia <strong>Qui sunt sed aliquam galisum</strong> id minima placeat aut sunt beatae est fugiat voluptatem!</p>\r\n<h3>Aut dolorem repellendus qui minus ipsum.</h3>\r\n<p>Quo ipsam animi ut corporis dolor et fuga expedita et fugit laudantium sit dolore voluptatum. Et voluptatem consequuntur et omnis minus eum aliquam quisquam et eligendi excepturi id provident sequi est quaerat velit qui voluptas deleniti. In aliquam consequatur et voluptates magnam aut debitis dolor qui soluta ipsum aut amet rerum. Et similique quibusdam aut perferendis doloremqui minus in voluptas animi ab voluptas harum. Ut recusandae itaque aut nobis consequatur est quod voluptatem in enim soluta qui inventore nihil quo deleniti nisi.</p>\r\n<h4>Et alias ut dolorem laborum?</h4>\r\n<p>Quo officia rerum in cupiditate asperiores ab voluptas tempore a dolor sint vel voluptas illo ex atque sunt. Eum molestias minima vel repudiandae corporis <em>Est deleniti nam error dicta sit tempore voluptatem in consequatur animi</em>. At modi commodi <strong>Et asperiores qui ullam magnam hic dignissimos reiciendis</strong>. Sit facere dolor aut ullam ipsam a perspiciatis voluptates ut voluptas laboriosam! Aut amet eligendi qui placeat veritatis in laboriosam nobis ut deserunt internos in ipsum neque sit dolore necessitatibus.</p>\r\n<h5>Non autem qui quam quisquam?</h5>\r\n<p>Est distinctio sint est placeat sunt aut fugit porro ut quasi minus ut quae numquam rem enim voluptatem. Quo voluptas voluptatem sed optio voluptatem et eaque sit odio recusandae est omnis atque qui blanditiis provident ipsum dicta? Aut porro expedita <em>Et doloremque et adipisci perspiciatis</em>? Ut quia beatae <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Sit laudantium aut dolor possimus id consequatur quam</a>? Ut reprehenderit debitis <strong>Sit fugit ut commodi molestias et porro suscipit</strong> in doloremque placeat. Cum similique sint id perferendis nulla aut aliquid molestias 33 aliquid quisquam sed rerum odio sed cupiditate illo. Aut fuga suscipit aut voluptate cumque vel nihil aperiam sed sunt iusto vel eaque impedit id quia natus quo sapiente aliquam.</p>\r\n<p>In fugiat laborum in deserunt consequatur quo maiores voluptatem. Quo placeat quia <em>Ut illo At tempora inventore et totam dicta ut quam dolores</em> quo alias tenetur qui earum provident. Sed nulla quisquam cum eveniet delectusquo quae eos quibusdam exercitationem ad maiores laboriosam. Quo voluptate tempore ea ipsam nobis id dolores quod ut dolores commodi ea quasi aliquam. Qui nesciunt dolorem est inventore ipsa <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Ea dolore non voluptas nihil est voluptates nisi et pariatur dolorum</a>. Qui soluta reiciendis quo consectetur ducimus qui repudiandae illo a adipisci eveniet ut cupiditate deleniti et dolor repellendus aut quasi nulla. Ex aliquam laudantium id incidunt dolore ab delectus quos ut dolorem omnis. Ad maxime obcaecati eos quis distinctio eum quasi galisum! Et sunt mollitia non assumenda commodi et tempora voluptatem!</p>\r\n<p>Non voluptates galisum quo ducimus animi est eveniet dolorem ex aperiam vero sit quasi dolor 33 reprehenderit unde aut enim explicabo. Qui veniam eligendi nam illum sunt ut aliquid harum! Ut necessitatibus maxime et veniam quia sed vero nesciunt in aliquid incidunt qui galisum necessitatibus. Ut ipsa delectus aut blanditiis culpa At deleniti voluptas sit enim enim qui accusamus commodi. Aut dolores maxime ut iusto dolorem <strong>Quo consequuntur ex impedit quia</strong> eum quam atque non accusamus fugiat est galisum quia!</p>\r\n<p>Ut nisi porro ut quibusdam voluptatibus ut commodi neque sit dolore sunt est pariatur saepe rem consequuntur reprehenderit id molestias iste. Eum accusantium inventore ut quibusdam deleniti qui expedita ipsum qui saepe fugit et itaque rerum aut placeat repellat. Non delectus ametsed provident in maiores nihil. Et consequatur minus rem molestiae eligendi vel alias tempore ut velit dolor et itaque quam. Qui totam facilis aut dolorum voluptate <em>Et quia hic consequatur eius</em> et velit nihil a incidunt voluptatem id quam modi.</p>\r\n<dl>\r\n<dt><dfn>At voluptas sapiente et iste vero? </dfn></dt>\r\n<dd>Sed culpa excepturi quo adipisci quia aut quis molestias.</dd>\r\n<dt><dfn>Ea tempore deleniti eos consequuntur magnam? </dfn></dt>\r\n<dd>Eos quia sunt eligendi laboriosam qui nihil quas ut suscipit rerum.</dd>\r\n<dt><dfn>Suscipit assumenda est aliquid reiciendis. </dfn></dt>\r\n<dd>Aut officia fugiat aut galisum magnam a quia quia.</dd>\r\n</dl>\r\n<p>Quo voluptatum ratione hic laborum aspernatursit sint est inventore repellendus sed perferendis sunt. Eos perferendis fuga ab incidunt unde ea doloribus sunt aut dolorem veniam vel commodi voluptatem non omnis quia est quam suscipit! Id magnam neque ut vitae tenetur est veniam corporis id beatae asperiores et necessitatibus obcaecati et nostrum itaque? Molestiae iste est alias aspernatur sed soluta repellendus. Et enim totam ut voluptatem asperioresqui alias. Eos ducimus voluptatibus <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Id ullam in quas ducimus</a>. Qui reiciendis voluptate a atque animi ex exercitationem velit aut debitis quisquam et illo architecto qui consequatur dignissimos?</p>\r\n<p>Sit reprehenderit rerum id fuga esse nam assumenda asperiores id eius illum eum perferendis galisum? In ipsam inventore <em>Cum quasi non nisi vitae aut sunt deserunt qui voluptatem</em> rem amet dolorem nam optio laudantium. Ut optio voluptatem ut voluptatumet aliquid est quos dolores. Et corporis reprehenderit ad illum Quis aut temporibus officiis cum dolore voluptatem aut accusamus vitae ab voluptatem consequuntur. Eos consequuntur praesentium in ratione suscipit eum sunt nesciunt eos maiores omnis eum enim tempore ut error consequatur. Id voluptas odit ut voluptatum enim et maiores dolorum ea mollitia molestiae. 33 fugiat dolores <a href=\"https://www.loremipzum.com\" target=\"_blank\" rel=\"noopener\">Aut voluptatem ut amet obcaecati</a>.</p>', 'Lorem ipsum dolor sit amet. Et fuga optio qui ratione itaque et ducimus corrupti eum reprehenderit libero est sunt magnam. Est praesentium quia aut tempora enim aut tempora quia. Eum possimus facere et optio temporibus sit velit officiis sit enim neque sed iusto recusandae qui voluptatem autem. Qui ipsa nisi qui culpa dolores et sunt voluptas sed quia aspernatur hic magni provident et galisum molestiae et dolores iste.', 'https://images5.alphacoders.com/685/thumb-1920-685514.jpg', '2022-06-16 16:32:53');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(64) NOT NULL,
  `password` char(32) NOT NULL,
  `access_token` char(32) NOT NULL,
  `auth_key` char(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `access_token`, `auth_key`, `name`, `date_created`, `date_modified`) VALUES
(16, 'Kamil', '64a4e327e97c1e7926f9240edb937362', 'pUj0VdxmgL4ng6HhWV0eux7CBv2HLmzA', 'Pv5m778dwzn3BEOlWwdszmFugHXubxWC', 'Kamil', '2022-06-14 19:11:56', '2022-06-16 16:55:28');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;