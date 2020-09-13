-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 04:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Carrie', 'Reynolds', '2020-07-10 10:38:26', '2020-07-10 10:38:26'),
(2, 'Maymie', 'Koepp', '2020-07-10 10:38:26', '2020-07-10 10:38:26'),
(3, 'Renee', 'Jaskolski', '2020-07-10 10:38:26', '2020-07-10 10:38:26'),
(4, 'Deja', 'Balistreri', '2020-07-10 10:38:27', '2020-07-10 10:38:27'),
(5, 'Ida', 'Dietrich', '2020-07-10 10:38:27', '2020-07-10 10:38:27'),
(6, 'Milford', 'Koch', '2020-07-10 10:38:27', '2020-07-10 10:38:27'),
(7, 'Russell', 'Lemke', '2020-07-10 10:38:27', '2020-07-10 10:38:27'),
(8, 'Reymundo', 'Mitchell', '2020-07-10 10:38:27', '2020-07-10 10:38:27'),
(9, 'Elton', 'Krajcik', '2020-07-10 10:38:27', '2020-07-10 10:38:27'),
(10, 'Modesto', 'Zulauf', '2020-07-10 10:38:27', '2020-07-10 10:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', '2020-07-10 12:38:10', NULL),
(2, 'Hardware', '2020-07-10 12:38:10', NULL),
(3, 'Games', '2020-07-10 12:38:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `src`, `alt`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'ryzen 3.jpg', 'ryzen', 1, '2020-07-10 14:38:42', NULL),
(2, 'sony.jpg', 'sony', 2, '2020-07-10 14:38:33', NULL),
(3, 'ryzen 9 3900x.jpg', 'ryzen 9 3900x', 3, '2020-07-10 14:42:01', NULL),
(4, 'samsung-buds.jpg', 'samsung-buds', 4, '2020-07-10 14:44:25', NULL),
(5, 'thunderbolt.jpg', 'thunderbolt', 5, '2020-07-10 14:47:13', NULL),
(6, 'apple.png', 'apple', 6, '2020-07-11 13:32:15', NULL),
(7, 'killing-flor.jpg', 'killing-flor', 7, '2020-07-11 13:24:00', NULL),
(8, 'android-10.jpg', 'android-10', 8, '2020-07-10 15:01:03', NULL),
(9, 'samsung-a31.jpg', 'samsung-a31', 9, '2020-07-10 15:00:36', NULL),
(10, 'lenovo.jpg', 'lenovo', 10, '2020-07-10 14:59:53', NULL),
(12, 'cs-go.jpg', 'cs-go', 12, '2020-07-11 13:32:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2020_07_06_154321_create_authors_table', 1),
(12, '2020_07_06_154347_create_categories_table', 1),
(13, '2020_07_06_154403_create_posts_table', 1),
(14, '2020_07_10_114026_create_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `date`, `description`, `category_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 'AMD: Zen 3 is on track to launch in 2020 and looking great', '2020-07-10 12:12:34', 'Highly anticipated: AMD boss Dr. Lisa Su has reiterated that Zen 3 is on track to launch later this year, adding that the architecture is “looking great in the labs.” There had been rumors that the new CPUs wouldn’t arrive until 2021, but this is the second time the company has assured fans they’ll be here within the next five months.\r\nFears that we wouldn’t see Zen 3 in 2020 were already gathering because of the Covid-19 crisis, which has delayed several product launches. It was starting to look like the rumors were true when DigiTimes published a report stating that the Ryzen 4000 desktop CPUs wouldn’t get here until next year, allegedly because the current 3000 series was performing so well against Intel’s offerings. Additionally, the launch of the 3000XT series was considered more evidence of a 2021 Zen 3 launch.\r\n\r\nAMD quickly refuted the report, calling rumors of the delay “inaccurate.” Yesterday, in a video celebrating the first anniversary of the 3rd-gen Ryzen processors and Radeon 5000 series, as well as the launch of the 3000XT CPUs, Su once again confirmed that Zen 3 was on track for a 2020 release.\r\n\r\nWe recently heard that Ryzen 4000 desktop processors, codenamed Vermeer, are about to enter mass production. The chips are rumored to boast massive IPC (instructions per clock) gains over their predecessors, meaning some consumers could hold off buying current 3000-series CPUs in favor of Zen 3, despite AMD offering a free copy of Assassin’s Creed Valhalla as an incentive for buyers of certain Zen 2 chips.\r\n\r\nSu also mentions the new 3000XT chips in the video. We were far from impressed by the tiny performance improvements offered by the three processors, advising buyers to opt for the cheaper non-XT 3000-series instead, or you could always wait for Zen 3.\r\n\r\n\r\n\r\n', 2, 10, '2020-07-10 12:45:33', '2020-07-10 10:38:34'),
(2, 'Sony invests $250 million into Epic Games', '2020-07-10 12:12:34', 'Sony has made a $250 million investment into Epic Games, granting it a minority share of the company and opening the door to a deeper collaboration between them. Specific plans for the future weren\'t revealed, but Epic said in a statement that the investment will blend \"Sony’s leading portfolio of entertainment assets and technology, and Epic’s social entertainment platform and digital ecosystem to create unique experiences for consumers and creators.\"\r\n\r\n\"Epic\'s powerful technology in areas such as graphics places them at the forefront of game engine development with Unreal Engine and other innovations,\" said Sony Corporation chairman, president, and CEO Kenichiro Yoshida. \"There\'s no better example of this than the revolutionary entertainment experience, Fortnite. \r\n\r\n\"Through our investment, we will explore opportunities for further collaboration with Epic to delight and bring value to consumers and the industry at large, not only in games, but also across the rapidly evolving digital entertainment landscape.\"\r\n\r\nEpic CEO Tim Sweeney also suggested that the partnership will go beyond videogames. \"We share a vision of real-time 3D social experiences leading to a convergence of gaming, film, and music,\" he said. \"Together we strive to build an even more open and accessible digital ecosystem for all consumers and content creators alike.\"\r\n\r\nSony has recently shown a heightened interest in PC gaming—the previously PS4-exclusive Horizon: Zero Dawn is coming our way this summer, for one obvious example—but likely even more relevant to the partnership is Epic\'s focus on bringing its technology to the world of movie-making. The Unreal Engine website touts its capabilities for \"episodic animation, live-action blockbusters, or short-form content,\" and for a company like Sony—which, in case you weren\'t aware, makes a few movies here and there—that could be a major asset.\r\n\r\nAlso interesting, as Niko Partners senior analyst Daniel Ahmad noted on Twitter, is that while Sony\'s investment isn\'t that much terribly smaller than Tencent put into Epic in 2012, it\'s getting a much smaller slice of the pie. Timing is everything.', 3, 9, '2020-07-10 14:34:14', '2020-07-10 10:38:34'),
(3, 'AMD RYZEN 9 3900XT REVIEW', '2020-07-10 12:12:34', 'The AMD Ryzen 9 3900X was released exactly a year ago today. And we loved it. Loads of cores and decent gaming performance made it one of our favorite CPUs, and cemented its place in our best CPU guide. On paper this brand new Ryzen 9 3900XT takes that impressive chip and squeezes just a little more power out of it. The base clocks are unchanged at 3.8GHz, but the Boost goes from 4.6GHz up to 4.7GHz. Yup, a whole 100MHz.\r\n\r\nAMD RYZEN 9 3900XT SPECS\r\nCores: 12\r\nThreads: 24\r\nBase clock: 3.8GHz\r\nMax boost clock: 4.7GHz\r\nL3 Cache: 64MB\r\nMemory support: DDR4 3200MHz\r\nSocket: AM4\r\nTDP: 105 W\r\nCooler: None\r\nLaunch price: $499 (£499)\r\n\r\nYou may be wondering how AMD has managed to squeeze an extra 100MHz out of this chip, even if it is only at boost, and apparently it\'s down to a better understanding of the 7nm production process. There are no other changes, though. The core and thread counts are the same, the cache levels are unchanged, and there are no tweaks to the underlying architecture.\r\n\r\nWhat is different, compared to the existing 3900X, is you don\'t get the Wraith Prism cooler with the 3900XT. So essentially you gain 100MHz to the Boost clock and lose a cooler for the trouble.\r\n\r\nI\'m a big fan of AMD\'s coolers, and have used them in plenty of builds without issue. While there is certainly an argument for the 3900XT being at the limit of what the Wraith Prism can handle, and that plenty of high-end builders will want to go down the AIO route for such a high-end chip, having the option of doing so is very different to being forced to. Of course this was true of the 16-core, 32-thread Ryzen 9 3950X, but that chip really does push what the Wraith can handle. I don\'t have the same feeling about the 3900XT.\r\n\r\nThe Ryzen 9 3900XT, like the 3900X before it, is a beast of a mainstream processor. 12 cores and 24 threads gives you lots of raw power if you\'re a content creator that needs to produce videos and/or dabble in some 3D rendering. The 3900XT chews through such workloads in a way few desktops processors can, and it really pulls ahead of Intel\'s finest in such tasks.', 2, 5, '2020-07-10 14:36:49', '2020-07-10 10:38:34'),
(4, 'Samsung Galaxy Buds Live TWS earphones images reveal colors, charging case design', '2020-07-10 12:12:34', 'Back in April, we got our first look at Samsung\'s bean-shaped Galaxy Buds Live TWS earphones and today a fresh set of renders have been shared by Evan Blass, showing the earphones in Mystic Bronze color.\r\n\r\nYou can see that the Buds Live earphones have a glossy finish and there are two microphones on the outside along with a grille. The inside of the Buds Live isn\'t shown in the images but going by previous leaks the earphones won\'t come with silicon tips which could affect sound isolation. Another picture shows the Buds Live in three colors with the charging case. The lid of the case appears to have a rubber strip and you can also see the two LED charging indicators - one on the inside between the slots for the two buds, and the other on the outside on the front. The Galaxy Buds Live are rumored to be announced later this month with a price tag below $150.\r\n', 1, 1, '2020-07-10 13:25:22', '2020-07-10 10:38:34'),
(5, 'Thunderbolt 4 is official, will debut in PCs with Intel Tiger Lake CPUs later this year', '2020-07-10 12:12:34', 'In brief: Thunderbolt 4 is here and adds impressive capabilities in every Type-C port that will support it. The new standard is meant to declutter your desk space and push everyone towards universal cables, but USB4 looks more likely to dominate in the long run.\r\nToday, Intel announced the Thunderbolt 4 specification with a series of improvements over Thunderbolt 3. The new standard will offer the same speed of up to 40 Gbps, but is designed to remove some of the confusion that has governed the Thunderbolt 3 realm for a decade.\r\n\r\nAs expected, Thunderbolt 4 is USB4-compliant and will debut with Intel\'s upcoming Tiger Lake mobile CPUs, courtesy of the Maple Ridge 8000 Series controller. The new protocol is also backwards-compatible with all Thunderbolt 3 and USB 3.1 (or higher) devices and accessories.\r\n\r\nIntel says Thunderbolt 4 will support up to two 4K monitors or one 8K monitor at 60 Hz, which is a welcome improvement over the previous standard. And while Thunderbolt 3 only required 16 Gbps PCIe connections, Thunderbolt 4 requires 32 Gbps of PCIe bandwidth to do its magic and allow external storage speeds of up to 3,000 MB per second.', 2, 6, '2020-07-10 14:47:28', '2020-07-10 10:38:34'),
(6, 'Apple says ARM Macs will support Thunderbolt well into the future', '2020-07-10 12:12:34', 'Bottom line: Apple\'s aggressive transition from Intel processors to ARM-based ones is no doubt a major inflection point for the Cupertino company. However, Thunderbolt still has an important place in future Macs, even though historically speaking it\'s been somewhat dependent on the presence of an Intel processor in the same system.\r\nIntel on Wednesday detailed its new Thunderbolt 4 standard, which doesn\'t come with speed improvements but represents an evolution of Thunderbolt 3 in almost every other sense. But as with every new standard, it left many with the question of which manufacturers would commit to supporting it.\r\n\r\nFor one, AMD\'s position hasn\'t changed -- the company sees little reason to go for Thunderbolt 4 despite it being essentially a superset of USB4 with better capabilities and somewhat more clear branding. With Thunderbolt 4, Intel has made cable certification even more expensive which will translate into pricier cables, just like with Thunderbolt 3.\r\n\r\nAs for Apple, the company didn\'t mention Thunderbolt for its upcoming Macs with ARM-based CPUs when it revealed its two-year transition plan at WWDC. Now the company has told The Verge that \"we remain committed to the future of Thunderbolt and will support it in Macs with Apple silicon,\" quelling some of the concerns that it might soon drop the protocol from its products.', 2, 7, '2020-07-10 14:47:54', '2020-07-10 10:38:34'),
(7, 'Killing Floor 2, The Escapists 2, and Lifeless Planet are free for the week from Epic', '2020-07-10 12:12:34', 'A new Thursday is upon us, this one delivering not one, not two, but three—three!— free games from the Epic Games Store. The headliner this week is Killing Floor 2, the co-op FPS about massacring endless waves of zombies—called Zeds in this particular undead setting—who are rampaging across Europe.\r\n\r\nKF2 has actually been out for several years now—it debuted in Early Access in 2015—but Tripwire Interactive has been actively updating it with new weapons, enemies, maps, and events throughout. There\'s still a solid base of players on Steam, and crossplay between the Epic and Steam releases will be supported, so newcomers will be able to hop into the action with the existing crew of Zed-killers.\r\n\r\nAlso up this week is Lifeless Planet, an exploration-adventure about an international team of astronauts that crash-lands on a distant planet and discovers a small Russian town. Weird, right? The second half of the game doesn\'t support the promise of the first, but the setting is like a Golden Age sci-fi novel cover come to life and that\'s good enough for me.\r\n\r\nAnd finally, we have The Escapists 2, a game about living in—and, more to the point, busting out of—the toughest prisons in the world. It was actually supposed to be free a few weeks ago, but something went wrong with the Epic Games Store release, so here it is now.\r\n\r\nKilling Floor 2, Lifeless Planet, and The Escapists 2 are free on the Epic Games Store until July 16, when Runic\'s hit action-RPG Torchlight 2 will take their place on the freebie block. For more free stuff, be sure to keep an eye on our running list of all the free games you can grab right now.\r\n\r\n', 3, 8, '2020-07-10 14:35:04', '2020-07-10 10:38:34'),
(8, 'Google’s efforts in making updates faster have paid off, Android 10 fastest adopted update', '2020-07-10 12:12:34', 'We’ve all heard the argument that Apple iPhones update quickly because Apple controls both hardware and software. With the hundreds of unique devices that run Android, its very difficult to have this same speed and effectiveness of major updates – not to mention, the vast differences of software that OEMs offer. Google has been able to push many updates through Google Play Services, even if devices are no longer receiving major OS updates.\r\n\r\nIn a Google Developers Blog post, it’s revealed that Android 10 was the quickest adopted Android version ever. Of course, it didn’t happen overnight. Google gradually introduced new practices over the past few years to speed up the update process for OEMs while also testing newer version of Android much earlier through Developer and Public Beta programs for Google Pixels, and other OEMs.In Android Oreo, Google introduced Project Treble, which modulated the core Android OS seperate from OEMs skin customizations. This sped up Android Pie adoption by 2.5X compared to Oreo. Every smartphone that came with Android Oreo was compliant with Treble.\r\n\r\nThen with Android Pie, Google launched a Developer Preview program with other OEMs so that pre-Beta builds could be tested across more smartphone models prior to release. This sped up Android 10 adoption by 1.5X compared to Pie.\r\n\r\nWith Android 10, Google’s Project Mainline made it possible to update critical apps and elements of Android via Google Play. This is what Google used to update 2 billion devices with the Exposure Notification API that was developed for contact-tracing COVID-19.', 1, 5, '2020-07-10 14:53:06', '2020-07-10 10:38:34'),
(9, 'Samsung Galaxy A31 review\r\n', '2020-07-10 12:12:34', 'Navigating Samsung\'s sprawling device lineup in 2020 is no easy task. The Korean giant is hardly the root of the problem but is still part of the trend. Through a combination of factors and processes, we currently have a potent smartphone market where both model volume and turn-over are at an all-time high. That\'s especially true for the budget and mid-ranger space, which is precisely where the Galaxy A31 positions itself.It is one of Samsung\'s cheaper entry points into the sought-after Super AMOLED display tech, giving it a neck up ahead of siblings like the Galaxy A11 and A21s. The confusion starts to settle in once you look further up the Galaxy A device lineup, though. Particularly the Galaxy A41, which the A31 manages to outpace with a longer 6.4-inch screen diagonal and a larger 5,000 mAh battery. An odd choice, for sure, especially since the A41 is a bit more expensive in stores than the A31.Things get weirder still when the Galaxy M family comes into play. The Galaxy M21 offers the same 6.4-inch Super AMOLED display, paired with a bigger 6,000 mAh battery and a slightly different chipset. The in-house Exynos 9611 might be lacking behind the A31\'s MediaTek P65 in raw performance, but it is made on a more-efficient 10nm manufacturing node and impressively manages to squeeze 4K video recording and gyro-based EIS from a nearly identical main camera setup. To get the same kind of video capture versatility from a Galaxy A series device, you have to look at the more expensive Galaxy A51, which relies on the Exynos 9611 chipset, just like the Galaxy M21 and has a smaller 4,000 mAh battery.', 1, 4, '2020-07-10 14:54:10', '2020-07-10 10:38:34'),
(10, 'Lenovo\'s latest touchscreen portable display adds 14\" of screen real estate', '2020-07-10 12:12:34', 'Why it matters: Portable displays are a fairly uncommon purchase outside of commercial establishments, but they do tend to offer a good mix of flexibility, functionality, and freedom to PC users with particular workflow requirements. Lenovo\'s M14t is among such hardware that looks to enhance the productivity of creatives, animators, and presenters with a 14\" Full HD portable touchscreen that\'s also a USB Type-C hub.\r\nLenovo has announced the new ThinkVision M14t mobile display for PC users looking to extend their screen space, albeit in a sleek, minimal fashion minus the heft that comes with a full-on standard monitor. The 14-inch 1080p peripheral adds 10-point touchscreen functionality to existing non-touch display setups and comes with an included active stylus that offers 4096 levels of pressure sensitivity for digital artists, graphic designers, and annotators.\r\n\r\nLike its non-touch predecessor, the M14t supports up to 300 nits of brightness and features tilt and height adjustment, alongside 2 x USB-C ports. These also allow for passthrough charging to a connected device, besides video and data transfer capability. The monitor works in both landscape and portrait mode and has automatic screen rotation support.', 2, 9, '2020-07-10 14:55:42', '2020-07-10 10:38:34'),
(12, 'CS:GO\'s Trusted Mode anticheat system is live, but it\'s causing problems', '2020-07-10 12:12:34', 'Counter-Strike: Global Offensive\'s new anti-cheat system has been introduced in the game\'s latest update, but its rollout has been anything but smooth.\r\n\r\nTrusted Mode blocks the vast majority of external processes from interacting with the game, requiring players to close any offending programs and restart CS:GO before access will be granted. While trusted mode can be disabled through adding \"-untrusted\" to the game\'s launch options in Steam, doing so will not only prevent you from accessing any VAC-enabled servers, it also reduces your trust factor, which in turn impacts on how matchmaking works.\r\n\r\nUnofficial game modes, such as those downloaded through and run on community servers, may need to be run with trusted mode disabled in order to even work. Considering community servers and custom game modes have been at the heart of Counter-Strike since forever, this is an absolutely bizarre decision.\r\n\r\nEven worse, ordinary players are reporting that software such as OBS, Discord, Spotify and Nvidia Game Filter are falling foul of Trusted Mode, despite having no impact on the game itself. Another problem is that the game doesn\'t actually tell you which process is triggering trusted mode, meaning players are finding themselves barred from the game with no idea why.\r\n\r\nIf players manage to get through to a match, they are also reporting large performance decreases. A precise cause for this hasn\'t been determined yet, although some are reporting closing other programs (that didn\'t get caught by Trusted Mode) rectified the issue.\r\n\r\nUnfortunately, there isn\'t anything individual players can do to get their favourite programs working with CS:GO again aside from disabling trusted mode entirely and suffering the consequences. It is up to the software\'s developer to ensure their files are \"digitally signed with an Authenticode signature\" in order to comply with the new system, and even then, Valve says it maintains the right to block any signed code that \"interferes with the game in any way\".\r\n\r\nValve is yet to release any statement regarding the issues players have been facing since the update launched.', 3, 3, '2020-07-10 14:35:43', '2020-07-10 10:38:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
