-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2023 lúc 08:30 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhahangsushi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `href_param` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `href_param`) VALUES
(1, 'Sushi', 'bep-tu'),
(2, 'Sashimi', 'bep-dien-tu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `subject_name` varchar(350) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `phone_number`, `subject_name`, `note`, `status`, `created_at`, `updated_at`, `fullname`) VALUES
(1, 'tranvandiep.it@gmail.com', '1234567890', 'Khoa hoc PHP/Laravel', 'Dang ky khoa hoc', 1, '2022-09-11 15:01:36', '2023-09-20 18:58:18', 'TRAN VAN DIEP'),
(3, 'gokisoft.com@gmail.com', '0967025996', 'HTML5/CSS3', '34234234234', 1, NULL, '2023-09-20 18:58:20', 'TRAN VAN A'),
(4, 'huy132546@gmail.com', '0364938256', 'noi', 'jijijijijijij', 1, NULL, '2023-09-20 18:58:17', 'Bùi Quang Huy'),
(5, 'huy132546@gmail.com', '0364938256', 'â', 'a', 0, NULL, NULL, 'Bùi Quang Huy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--
-- Error reading structure for table nhahangsushi.lienhe: #1030 - Got error 194 &quot;Tablespace is missing for a table&quot; from storage engine InnoDB
-- Error reading data for table nhahangsushi.lienhe: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `nhahangsushi`.`lienhe`' at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_28_074205_create_role_table', 2),
(6, '2022_07_28_074314_alter_user_table', 3),
(7, '2022_07_28_074339_create_category_table', 3),
(8, '2022_07_28_074401_create_product_table', 3),
(9, '2022_07_28_074428_create_gallery_table', 3),
(10, '2022_07_28_074527_create_feedback_table', 3),
(11, '2022_07_28_074546_create_orders_table', 3),
(12, '2022_07_28_074600_create_order_details_table', 4),
(13, '2022_07_28_074612_create_news_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `href_param` varchar(250) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `href_param`, `thumbnail`, `content`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 1),
(2, '9/9 giảm 50%', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/maguro_sushi.png', '<table border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Ch&iacute;nh S&aacute;ch Bảo Mật</strong></p>\r\n\r\n			<p>Đối với ZicZacVN việc bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n cho kh&aacute;ch h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, v&igrave; thế n&ecirc;n ch&uacute;ng t&ocirc;i đảm bảo chắc chắn cố gắng hết sức bảo mật th&ocirc;ng tin ri&ecirc;ng tư của bạn trong bất k&igrave; t&igrave;nh huống n&agrave;o.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Đ&acirc;y l&agrave; ch&iacute;nh s&aacute;ch bảo mật của ch&uacute;ng t&ocirc;i, ở đ&acirc;y ch&uacute;ng t&ocirc;i sẽ thu thập v&agrave; xử l&iacute; những th&ocirc;ng tin khi kh&aacute;ch h&agrave;ng đăng k&iacute; sử dụng dịch vụ tr&ecirc;n ZicZacVN.com. Nếu bạn đồng &yacute; sử dụng c&aacute;c dịch vụ của ZicZacVN.com th&igrave; đồng nghĩa với việc bạn ho&agrave;n to&agrave;n chấp nhận những nội dung trong &ldquo;Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y&rdquo;. Ch&iacute;nh s&aacute;ch n&agrave;y ch&uacute;ng t&ocirc;i c&oacute; ho&agrave;n to&agrave;n quyền thay đổi hay chỉnh sửa nội dung m&agrave; kh&ocirc;ng cần phải th&ocirc;ng b&aacute;o cho bất k&igrave; ai, tất cả th&ocirc;ng tin đăng tải đều sẽ c&oacute; hiệu lực ngay lập tức kể từ l&uacute;c đăng l&ecirc;n th&agrave;nh c&ocirc;ng.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Những th&ocirc;ng tin ch&uacute;ng t&ocirc;i sẽ thu thập</strong></p>\r\n\r\n			<p>Tất cả những dịch vụ tr&ecirc;n ZicZacVN.com c&aacute;c bạn muốn sử dụng th&igrave; phải đăng k&iacute; th&agrave;nh vi&ecirc;n cũng như chấp nhận cung cấp những th&ocirc;ng tin c&aacute; nh&acirc;n cần thiết cho dịch vụ l&ecirc;n website ZicZacVN.com của ch&uacute;ng t&ocirc;i, những th&ocirc;ng tin đ&oacute; bao gồm như sau:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Th&ocirc;ng tin c&ocirc;ng ty, cửa h&agrave;ng k&egrave;m địa chỉ.</p>\r\n\r\n			<p>T&ecirc;n c&aacute; nh&acirc;n li&ecirc;n hệ, độ tuổi.</p>\r\n\r\n			<p>Số điện thoại c&aacute; nh&acirc;n, email c&aacute; nh&acirc;n hoặc c&ocirc;ng ty, số điện thoại b&agrave;n c&ocirc;ng ty</p>\r\n\r\n			<p>Địa chỉ IP (c&aacute;i n&agrave;y ch&uacute;ng t&ocirc;i sẽ lấy tự động dựa v&agrave;o vị tr&iacute; địa l&iacute; l&uacute;c bạn đăng nhập hoặc truy cập website ZicZacVN.com n&ecirc;n kh&ocirc;ng cần khai b&aacute;o)</p>\r\n\r\n			<p>Ch&uacute;ng t&ocirc;i sẽ bảo vệ th&ocirc;ng tin của c&aacute;c bạn như thế n&agrave;o?</p>\r\n\r\n			<p>Những th&ocirc;ng tin c&aacute; nh&acirc;n ch&uacute;ng t&ocirc;i thu thập được tr&ecirc;n m&aacute;y chủ v&agrave; xử l&iacute; tr&ecirc;n đ&oacute;, ch&uacute;ng t&ocirc;i bảo vệ ch&uacute;ng bằng h&igrave;nh thức bảo vệ vật l&yacute;, điện tử bao gồm:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Tường lửa.</strong></p>\r\n\r\n			<p>M&atilde; h&oacute;a dự liệu.</p>\r\n\r\n			<p>Tất cả đều được &aacute;p dụng dựa tr&ecirc;n quy định của luật bảo mật th&ocirc;ng tin do ch&iacute;nh phủ đề ra. ZicZacVN.com sẽ bảo vệ th&ocirc;ng tin n&agrave;y v&agrave; chỉ cho ph&eacute;p những nh&acirc;n vi&ecirc;n c&oacute; tr&aacute;ch nhiệm lấy th&ocirc;ng để ho&agrave;n th&agrave;nh c&ocirc;ng việc được giao trong hệ thống ZicZacVN.com m&agrave; th&ocirc;i.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>C&aacute;ch sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của ZicZacVN.com</strong></p>\r\n\r\n			<p>Ch&uacute;ng t&ocirc;i l&agrave; c&ocirc;ng ty lớn v&agrave; v&ocirc; c&ugrave;ng uy t&iacute;n do đ&oacute; việc sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng cũng rất cẩn thận. Ch&uacute;ng t&ocirc;i chỉ sử dụng khi cần thiết để qu&aacute; tr&igrave;nh sử dụng dịch vụ b&ecirc;n ZicZacVN.com được ho&agrave;n th&agrave;nh tốt nhất, giảm tối đa chi ph&iacute; với thời gian. Thế n&ecirc;n th&ocirc;ng tin c&aacute; nh&acirc;n của bạn sẽ được ch&uacute;ng t&ocirc;i sử dụng như sau:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Lấy th&ocirc;ng tin c&aacute;c dịch vụ của bạn khi truy cập v&agrave;o ZicZacVN.com để ch&uacute;ng t&ocirc;i hỗ trợ tốt nhất v&agrave; kịp thời nhất.</p>\r\n\r\n			<p>Gửi mail th&ocirc;ng b&aacute;o về chương tr&igrave;nh khuyến m&atilde;i, c&aacute;c sự kiện hữu &iacute;ch v&agrave; c&oacute; lợi cho doanh nghiệp của bạn.</p>\r\n\r\n			<p>Giải quyết c&aacute;c tranh chấp ph&aacute;t sinh v&agrave; c&aacute;c m&acirc;u thuẫn trong qu&aacute; tr&igrave;nh truy cập v&agrave;o ZicZacVN.com</p>\r\n\r\n			<p>Ngăn chặn, cấm c&aacute;c hoạt động vi phạm quy định sử dụng của nh&agrave; nước.</p>\r\n\r\n			<p>Xem x&eacute;t, đo lường dịch vụ của ch&uacute;ng t&ocirc;i tr&ecirc;n internet.</p>\r\n\r\n			<p>Đối chiếu, so s&aacute;nh v&agrave; kiểm chứng c&aacute;c th&ocirc;ng tin bạn cung cấp c&oacute; ch&iacute;nh x&aacute;c hay kh&ocirc;ng.</p>\r\n\r\n			<p>Khi n&agrave;o ch&uacute;ng t&ocirc;i tiết lộ th&ocirc;ng tin của bạn kh&aacute;ch h&agrave;ng</p>\r\n\r\n			<p>ZicZacVN.com cam kết kh&ocirc;ng bao giờ cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n của bạn cho bất k&igrave; b&ecirc;n thứ ba n&agrave;o tuy nhi&ecirc;n trong một số trường hợp bất khả kh&aacute;ng ch&uacute;ng t&ocirc;i phải cung cấp th&ocirc;ng tin của bạn như sau:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>B&ecirc;n thứ 3 được bạn ủy quyền cho ph&eacute;p thu thập th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.</strong></p>\r\n\r\n			<p>Theo y&ecirc;u cầu của cơ quan điều tra phục vụ cho c&ocirc;ng t&aacute;c điều tra c&aacute;c sai phạm của nh&agrave; nước.</p>\r\n\r\n			<p>Cung cấp cho b&ecirc;n thứ ba c&oacute; li&ecirc;n kết dịch vụ tr&ecirc;n ZicZacVN.com hoặc b&ecirc;n thứ ba c&ugrave;ng l&agrave;m với ZicZacVN.com cần để ho&agrave;n th&agrave;nh c&ocirc;ng việc cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n			<p>Ngo&agrave;i những trường hợp tr&ecirc;n ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin của bạn cho b&ecirc;n thứ ba n&agrave;o kh&aacute;c tuy nhi&ecirc;n nếu ch&uacute;ng t&ocirc;i thấy sự c&ocirc;ng bố th&ocirc;ng tin c&aacute; nh&acirc;n của bạn l&agrave; cần thiết để đề ph&ograve;ng c&aacute;c thiệt hại về vật chất hoặc c&aacute;c h&agrave;nh vi phạm ph&aacute;p kh&aacute;c.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Th&ocirc;ng tin quản l&yacute; tr&ecirc;n website ZicZacVN.com</strong></p>\r\n\r\n			<p>Những th&ocirc;ng tin bạn đăng k&iacute; tr&ecirc;n website ZicZacVN.com bạn ho&agrave;n to&agrave;n c&oacute; thể thay đổi hay chỉnh sửa trong bất k&igrave; thời gian n&agrave;o tr&ecirc;n ZicZacVN.com trừ l&uacute;c ch&uacute;ng t&ocirc;i bảo tr&igrave; hoặc hệ thống bị lỗi c&ograve;n lại bạn chỉ việc đăng nhập v&agrave; chỉnh sửa th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh th&ocirc;i, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm về độ ch&iacute;nh x&aacute;c cũng như th&ocirc;ng tin bạn để lại tr&ecirc;n website đ&acirc;u nh&eacute;.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>C&ocirc;ng Ty Cổ Phần C&ocirc;ng nghệ ZicZac Việt Nam</p>\r\n\r\n			<p>Địa chỉ: Số 8, T&ocirc;n Thất Thuyết, Mỹ Đ&igrave;nh, Từ Li&ecirc;m, H&agrave; Nội</p>\r\n\r\n			<p>Điện thoại:&nbsp;<a href=\"tel:0967025996\" onclick=\"gtag_report_conversion()\" target=\"_blank\">0967.025.996</a></p>\r\n\r\n			<p>Website: ZicZacVN.com</p>\r\n\r\n			<p>Email:&nbsp;<a href=\"mailto:support@ziczacvn.com\" target=\"_blank\">support@ziczacvn.com</a></p>\r\n\r\n			<p>Thời gian l&agrave;m việc:</p>\r\n\r\n			<p>Thứ 2: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 3: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 4: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 5: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 6: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 7: S&aacute;ng 08h:00 &ndash; 11h:30.</p>\r\n\r\n			<p>Chủ nhật: Nghỉ.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Xin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; lu&ocirc;n tin tưởng v&agrave; ủng hộ!!!</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Nếu c&oacute; bất k&igrave; thắc mắc n&agrave;y về Ch&iacute;nh s&aacute;ch bảo mật của ch&uacute;ng t&ocirc;i vui l&ograve;ng đ&oacute;ng g&oacute;p &yacute; kiến về e-mail tr&ecirc;n nh&eacute;. Ch&uacute;ng t&ocirc;i hoan ngh&ecirc;nh những đ&oacute;ng g&oacute;p đ&oacute; v&agrave; sẽ tham khảo sửa đổi nếu n&oacute; ph&ugrave; hợp cho hướng ph&aacute;t triển của ZicZacVN.com cũng như đảm bảo, bảo mật th&ocirc;ng tin kh&aacute;ch h&agrave;ng tr&ecirc;n ZicZacVN.com. Xin cảm ơn nhưng kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i, hi vọng với Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y ch&uacute;ng ta sẽ c&oacute; th&ecirc;m được sự hợp t&aacute;c l&acirc;u d&agrave;i c&ugrave;ng ph&aacute;t triển.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&agrave;i Viết Li&ecirc;n Quan</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ziczacvn.com/tim-dia-chi-thiet-ke-web-uy-tin-ngay-neu-thuong-hieu-dang-tang-hinh.html\">T&igrave;m địa chỉ thiết kế web uy t&iacute;n ngay nếu thương hiệu đang &ldquo;t&agrave;ng h&igrave;nh&rdquo;</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-noi-that.html\">Thiết kế App nội thất: Những điều c&oacute; thể bạn chưa biết!</a></li>\r\n	<li><a href=\"https://ziczacvn.com/bang-gia-thiet-ke-app-cap-nhat-moi-nhat-2022.html\">Bảng gi&aacute; thiết kế app cập nhật mới nhất 2022</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-app-du-lich-chuyen-nghiep-bat-nhip-nhanh-voi-cong-nghe.html\">Thiết kế app du lịch chuy&ecirc;n nghiệp, bắt nhịp nhanh với c&ocirc;ng nghệ</a></li>\r\n	<li><a href=\"https://ziczacvn.com/Dia-chi-thiet-ke-app-tai-ho-chi-minh-uy-tin-hieu-qua.html\">Địa chỉ thiết kế app tại Hồ ch&iacute; minh uy t&iacute;n, hiệu quả</a></li>\r\n	<li><a href=\"https://ziczacvn.com/zalo-huong-dan-go-loi-lien-ket-website-tren-zalo.html\">[Zalo] Hướng dẫn gỡ lỗi li&ecirc;n kết website tr&ecirc;n Zalo</a></li>\r\n	<li><a href=\"https://ziczacvn.com/bang-gia-trung-binh-thiet-ke-app-2021-la-bao-nhieu.html\">Bảng gi&aacute; trung b&igrave;nh thiết kế app 2021 l&agrave; bao nhi&ecirc;u?</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-web-tai-ha-noi-chuan-seo-ban-hang-va-quan-ly-kho-hang-hieu-qua.html\">Thiết kế web tại H&agrave; Nội chuẩn SEO b&aacute;n h&agrave;ng v&agrave; quản l&yacute; kho h&agrave;ng hiệu quả</a></li>\r\n	<li><a href=\"https://ziczacvn.com/tuyen-dung-nhan-vien-sale-marketing.html\">Tuyển Dụng Nh&acirc;n Vi&ecirc;n Sale Marketing</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-app-dat-ve-ba-na-hill-chuyen-nghiep-tao-an-tuong-manh.html\">Thiết kế App đặt v&eacute; B&agrave; N&agrave; Hill chuy&ecirc;n nghiệp, tạo ấn tượng mạnh</a></li>\r\n	<li><a href=\"https://ziczacvn.com/tuyen-dung-lap-trinh-vien-phplaravel.html\">Tuyển Dụng Lập Tr&igrave;nh Vi&ecirc;n PHP/Laravel</a></li>\r\n	<li><a href=\"https://ziczacvn.com/bang-gia-thiet-ke-app-android-va-ios-la-bao-nhieu.html\">Bảng gi&aacute; thiết kế app Android v&agrave; iOS l&agrave; bao nhi&ecirc;u?</a></li>\r\n	<li><a href=\"https://ziczacvn.com/huong-dan-thiet-ke-ung-dung-di-dong-chuyen-nghiep-cho-doanh-nghiep.html\">Hướng dẫn thiết kế ứng dụng di động chuy&ecirc;n nghiệp cho doanh nghiệp</a></li>\r\n	<li><a href=\"https://ziczacvn.com/app-du-lich-Da-nang-kham-pha-Da-nang-thoi-cong-nghe.html\">App du lịch Đ&agrave; Nẵng: Kh&aacute;m ph&aacute; Đ&agrave; Nẵng thời c&ocirc;ng nghệ</a></li>\r\n	<li><a href=\"https://ziczacvn.com/chinh-sach--dich-vu.html\">Ch&iacute;nh s&aacute;ch bảo mật</a></li>\r\n</ul>', '2022-09-11 07:52:51', '2023-09-20 08:17:41', 0),
(3, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 1),
(4, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 1),
(5, 'Từ cá ngâm trong muối tới muón ăn sành điệu', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/tobiko_sashimi(50gr).png', '<p>shi được cho l&agrave; c&oacute; nguồn gốc từ 酸し c&oacute; nghĩa l&agrave; chua. Ng&agrave;y nay người ta thường d&ugrave;ng hai chữ 寿司 để n&oacute;i về &quot;sushi&quot;, b&ecirc;n cạnh đ&oacute; c&aacute;c chữ kh&aacute;c như &quot;鮨&quot; v&agrave; &quot;鮓&quot; cũng đều được sử dụng để n&oacute;i về &quot;sushi&quot;, nhưng ch&uacute;ng c&oacute; &yacute; nghĩa kh&aacute;c nhau.</p>\r\n\r\n<p>Từ 寿司 sushi th&ocirc;ng dụng ng&agrave;y nay l&agrave; một từ được tạo ra v&agrave;o cuối thời Edo (Giang Hộ thời đại, từ 1603 đến 1868, được coi l&agrave; mở đầu cho thời kỳ cận đại ở Nhật Bản), c&oacute; nghĩa l&agrave; &quot;thực phẩm ảnh hưởng đến tuổi thọ&quot;, từ n&agrave;y được xem l&agrave; &quot;ch&iacute;nh tự&quot; của người Edo.</p>\r\n\r\n<p><img alt=\"Sushi thời Edo khác gì sushi thời hiện đại? - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/730/2022/11/2/12-sushi-34-2022-1667393090534630442081.jpg\" /></p>\r\n\r\n<p>Từ &quot;鮨 sushi&quot; ban đầu chỉ c&oacute; nghĩa l&agrave; c&aacute; ng&acirc;m trong muối, nhưng về sau &yacute; nghĩa của n&oacute; bị nhầm lẫn với chữ</p>\r\n\r\n<p>&quot;鮓&quot;. Chữ &quot;鮓&quot; cũng đọc l&agrave; sushi, nghĩa l&agrave; c&aacute; được bảo quản bằng c&aacute;ch ng&acirc;m trong muối, rượu hoặc trong gạo đ&atilde; l&ecirc;n men.</p>\r\n\r\n<p>Nigiri sushi l&agrave; loại sushi c&oacute; nắm cơm trộn giấm h&igrave;nh bầu dục, &eacute;p bằng tay, b&ecirc;n tr&ecirc;n phủ một miếng c&aacute; sống hoặc hải sản tươi sống (cũng c&oacute; thể ch&iacute;n) hay trứng chi&ecirc;n.</p>\r\n\r\n<p>Sushi nhỏ d&agrave;i, được phết l&ecirc;n một lớp wasabi rồi phủ l&ecirc;n một lớp c&aacute; sống hoặc c&aacute;c loại hải sản kh&aacute;c.</p>\r\n\r\n<p>Nigiri trong tiếng Nhật c&oacute; nghĩa l&agrave; &quot;b&oacute;p&quot;, &quot;n&eacute;n&quot; v&agrave; đ&oacute; cũng l&agrave; c&aacute;ch những vi&ecirc;n Nigiri sushi n&agrave;y tạo ra.</p>\r\n\r\n<p>Trong bức tranh b&ecirc;n c&oacute; họa c&aacute;c m&oacute;n sushi truyền thống như sushi t&ocirc;m, sushi c&aacute; kohada (kohada thường được dịch l&agrave; c&aacute; m&ograve;i nhưng kỳ thực đấy l&agrave; t&ecirc;n chung để gọi những con c&aacute; nhỏ được d&ugrave;ng l&agrave;m sashimi hoặc sushi), trứng cuộn.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute; tade (rau đắng) v&agrave; gừng ng&acirc;m giấm để trang tr&iacute;. N&oacute; ch&iacute;nh l&agrave; c&aacute;i m&agrave; ng&agrave;y nay mọi người hay gọi l&agrave; gari (gừng th&aacute;i l&aacute;t ng&acirc;m giấm ăn k&egrave;m sushi).</p>\r\n\r\n<p>Ở Edo, m&oacute;n sushi được ưa chuộng nhất l&agrave; nigiri sushi, d&ugrave;ng c&aacute; được bắt ở v&ugrave;ng biển trước mặt th&agrave;nh Edo, tức vịnh Tokyo - nơi hải sản v&ocirc; cùng tươi ngon và phong phú (thường được gọi l&agrave; Edomae nigiri sushi).</p>', '2022-09-11 07:52:51', '2023-09-20 18:32:18', 0),
(6, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 1),
(7, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 1),
(8, 'Chính sách bảo mật thông tin', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh c online.jpg', '<p><strong>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin</strong></p>', '2022-09-11 07:52:51', '2022-09-11 07:52:51', 1),
(9, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 1),
(10, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 1),
(11, 'Người Nhật thuê luôn băng chuyền về nhà để \"ăn như ở nhà hàng\"', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/arrival-bg.jpg', '<h2>TTO - Trong l&uacute;c nhiều địa phương của Nhật vẫn đang chống chọi với đại dịch COVID-19, một chuỗi nh&agrave; h&agrave;ng đ&atilde; t&igrave;m c&aacute;ch nh&acirc;n rộng trải nghiệm qu&aacute;n sushi tại gia bằng c&aacute;ch cho thu&ecirc; lu&ocirc;n băng chuyền... về nh&agrave;.</h2>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/2021/6/9/screen-shot-2021-06-09-at-92521-am-1623205831167146650202.png\" target=\"_blank\"><img alt=\"Người Nhật thuê luôn băng chuyền về nhà để ăn như ở nhà hàng - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/730/2021/6/9/screen-shot-2021-06-09-at-92521-am-1623205831167146650202.png\" /></a></p>\r\n\r\n<p>Vlogger Reiranran d&ugrave;ng sushi tại gia với băng chuyền v&agrave; bia &quot;như trong nh&agrave; h&agrave;ng&quot; - Ảnh chụp m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Theo b&aacute;o&nbsp;<em>New York Times</em>, Kappa Sushi, c&ocirc;ng ty điều h&agrave;nh hơn 300 qu&aacute;n sushi tr&ecirc;n khắp Nhật Bản, đang cung cấp cho kh&aacute;ch h&agrave;ng phi&ecirc;n bản mini của băng chuyền chạy quanh nh&agrave; h&agrave;ng, vận chuyển những đĩa sushi tại b&agrave;n cho thực kh&aacute;ch.</p>\r\n\r\n<p>Với việc bỏ th&ecirc;m 3.300 yen, tương đương khoảng 690.000 đồng Việt Nam, kh&aacute;ch h&agrave;ng c&oacute; thể nhận một m&ocirc; h&igrave;nh băng chuyền tr&ocirc;ng giống bộ đồ chơi xe lửa để đặt l&ecirc;n b&agrave;n ăn nh&agrave; m&igrave;nh cho c&aacute;c m&oacute;n chạy xung quanh.</p>\r\n\r\n<p>B&agrave; Momoko Okamura, người ph&aacute;t ng&ocirc;n của H&atilde;ng Kappa Sushi, n&oacute;i rằng c&ocirc;ng ty c&oacute; &yacute; tưởng n&agrave;y từ năm 2019, trước khi đại dịch xảy ra.</p>\r\n\r\n<p>Trong bối cảnh Tokyo, Osaka v&agrave; một v&agrave;i th&agrave;nh phố kh&aacute;c đang bị đặt trong t&igrave;nh trạng khẩn cấp, buộc c&aacute;c nh&agrave; h&agrave;ng hạn chế giờ mở cửa, Kappa Sushi đ&atilde; c&ocirc;ng bố dịch vụ cho thu&ecirc; băng chuyền v&agrave;o th&aacute;ng trước tại 5 địa điểm. Đến nay đ&atilde; c&oacute; 75 kh&aacute;ch h&agrave;ng đăng k&yacute;.</p>\r\n\r\n<p>&quot;Phần lớn kh&aacute;ch h&agrave;ng l&agrave; gia đ&igrave;nh c&oacute; con nhỏ, họ kh&ocirc;ng muốn ra ngo&agrave;i ăn v&agrave; cảm thấy an to&agrave;n hơn khi d&ugrave;ng bữa ở nh&agrave;&quot;, b&agrave; Okamura cho biết.</p>\r\n\r\n<p>&quot;Họ muốn c&oacute; th&ecirc;m ch&uacute;t gia vị vui tươi ở nh&agrave; hoặc khi c&oacute; sự kiện tại trường học. Ch&uacute;ng t&ocirc;i cũng đặt mục ti&ecirc;u hướng đến c&aacute;c doanh nghiệp&quot;, b&agrave; tiếp.</p>\r\n\r\n<p>Với đơn h&agrave;ng tối thiểu khoảng 620.000 đồng v&agrave; khoản đặt cọc 413.000 đồng, mỗi kh&aacute;ch h&agrave;ng c&oacute; thể thu&ecirc; băng chuyền k&egrave;m theo bữa ăn.</p>\r\n\r\n<p>Th&aacute;ng trước, Reiranran, một vlogger người Nhật với 154.000 người theo d&otilde;i k&ecirc;nh YouTube, đ&atilde; đăng một video &quot;đập hộp&quot; băng chuyền sushi tại căn hộ của c&ocirc; ở Osaka.</p>\r\n\r\n<p>Trong video, c&ocirc; Reiranran đặt băng chuyền l&ecirc;n b&agrave;n c&agrave; ph&ecirc;, cắm điện v&agrave; sắp xếp c&aacute;c m&oacute;n ăn đ&atilde; mua ở nh&agrave; h&agrave;ng như cơm cuộn t&ocirc;m, c&aacute; ngừ, trứng cuộn v&agrave; c&aacute;c loại sashimi kh&aacute;c l&ecirc;n.</p>\r\n\r\n<p>Chỉ với một n&uacute;t bật c&ocirc;ng tắc, băng chuyền bắt đầu chạy. Uống một ngụm bia, vlogger n&agrave;y gắp c&aacute;c m&oacute;n ăn v&agrave; thưởng thức ch&uacute;ng như trong nh&agrave; h&agrave;ng thứ thiệt.</p>\r\n\r\n<p>&quot;Đ&atilde; từ rất l&acirc;u rồi t&ocirc;i mới thấy băng chuyền sushi d&ugrave;ng k&egrave;m với đồ uống như thế n&agrave;y&quot;, c&ocirc; n&oacute;i.</p>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/2021/6/9/sushi-16232058605562102138896.jpg\" target=\"_blank\"><img alt=\"Người Nhật thuê luôn băng chuyền về nhà để ăn như ở nhà hàng - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/730/2021/6/9/sushi-16232058605562102138896.jpg\" /></a></p>\r\n\r\n<p>Một qu&aacute;n sushi băng chuyền ở th&agrave;nh phố Kanazawa, Nhật Bản - Ảnh: The New York Times</p>\r\n\r\n<p>Theo lệnh cấm c&aacute;c nh&agrave; h&agrave;ng mở khuya v&agrave; phục vụ đồ uống c&oacute; cồn được Ch&iacute;nh phủ Nhật Bản &aacute;p dụng ở một số v&ugrave;ng từ th&aacute;ng 4, chỉ c&oacute; c&aacute;c qu&aacute;n b&aacute;n sushi mang đi v&agrave; chuỗi thức ăn nhanh như McDonald&rsquo;s hay KFC l&agrave; c&oacute; thể trụ được trong đại dịch.</p>\r\n\r\n<p>Một số nh&agrave; h&agrave;ng sushi đ&atilde; giới thiệu c&aacute;c loại tủ kh&oacute;a c&oacute; hệ thống l&agrave;m m&aacute;t cho ph&eacute;p nhận h&agrave;ng kh&ocirc;ng tiếp x&uacute;c. Một số nơi kh&aacute;c ra mắt bộ sản phẩm gi&uacute;p gia đ&igrave;nh chuẩn bị sushi tại nh&agrave; k&egrave;m theo cả sushi đồ chơi bằng giấy v&agrave; mũ đầu bếp cho trẻ em.</p>\r\n\r\n<p>Takara Tomy, một c&ocirc;ng ty đồ chơi nổi tiếng, đang c&oacute; kế hoạch ph&aacute;t h&agrave;nh mẫu xe lửa mới v&agrave;o th&aacute;ng tới được thiết kế để chở c&aacute;c khay sushi.</p>', '2022-09-11 07:52:51', '2023-09-20 18:33:00', 0),
(12, 'Những \'thiên đường ẩm thực\' tại Sài Gòn không nên bỏ qua', '234234234', 'http://127.0.0.1:8000/uploads/sushi001.png', '<h2>Từ thi&ecirc;n đường ẩm thực đa quốc gia &ldquo;San Francis Long&rdquo;...</h2>\r\n\r\n<p>Ở S&agrave;i G&ograve;n, kh&ocirc;ng thể n&agrave;o kh&ocirc;ng biết tới&nbsp;<a href=\"https://thanhnien.vn/doi-song/am-thuc/\" target=\"_blank\">thi&ecirc;n đường ẩm thực</a>&nbsp;đa quốc gia Phan X&iacute;ch Long, niềm tự h&agrave;o của giới trẻ Ph&uacute; Nhuận với rất nhiều lựa chọn từ ăn vặt h&egrave; phố tới qu&aacute;n ăn, nh&agrave; h&agrave;ng sang chảnh, từ m&oacute;n ăn Việt Nam tới Nhật Bản, H&agrave;n Quốc hay Trung Quốc. Giới trẻ S&agrave;i G&ograve;n hay gọi khu n&agrave;y l&agrave;&hellip; đường &ldquo;San Francis Long&rdquo; để nửa đ&ugrave;a nửa thật &aacute;m chỉ sự phong ph&uacute; v&agrave; sang chảnh của n&oacute;.</p>\r\n\r\n<p>sd<img src=\"https://images2.thanhnien.vn/Uploaded/maiha/2021_12_28/shutterstock-1919923031-5389.jpg\" /></p>', '2022-09-11 07:53:02', '2023-09-20 18:30:33', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 1, 'TRAN VAN DIEP', 'tranvandiep.it@gmail.com', '123123123', 'Ha Noi', 'Abc', '2022-09-11 13:00:00', 1, 3000),
(3, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '12312313123123', '2022-09-15 05:07:39', 2, 14000000),
(4, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '123123123', '2022-09-15 05:08:58', 1, 4000000),
(5, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '324234234', '2022-09-15 05:09:49', 1, 4000000),
(6, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', NULL, '2022-09-15 05:12:18', 2, 468588468),
(7, NULL, 'Bùi Quang Huy', 'huy132546@gmail.com', '0364938256', '257 dong da hai chau da nang', NULL, '2023-09-13 03:30:43', 2, 236234234),
(8, NULL, 'Bùi Quang Huy', 'huy132546@gmail.com', '0364938256', '257 dong da hai chau da nang', 'oioiioi', '2023-09-15 01:45:36', 1, 234234234),
(9, NULL, 'Bùi Quang Huy', 'huy132546@gmail.com', '0364938256', '257 dong da hai chau da nang', 'dmmm', '2023-09-19 02:31:57', 1, 2000000),
(10, NULL, 'Bùi Quang Huy', 'huy132546@gmail.com', '9832948932', 'djlasdjlsadj', '111111', '2023-09-21 01:46:53', 2, 179000),
(11, NULL, 'Bùi Quang Huy', 'huy132546@gmail.com', '0364938256', '257 dong da hai chau da nang', 'tiandkfsfsf', '2023-10-04 00:59:05', 0, 300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(1, 1, 1, 1000, 2, 2000),
(2, 1, 2, 500, 2, 1000),
(3, 3, 2, 2000000, 5, 10000000),
(4, 3, 8, 2000000, 2, 4000000),
(5, 4, 2, 2000000, 2, 4000000),
(6, 5, 2, 2000000, 2, 4000000),
(7, 6, 3, 234234234, 2, 468468468),
(8, 6, 7, 120000, 1, 120000),
(9, 7, 2, 2000000, 1, 2000000),
(10, 7, 6, 234234234, 1, 234234234),
(11, 8, 3, 234234234, 1, 234234234),
(12, 9, 5, 2000000, 1, 2000000),
(13, 10, 1, 50000, 1, 50000),
(14, 10, 3, 129000, 1, 129000),
(15, 11, 1, 50000, 6, 300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`, `slug`) VALUES
(1, 1, 'Salmon Sushi', 60000, 50000, 'http://127.0.0.1:8000/uploads/cahoix2.png', '<h2>2 vi&ecirc;n sushi c&aacute; hồi&nbsp;</h2>', '2022-09-09 00:50:01', '2023-09-19 06:53:58', 0, 'quan-ao-tre-em-trend-2022'),
(2, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh java 2.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2022-09-09 02:19:59', 1, 'san-pham-2'),
(3, 2, 'Tobiko Sashimi (50gr)', 129000, 129000, 'http://127.0.0.1:8000/uploads/tobiko_sashimi(50gr).png', '<h2>Tobiko tự nhi&ecirc;n c&oacute; m&agrave;u đỏ cam, vị kh&oacute;i hoặc mặn nhẹ v&agrave; kết cấu gi&ograve;n.</h2>\r\n\r\n<h2>Đ&ocirc;i khi tobiko được t&ocirc; m&agrave;u để thay đổi h&igrave;nh thức b&ecirc;n ngo&agrave;i, c&aacute;c th&agrave;nh phần tự nhi&ecirc;n kh&aacute;c được sử dụng để thực hiện thay đổi, chẳng hạn như mực ống để l&agrave;m cho n&oacute; c&oacute; m&agrave;u đen, yuzu để l&agrave;m cho n&oacute; c&oacute; m&agrave;u cam nhạt (gần như v&agrave;ng), hoặc thậm ch&iacute; wasabi để l&agrave;m cho n&oacute; c&oacute; m&agrave;u xanh v&agrave; vị cay.</h2>', '2022-09-09 01:15:10', '2023-09-19 06:42:30', 0, '234234234'),
(4, 1, 'Tako Sushi', 69000, 50000, 'http://127.0.0.1:8000/uploads/tako_sushi.png', '<h2>2 vi&ecirc;n bạch tuột sushi</h2>', '2022-09-09 00:50:01', '2023-09-19 06:56:57', 0, 'san-pham-1'),
(5, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/sushi001.png', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2023-09-18 18:58:16', 0, 'san-pham-2'),
(6, 1, 'Sashimi Cá Ngừ', 159000, 159000, 'http://127.0.0.1:8000/uploads/cangu.png', '<h1>&nbsp;Sashimi C&aacute; Ngừ</h1>\r\n\r\n<h2>Trong c&aacute; ngừ c&oacute; chứa nhiều loại chất b&eacute;o như Omega 3, Omega 6, c&aacute;c loại vitamin v&agrave; c&aacute;c axit amin cần thiết cho cơ thể. V&igrave; thế m&agrave; c&aacute; ngừ c&oacute; rất nhiều t&aacute;c dụng đối với sức khỏe của con người. C&aacute;c t&aacute;c dụng của c&aacute; ngừ đại dương c&oacute; thể kể đến như: bảo vệ gan v&agrave; tăng cường chức năng gan, ngăn ngừa xơ vữa động mạch, giảm mức cholestoron xấu, k&iacute;ch hoạt c&aacute;c tế b&agrave;o n&atilde;o v&agrave; th&uacute;c đẩy hoạt động của n&atilde;o, ngăn ngừa thiếu m&aacute;u thiếu sắt. Ngo&agrave;i ra m&oacute;n c&aacute; ngừ c&ograve;n hỗ trợ rất tốt trong qu&aacute; tr&igrave;nh giảm c&acirc;n.</h2>', '2022-09-09 01:15:10', '2023-09-19 06:46:10', 0, '234234234'),
(7, 1, 'Tamago sushi', 49000, 49000, 'http://127.0.0.1:8000/uploads/tamago_sushi.png', '<h2>2 vi&ecirc;n trức cuộn sushi</h2>', '2022-09-09 00:50:01', '2023-09-19 06:57:04', 0, 'san-pham-1'),
(8, 1, 'Sashimi cá trích ép trứng', 149000, 74000, 'http://127.0.0.1:8000/uploads/caihoi.png', '<h1><strong>Sashimi c&aacute; tr&iacute;ch &eacute;p trứng</strong>&nbsp;</h1>\r\n\r\n<h2>được l&agrave;m bằng c&aacute;ch ng&acirc;m giấm những l&aacute;t filet c&aacute; tr&iacute;ch, sau đ&oacute; &eacute;p trứng c&aacute; chuồn v&agrave;o b&ecirc;n dưới những l&aacute;t c&aacute; tr&iacute;ch đ&oacute;. C&aacute; tr&iacute;ch b&ugrave;i b&eacute;o cộng với trứng c&aacute; gi&ograve;n tan tạo n&ecirc;n vị ngon kh&oacute; cưỡng của m&oacute;n ăn. Sashimi ăn k&egrave;m với gia vị chấm gừng hồng, cải trắng, wasabi tươi, nước tương Nhật.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2023-09-19 06:35:52', 0, 'san-pham-2'),
(9, 2, 'Trứng cá hồi tươi ngon (50gr)', 299000, 299000, 'http://127.0.0.1:8000/uploads/trungcahoi.png', '<p><strong>Trứng c&aacute; hồi</strong>&nbsp;được hiểu đ&uacute;ng nghĩa l&agrave; trứng của c&aacute; hồi sinh ra. Trứng c&aacute; hồi được lấy từ b&ecirc;n trong cơ thể c&aacute;. N&oacute; l&agrave; một bọc lớn, h&igrave;nh bầu dục, tập hợp h&agrave;ng trăm quả trứng tr&ograve;n nhỏ m&agrave;u đỏ hoặc cam. Trứng c&aacute; hồi gi&ograve;n bụp, vị b&eacute;o b&ugrave;i hoặc hơi đắng.</p>\r\n\r\n<p>Trứng được lấy ra trước khi đến mua&nbsp;<em><strong>c&aacute; hồi đẻ trứng</strong></em>. Điều n&agrave;y để đảm bảo trứng cho k&iacute;ch thước to nhất, h&agrave;m lượng dinh dưỡng đầy đủ nhất. Khi trứng c&aacute; được lấy ra ngay lập tức được mang đi ng&acirc;m nước muối lo&atilde;ng để bảo quản hoặc ướp muối trực tiếp.</p>\r\n\r\n<p>Ở Nhật, phần lớn trứng c&aacute; hồi được ướp muối v&agrave; sử dụng cho c&aacute;c m&oacute;n sushi hoặc ăn trực tiếp.</p>', '2022-09-09 01:15:10', '2023-09-19 06:49:40', 0, '234234234'),
(10, 1, 'Maguro Sushi', 59000, 59000, 'http://127.0.0.1:8000/uploads/maguro_sushi.png', '<h2>2 vi&ecirc;n sushi c&aacute; ngừ</h2>', '2022-09-09 00:50:01', '2023-09-19 06:58:44', 0, 'san-pham-1'),
(11, 1, 'Sashimi cá hồi', 159000, 159000, 'http://127.0.0.1:8000/uploads/catrich.png', '<h1>Sashimi c&aacute; hồi</h1>\r\n\r\n<h2>Sashimi c&aacute; hồi l&agrave; m&oacute;n ăn tươi sống đẳng cấp được nhiều t&iacute;n đồ<strong>&nbsp;ẩm thực</strong>&nbsp;y&ecirc;u th&iacute;ch. Ở Nhật Bản, sashimi thường được đưa l&ecirc;n đầu ti&ecirc;n như một m&oacute;n khai vị trước khi bắt đầu những m&oacute;n ăn kh&aacute;c để đ&aacute;nh thức cảm quan ẩm thực. Nguy&ecirc;n liệu ch&iacute;nh của m&oacute;n ăn n&agrave;y ch&iacute;nh l&agrave; c&aacute; hồi tươi.</h2>\r\n\r\n<h1>&nbsp;</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2023-09-19 06:42:46', 0, 'san-pham-2'),
(12, 2, 'Sashimi bạch tuột', 129000, 100000, 'http://127.0.0.1:8000/uploads/bachtuot.png', '<h2>Ẩm thực Nhật Bản nổi tiếng với c&aacute;c m&oacute;n ăn từ hải sản, đặc biệt l&agrave; hải sản tươi sống. Phần lớn kh&aacute;ch du lịch khi đặt ch&acirc;n đến đất nước n&agrave;y đều rất h&aacute;o hức, chờ đợi để được thưởng thức những m&oacute;n ăn rất đặc sắc c&oacute; một kh&ocirc;ng hai. Một trong những m&oacute;n ăn truyền thống rất đặc biệt của người Nhật l&agrave; Sashimi. Trong đ&oacute;,&nbsp;<strong>Sashimi bạch tuộc</strong>&nbsp;l&agrave; một loại m&oacute;n ăn tươi sống rất được ưa chuộng.</h2>', '2022-09-09 01:15:10', '2023-09-19 06:52:09', 0, '234234234'),
(13, 2, 'buif quangh uy', 7, 6, 'huydfsdfsdfds', '<p>huy</p>', '2023-09-12 19:10:53', '2023-09-12 19:10:53', 1, 'buif-quangh-uy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User'),
(6, 'người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone_number`, `address`, `deleted`, `role_id`) VALUES
(1, 'Diep Tran Van', 'tranvandiep.it@gmail.com', NULL, '$2y$10$acQD5nxNZYCsdK.V8DKXAuPgmRZ3KbC9zqbB9ob4rl4kqnKa7QPzG', 'cwhZ95hUzQR8FD9KqVzSkJ5iUQ1ssANU7n4OzlO6hg7RHWI27sSsOHAqGw63', '2022-07-28 00:26:15', '2022-09-08 23:59:21', '3123123123123123', 'Nam Dinh', 0, 1),
(2, 'GokiSoft', 'gokisoft.com@gmail.com', NULL, '$2y$10$owZ6G9vXPRx6N2CCuUT2TOwQwQD0Dht0Gosx2OyJ9KbEXgYzAq7DW', NULL, '2022-09-08 23:48:35', '2022-09-08 23:48:35', '123456789', 'Ha Noi', 0, 2),
(3, 'ABC', 'tranvandiep.i234234t@gmail.com', NULL, '$2y$10$L/OCHXKmc34vHxoHKOXVRuYXPlatetHvui/EBBnF79lQy8BqedTR2', NULL, '2022-09-08 23:48:58', '2022-09-08 23:48:58', '23423423423', '234234234', 1, 2),
(4, 'Test', 'test@gmail.com', NULL, '$2y$10$tb/BE2IhxcG9wLo1FtENq.QCSCBtwgvXBxx3BOwBmJvNF5/fQX1sC', NULL, '2022-09-11 08:59:54', '2022-09-11 08:59:54', NULL, NULL, 0, 2),
(5, 'Bùi Quang Huy', 'huy132546@gmail.com', NULL, '$2y$10$MbjHgYDaPTO1syROiCJFoel2rnTvfgQi.8rtPdfoe7VsWf9EevEn2', 'gFLRORYGcszzC6rR4R0grOaHSSUWXhXQE9bCImHJzSUkLfK33JVzg17uhmVt', '2023-09-12 19:07:07', '2023-09-12 19:07:07', NULL, NULL, 0, 2),
(6, 'Quang Huy', 'bhuy8018@gmail.com', NULL, '$2y$10$Hiqn3ewYXJm/fyWSQ7d7hu9dF7sqy5Hjx39jz5OknRE/Q5SM8QPSG', NULL, '2023-09-14 08:20:28', '2023-09-14 08:20:28', NULL, NULL, 0, 2),
(7, 'Quang Huy', 'bhuy8@gmail.com', NULL, '$2y$10$jHU3pAuhOHFtX5sloVLJsultjzmMcshzqzLByX86v4koN8bcP1h12', NULL, '2023-09-20 18:40:23', '2023-09-20 18:40:23', NULL, NULL, 0, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
