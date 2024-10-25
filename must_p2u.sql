-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2024 at 02:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `must_p2u`
--

-- --------------------------------------------------------

--
-- Table structure for table `g5_auth`
--

CREATE TABLE `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(50) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_autosave`
--

CREATE TABLE `g5_autosave` (
  `as_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) UNSIGNED NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_board`
--

CREATE TABLE `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_write_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_download_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_html_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_link_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_point` int(11) NOT NULL DEFAULT 0,
  `bo_write_point` int(11) NOT NULL DEFAULT 0,
  `bo_comment_point` int(11) NOT NULL DEFAULT 0,
  `bo_download_point` int(11) NOT NULL DEFAULT 0,
  `bo_use_category` tinyint(4) NOT NULL DEFAULT 0,
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT 0,
  `bo_select_editor` varchar(50) NOT NULL DEFAULT '',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_good` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_name` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_table_width` int(11) NOT NULL DEFAULT 0,
  `bo_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_new` int(11) NOT NULL DEFAULT 0,
  `bo_hot` int(11) NOT NULL DEFAULT 0,
  `bo_image_width` int(11) NOT NULL DEFAULT 0,
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_upload_size` int(11) NOT NULL DEFAULT 0,
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_search` tinyint(4) NOT NULL DEFAULT 0,
  `bo_order` int(11) NOT NULL DEFAULT 0,
  `bo_count_write` int(11) NOT NULL DEFAULT 0,
  `bo_count_comment` int(11) NOT NULL DEFAULT 0,
  `bo_write_min` int(11) NOT NULL DEFAULT 0,
  `bo_write_max` int(11) NOT NULL DEFAULT 0,
  `bo_comment_min` int(11) NOT NULL DEFAULT 0,
  `bo_comment_max` int(11) NOT NULL DEFAULT 0,
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT 0,
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_wr_eb` char(1) NOT NULL DEFAULT '0',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_board`
--

INSERT INTO `g5_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_mobile_subject`, `bo_device`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_select_editor`, `bo_use_rss_view`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_list_view`, `bo_use_list_file`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_mobile_subject_len`, `bo_page_rows`, `bo_mobile_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_mobile_skin`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_mobile_content_head`, `bo_content_tail`, `bo_mobile_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_gallery_width`, `bo_gallery_height`, `bo_mobile_gallery_width`, `bo_mobile_gallery_height`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_use_cert`, `bo_use_sns`, `bo_use_captcha`, `bo_sort_field`, `bo_wr_eb`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('free', 'community', '자유게시판', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'basic', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 600, 0, 600, 0, 1048576, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('gallery', 'community', '갤러리', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, 5, 1, -20, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'gallery', 'gallery', '_head.php', '_tail.php', '', '', '', '', '', 4, 600, 0, 600, 0, 1048576, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('notice', 'community', '공지사항', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'basic', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 600, 0, 600, 0, 1048576, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('qa', 'community', '질문답변', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, 5, 1, -20, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'basic', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 600, 0, 600, 0, 1048576, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_board_file`
--

CREATE TABLE `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `bf_no` int(11) NOT NULL DEFAULT 0,
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_fileurl` varchar(255) NOT NULL DEFAULT '',
  `bf_thumburl` varchar(255) NOT NULL DEFAULT '',
  `bf_storage` varchar(50) NOT NULL DEFAULT '',
  `bf_filesize` int(11) NOT NULL DEFAULT 0,
  `bf_width` int(11) NOT NULL DEFAULT 0,
  `bf_height` smallint(6) NOT NULL DEFAULT 0,
  `bf_type` tinyint(4) NOT NULL DEFAULT 0,
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_board_good`
--

CREATE TABLE `g5_board_good` (
  `bg_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_board_new`
--

CREATE TABLE `g5_board_new` (
  `bn_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_cert_history`
--

CREATE TABLE `g5_cert_history` (
  `cr_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_config`
--

CREATE TABLE `g5_config` (
  `cf_id` int(11) NOT NULL,
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(100) NOT NULL DEFAULT '',
  `cf_admin` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(100) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_eyoom_admin` enum('y','n') NOT NULL DEFAULT 'y',
  `cf_eyoom_admin_theme` varchar(255) NOT NULL DEFAULT 'eba_basic',
  `cf_use_version_alarm` char(1) NOT NULL DEFAULT '1',
  `cf_write_limit` char(1) NOT NULL DEFAULT '1',
  `cf_write_limit_type` varchar(10) NOT NULL DEFAULT '',
  `cf_use_counsel` char(1) NOT NULL DEFAULT '1',
  `cf_counsel_part` varchar(255) NOT NULL DEFAULT '견적요청, 제품상담, 제휴상담, 기타',
  `cf_counsel_status` varchar(255) NOT NULL DEFAULT '대기, 접수, 진행, 완료',
  `cf_counsel_sendmail` char(1) NOT NULL DEFAULT '1',
  `cf_counsel_email` varchar(255) NOT NULL DEFAULT 'admin@domain.com',
  `cf_counsel_view` char(1) NOT NULL DEFAULT '',
  `cf_permit_level` tinyint(4) NOT NULL DEFAULT 1,
  `cf_use_mbmemo` tinyint(4) NOT NULL DEFAULT 1,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT 0,
  `cf_point_term` int(11) NOT NULL DEFAULT 0,
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT 0,
  `cf_login_point` int(11) NOT NULL DEFAULT 0,
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT 0,
  `cf_nick_modify` int(11) NOT NULL DEFAULT 0,
  `cf_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT 0,
  `cf_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_point` int(11) NOT NULL DEFAULT 0,
  `cf_comment_point` int(11) NOT NULL DEFAULT 0,
  `cf_download_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_pages` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_pages` int(11) NOT NULL DEFAULT 0,
  `cf_link_target` varchar(50) NOT NULL DEFAULT '',
  `cf_bbs_rewrite` tinyint(4) NOT NULL DEFAULT 0,
  `cf_delay_sec` int(11) NOT NULL DEFAULT 0,
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_map_google_id` varchar(255) NOT NULL DEFAULT '',
  `cf_map_naver_id` varchar(255) NOT NULL DEFAULT '',
  `cf_map_daum_id` varchar(255) NOT NULL DEFAULT '',
  `cf_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_point` int(11) NOT NULL DEFAULT 0,
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT 0,
  `cf_recommend_point` int(11) NOT NULL DEFAULT 0,
  `cf_leave_day` int(11) NOT NULL DEFAULT 0,
  `cf_search_part` int(11) NOT NULL DEFAULT 0,
  `cf_email_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT 0,
  `cf_memo_del` int(11) NOT NULL DEFAULT 0,
  `cf_visit_del` int(11) NOT NULL DEFAULT 0,
  `cf_popular_del` int(11) NOT NULL DEFAULT 0,
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT 0,
  `cf_member_icon_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_height` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_height` int(11) NOT NULL DEFAULT 0,
  `cf_login_minutes` int(11) NOT NULL DEFAULT 0,
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT 0,
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT 0,
  `cf_memo_send_point` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(50) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_cert_find` tinyint(4) NOT NULL DEFAULT 0,
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_simple` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kg_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_use_seed` tinyint(4) NOT NULL DEFAULT 1,
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(100) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(100) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT 0,
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT 0,
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_token_key` varchar(100) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(50) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(100) NOT NULL,
  `cf_facebook_secret` varchar(100) NOT NULL,
  `cf_twitter_key` varchar(100) NOT NULL,
  `cf_twitter_secret` varchar(100) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(100) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_config`
--

INSERT INTO `g5_config` (`cf_id`, `cf_title`, `cf_theme`, `cf_admin`, `cf_admin_email`, `cf_admin_email_name`, `cf_add_script`, `cf_eyoom_admin`, `cf_eyoom_admin_theme`, `cf_use_version_alarm`, `cf_write_limit`, `cf_write_limit_type`, `cf_use_counsel`, `cf_counsel_part`, `cf_counsel_status`, `cf_counsel_sendmail`, `cf_counsel_email`, `cf_counsel_view`, `cf_permit_level`, `cf_use_mbmemo`, `cf_use_point`, `cf_point_term`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_faq_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_write_pages`, `cf_mobile_pages`, `cf_link_target`, `cf_bbs_rewrite`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_analytics`, `cf_add_meta`, `cf_syndi_token`, `cf_syndi_except`, `cf_map_google_id`, `cf_map_naver_id`, `cf_map_daum_id`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_optimize_date`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_member_img_size`, `cf_member_img_width`, `cf_member_img_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_mobile_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_mobile_new_skin`, `cf_mobile_search_skin`, `cf_mobile_connect_skin`, `cf_mobile_faq_skin`, `cf_mobile_member_skin`, `cf_captcha_mp3`, `cf_editor`, `cf_cert_use`, `cf_cert_find`, `cf_cert_ipin`, `cf_cert_hp`, `cf_cert_simple`, `cf_cert_kg_cd`, `cf_cert_kg_mid`, `cf_cert_use_seed`, `cf_cert_kcb_cd`, `cf_cert_kcp_cd`, `cf_lg_mid`, `cf_lg_mert_key`, `cf_cert_limit`, `cf_cert_req`, `cf_sms_use`, `cf_sms_type`, `cf_icode_id`, `cf_icode_pw`, `cf_icode_server_ip`, `cf_icode_server_port`, `cf_icode_token_key`, `cf_googl_shorturl_apikey`, `cf_social_login_use`, `cf_social_servicelist`, `cf_payco_clientid`, `cf_payco_secret`, `cf_facebook_appid`, `cf_facebook_secret`, `cf_twitter_key`, `cf_twitter_secret`, `cf_google_clientid`, `cf_google_secret`, `cf_naver_clientid`, `cf_naver_secret`, `cf_kakao_rest_key`, `cf_kakao_client_secret`, `cf_kakao_js_apikey`, `cf_captcha`, `cf_recaptcha_site_key`, `cf_recaptcha_secret_key`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`) VALUES
(1, '이윰빌더', '', 'admin', 'admin@domain.com', '메일발송 담당자', '', 'y', 'eba_basic', '1', '1', '', '1', '견적요청, 제품상담, 제휴상담, 기타', '대기, 접수, 진행, 완료', '1', 'admin@domain.com', '', 1, 1, 1, 0, 1, 0, 100, 15, 60, 'basic', 15, 'basic', 'basic', 'basic', 0, 0, 0, 0, 10, 5, '_blank', 0, 30, '18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ', '', '', '', '', '', '', '', '', '', 'basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', 30, 180, 180, 180, '2024-10-24', 2, 5000, 22, 22, 50000, 100, 100, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, 15, '오늘:1,어제:1,최대:1,전체:2', 0, '해당 홈페이지에 맞는 회원가입약관을 입력합니다.', '해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.', 0, 500, 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'smarteditor2', 0, 0, '', '', '', '', '', 1, '', '', '', '', 2, 0, '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_content`
--

CREATE TABLE `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT 0,
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_seo_title` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT 0,
  `co_hit` int(11) NOT NULL DEFAULT 0,
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_content`
--

INSERT INTO `g5_content` (`co_id`, `co_html`, `co_subject`, `co_content`, `co_seo_title`, `co_mobile_content`, `co_skin`, `co_mobile_skin`, `co_tag_filter_use`, `co_hit`, `co_include_head`, `co_include_tail`) VALUES
('company', 1, '회사소개', '<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>', '', '', 'basic', 'basic', 0, 0, '', ''),
('privacy', 1, '개인정보 처리방침', '<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>', '', '', 'basic', 'basic', 0, 0, '', ''),
('provision', 1, '서비스 이용약관', '<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>', '', '', 'basic', 'basic', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_activity`
--

CREATE TABLE `g5_eyoom_activity` (
  `act_id` mediumint(11) UNSIGNED NOT NULL,
  `mb_id` varchar(40) NOT NULL,
  `act_type` varchar(20) NOT NULL,
  `act_contents` text NOT NULL,
  `act_image` text NOT NULL,
  `act_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_eyoom_activity`
--

INSERT INTO `g5_eyoom_activity` (`act_id`, `mb_id`, `act_type`, `act_contents`, `act_image`, `act_regdt`) VALUES
(1, 'admin', 'login', 'a:1:{s:2:\"ip\";s:3:\"::1\";}', '', '2024-10-24 06:24:55'),
(2, 'admin', 'login', 'a:1:{s:2:\"ip\";s:3:\"::1\";}', '', '2024-10-24 06:36:58'),
(3, 'admin', 'login', 'a:1:{s:2:\"ip\";s:3:\"::1\";}', '', '2024-10-24 06:37:14'),
(4, 'admin', 'login', 'a:1:{s:2:\"ip\";s:3:\"::1\";}', '', '2024-10-24 06:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_banner`
--

CREATE TABLE `g5_eyoom_banner` (
  `bn_no` int(10) UNSIGNED NOT NULL,
  `bn_code` varchar(20) NOT NULL,
  `bn_subject` varchar(255) NOT NULL DEFAULT '0',
  `bn_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `bn_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `bn_state` smallint(1) NOT NULL DEFAULT 0,
  `bn_image` varchar(255) NOT NULL,
  `bn_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_banner_date`
--

CREATE TABLE `g5_eyoom_banner_date` (
  `bs_date` date NOT NULL DEFAULT '0000-00-00',
  `bs_expose` text NOT NULL,
  `bs_clicked` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_banner_hit`
--

CREATE TABLE `g5_eyoom_banner_hit` (
  `bh_id` int(11) UNSIGNED NOT NULL,
  `bn_code` varchar(20) NOT NULL,
  `bi_no` int(11) NOT NULL,
  `bh_ip` varchar(100) NOT NULL DEFAULT '',
  `bh_date` date NOT NULL DEFAULT '0000-00-00',
  `bh_time` time NOT NULL DEFAULT '00:00:00',
  `bh_referer` text NOT NULL,
  `bh_agent` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_banner_item`
--

CREATE TABLE `g5_eyoom_banner_item` (
  `bi_no` int(10) UNSIGNED NOT NULL,
  `bn_code` varchar(20) NOT NULL,
  `bi_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `bi_type` enum('intra','extra') NOT NULL DEFAULT 'intra',
  `bi_state` char(1) NOT NULL DEFAULT '2',
  `bi_sort` int(10) DEFAULT 0,
  `bi_title` varchar(255) NOT NULL,
  `bi_subtitle` varchar(255) NOT NULL,
  `bi_script` text NOT NULL,
  `bi_link` varchar(255) NOT NULL DEFAULT '',
  `bi_img` varchar(255) NOT NULL DEFAULT '',
  `bi_period` char(1) NOT NULL DEFAULT '1',
  `bi_start` varchar(10) NOT NULL,
  `bi_end` varchar(10) NOT NULL,
  `bi_exposed` mediumint(10) NOT NULL DEFAULT 0,
  `bi_clicked` mediumint(10) NOT NULL DEFAULT 0,
  `bi_view_level` tinyint(4) NOT NULL DEFAULT 1,
  `bi_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_bbspoll`
--

CREATE TABLE `g5_eyoom_bbspoll` (
  `po_id` int(11) UNSIGNED NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_flag` char(2) NOT NULL DEFAULT '',
  `po_point` int(7) NOT NULL DEFAULT 0,
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_best`
--

CREATE TABLE `g5_eyoom_best` (
  `bb_id` int(11) UNSIGNED NOT NULL,
  `bo_table` varchar(20) NOT NULL,
  `wr_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_board`
--

CREATE TABLE `g5_eyoom_board` (
  `bo_id` mediumint(11) UNSIGNED NOT NULL,
  `bo_table` varchar(20) NOT NULL,
  `gr_id` varchar(10) NOT NULL,
  `bo_theme` varchar(50) NOT NULL,
  `bo_skin` varchar(40) NOT NULL,
  `use_gnu_skin` enum('y','n') NOT NULL DEFAULT 'n',
  `use_shop_skin` enum('y','n') NOT NULL DEFAULT 'n',
  `bo_sel_date_type` enum('1','2') NOT NULL DEFAULT '1',
  `bo_use_hotgul` char(1) NOT NULL DEFAULT '1',
  `bo_use_anonymous` char(1) NOT NULL DEFAULT '',
  `bo_use_infinite_scroll` char(1) NOT NULL DEFAULT '2',
  `bo_use_cmt_infinite` char(1) NOT NULL DEFAULT '0',
  `bo_use_cmt_best` char(1) NOT NULL DEFAULT '0',
  `bo_use_point_explain` char(1) NOT NULL DEFAULT '1',
  `bo_use_video_photo` char(1) NOT NULL DEFAULT '2',
  `bo_use_list_image` char(1) NOT NULL DEFAULT '1',
  `bo_use_good_member` char(1) NOT NULL DEFAULT '1',
  `bo_use_nogood_member` char(1) NOT NULL DEFAULT '0',
  `bo_use_yellow_card` char(1) NOT NULL DEFAULT '0',
  `bo_use_exif` char(1) NOT NULL DEFAULT '0',
  `bo_use_rating` char(1) NOT NULL DEFAULT '2',
  `bo_use_rating_list` char(1) NOT NULL DEFAULT '1',
  `bo_use_rating_member` char(1) NOT NULL DEFAULT '0',
  `bo_use_rating_score` char(1) NOT NULL DEFAULT '0',
  `bo_use_rating_comment` char(1) NOT NULL DEFAULT '0',
  `bo_rating_point` int(11) NOT NULL DEFAULT 0,
  `bo_use_tag` char(1) NOT NULL DEFAULT '0',
  `bo_use_automove` char(1) NOT NULL DEFAULT '0',
  `bo_use_best` char(1) NOT NULL DEFAULT '0',
  `bo_goto_url` varchar(255) DEFAULT '',
  `bo_use_addon_emoticon` char(1) NOT NULL DEFAULT '1',
  `bo_use_addon_video` char(1) NOT NULL DEFAULT '1',
  `bo_use_addon_coding` char(1) NOT NULL DEFAULT '0',
  `bo_use_addon_soundcloud` char(1) NOT NULL DEFAULT '0',
  `bo_use_addon_map` char(1) NOT NULL DEFAULT '0',
  `bo_use_addon_poll` char(1) NOT NULL DEFAULT '0',
  `bo_addon_poll_point` int(7) NOT NULL DEFAULT 0,
  `bo_addon_poll_type` char(1) NOT NULL DEFAULT '1',
  `bo_use_addon_cmtfile` char(1) NOT NULL DEFAULT '1',
  `bo_count_cmtfile` smallint(2) NOT NULL DEFAULT 1,
  `bo_use_extimg` char(1) NOT NULL DEFAULT '0',
  `bo_use_adopt_point` char(1) NOT NULL DEFAULT '0',
  `bo_adopt_minpoint` int(7) NOT NULL DEFAULT 0,
  `bo_adopt_maxpoint` int(11) NOT NULL DEFAULT 0,
  `bo_adopt_ratio` smallint(3) NOT NULL DEFAULT 0,
  `bo_use_wrfixed` char(1) NOT NULL DEFAULT '',
  `bo_wrfixed_type` char(1) NOT NULL DEFAULT '1',
  `bo_wrfixed_point` int(7) NOT NULL DEFAULT 1000,
  `bo_wrfixed_date` smallint(3) NOT NULL DEFAULT 5,
  `bo_use_pointpost` char(1) NOT NULL DEFAULT '',
  `bo_pointpost_point` varchar(255) NOT NULL DEFAULT '',
  `bo_write_limit` smallint(3) NOT NULL DEFAULT 0,
  `bo_cmt_best_min` tinyint(2) NOT NULL DEFAULT 10,
  `bo_cmt_best_limit` tinyint(2) NOT NULL DEFAULT 5,
  `bo_tag_level` tinyint(4) NOT NULL DEFAULT 2,
  `bo_tag_limit` tinyint(4) NOT NULL DEFAULT 10,
  `bo_automove` varchar(255) NOT NULL,
  `bo_best` varchar(255) NOT NULL,
  `bo_use_scheduled` char(1) NOT NULL DEFAULT '',
  `bo_table_scheduled` varchar(30) NOT NULL,
  `bo_scheduled_ip` varchar(20) NOT NULL,
  `bo_exif_detail` text NOT NULL,
  `bo_blind_limit` tinyint(2) NOT NULL DEFAULT 5,
  `bo_blind_view` tinyint(2) NOT NULL DEFAULT 10,
  `bo_blind_direct` tinyint(2) NOT NULL DEFAULT 10,
  `bo_cmtpoint_target` char(1) NOT NULL DEFAULT '1',
  `bo_firstcmt_point` int(7) NOT NULL DEFAULT 0,
  `bo_firstcmt_point_type` char(1) NOT NULL DEFAULT '1',
  `bo_bomb_point` int(7) NOT NULL DEFAULT 0,
  `bo_bomb_point_type` char(1) NOT NULL DEFAULT '1',
  `bo_bomb_point_limit` int(3) NOT NULL DEFAULT 10,
  `bo_bomb_point_cnt` int(2) NOT NULL DEFAULT 1,
  `bo_lucky_point` int(7) NOT NULL DEFAULT 0,
  `bo_lucky_point_type` char(1) NOT NULL DEFAULT '1',
  `bo_lucky_point_ratio` int(2) NOT NULL DEFAULT 1,
  `download_fee_ratio` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_brand`
--

CREATE TABLE `g5_eyoom_brand` (
  `br_no` int(10) UNSIGNED NOT NULL,
  `br_code` varchar(255) NOT NULL,
  `br_name` varchar(255) NOT NULL,
  `br_basic` varchar(255) DEFAULT NULL,
  `br_sort` smallint(3) NOT NULL DEFAULT 0,
  `br_open` enum('y','n') NOT NULL DEFAULT 'y',
  `br_img` varchar(255) DEFAULT NULL,
  `br_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_contents`
--

CREATE TABLE `g5_eyoom_contents` (
  `ec_no` int(10) UNSIGNED NOT NULL,
  `ec_code` text NOT NULL,
  `me_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `ec_name` varchar(255) NOT NULL DEFAULT '',
  `ec_subject` text NOT NULL,
  `ec_text` text NOT NULL,
  `ec_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `ec_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `ec_state` smallint(1) NOT NULL DEFAULT 0,
  `ec_link` varchar(255) NOT NULL,
  `ec_target` varchar(10) NOT NULL,
  `ec_image` varchar(255) NOT NULL,
  `ec_file` varchar(255) NOT NULL,
  `ec_filename` varchar(255) NOT NULL,
  `ec_sort` smallint(3) NOT NULL DEFAULT 0,
  `ec_link_cnt` smallint(2) NOT NULL DEFAULT 2,
  `ec_image_cnt` smallint(2) NOT NULL DEFAULT 5,
  `ec_ext_cnt` smallint(2) NOT NULL DEFAULT 5,
  `ec_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_contents_item`
--

CREATE TABLE `g5_eyoom_contents_item` (
  `ci_no` int(10) UNSIGNED NOT NULL,
  `ec_code` text NOT NULL,
  `ci_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `ci_state` char(1) NOT NULL DEFAULT '2',
  `ci_sort` int(10) DEFAULT 0,
  `ci_subject` text NOT NULL,
  `ci_text` text NOT NULL,
  `ci_content` text NOT NULL,
  `ci_link` text NOT NULL,
  `ci_target` text NOT NULL,
  `ci_img` text NOT NULL,
  `ci_period` char(1) NOT NULL DEFAULT '1',
  `ci_start` varchar(10) NOT NULL,
  `ci_end` varchar(10) NOT NULL,
  `ci_view_level` tinyint(4) NOT NULL DEFAULT 1,
  `ci_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_counsel`
--

CREATE TABLE `g5_eyoom_counsel` (
  `cs_id` int(11) UNSIGNED NOT NULL,
  `mb_id` varchar(30) NOT NULL,
  `cs_part` varchar(20) NOT NULL,
  `cs_company` varchar(50) NOT NULL,
  `cs_name` varchar(30) NOT NULL,
  `cs_tel` varchar(20) NOT NULL,
  `cs_email` varchar(255) NOT NULL,
  `cs_subject` varchar(255) NOT NULL,
  `cs_content` text NOT NULL,
  `cs_file1` text NOT NULL,
  `cs_file2` text NOT NULL,
  `cs_memo` text NOT NULL,
  `cs_status` varchar(20) NOT NULL DEFAULT '',
  `cs_ip` varchar(255) NOT NULL,
  `cs_update` datetime NOT NULL,
  `cs_regdt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_exboard`
--

CREATE TABLE `g5_eyoom_exboard` (
  `ex_no` int(11) UNSIGNED NOT NULL,
  `bo_table` varchar(20) NOT NULL,
  `ex_fname` varchar(10) NOT NULL,
  `ex_subject` varchar(50) NOT NULL,
  `ex_use_search` enum('y','n') NOT NULL DEFAULT 'n',
  `ex_required` enum('y','n') NOT NULL DEFAULT 'n',
  `ex_form` varchar(20) NOT NULL DEFAULT 'text',
  `ex_type` varchar(20) NOT NULL,
  `ex_length` mediumint(5) NOT NULL,
  `ex_default` varchar(255) NOT NULL,
  `ex_item_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_favorite_adm`
--

CREATE TABLE `g5_eyoom_favorite_adm` (
  `mb_id` varchar(30) NOT NULL,
  `dir` varchar(20) NOT NULL,
  `pid` varchar(40) NOT NULL,
  `fm_code` char(6) NOT NULL,
  `me_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_follow`
--

CREATE TABLE `g5_eyoom_follow` (
  `fo_no` int(11) UNSIGNED NOT NULL,
  `fo_my_id` varchar(30) NOT NULL,
  `fo_mb_id` varchar(30) NOT NULL,
  `fo_friends` enum('y','n') NOT NULL DEFAULT 'n',
  `fo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_goods`
--

CREATE TABLE `g5_eyoom_goods` (
  `eg_no` int(10) UNSIGNED NOT NULL,
  `eg_code` varchar(20) NOT NULL,
  `eg_subject` varchar(255) NOT NULL,
  `eg_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `eg_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `eg_state` smallint(1) NOT NULL DEFAULT 0,
  `eg_link` varchar(255) NOT NULL,
  `eg_target` varchar(10) NOT NULL,
  `eg_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_goods_item`
--

CREATE TABLE `g5_eyoom_goods_item` (
  `gi_no` int(10) UNSIGNED NOT NULL,
  `eg_code` varchar(20) NOT NULL,
  `gi_theme` varchar(30) NOT NULL DEFAULT '',
  `gi_state` char(1) NOT NULL DEFAULT '2',
  `gi_sort` int(10) DEFAULT 0,
  `gi_title` varchar(255) NOT NULL,
  `gi_link` varchar(255) NOT NULL,
  `gi_target` varchar(10) NOT NULL,
  `gi_ca_id` varchar(20) NOT NULL DEFAULT '',
  `gi_ca_ids` varchar(255) NOT NULL DEFAULT '',
  `gi_exclude` varchar(255) NOT NULL DEFAULT '',
  `gi_include` varchar(255) NOT NULL DEFAULT '',
  `gi_count` smallint(2) NOT NULL DEFAULT 5,
  `gi_sortby` smallint(2) NOT NULL DEFAULT 1,
  `gi_view_it_id` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_name` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_basic` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_cust_price` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_price` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_icon` char(1) NOT NULL DEFAULT 'y',
  `gi_view_img` char(1) NOT NULL DEFAULT 'y',
  `gi_view_sns` char(1) NOT NULL DEFAULT 'y',
  `gi_img_width` smallint(3) NOT NULL DEFAULT 300,
  `gi_img_height` smallint(3) NOT NULL DEFAULT 0,
  `gi_view_level` tinyint(4) NOT NULL DEFAULT 1,
  `gi_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_latest`
--

CREATE TABLE `g5_eyoom_latest` (
  `el_no` int(10) UNSIGNED NOT NULL,
  `el_code` varchar(20) NOT NULL,
  `el_subject` varchar(255) NOT NULL,
  `el_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `el_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `el_state` smallint(1) NOT NULL DEFAULT 0,
  `el_cache` int(10) NOT NULL DEFAULT 0,
  `el_new` mediumint(3) NOT NULL DEFAULT 0,
  `el_link` varchar(255) NOT NULL,
  `el_target` varchar(10) NOT NULL,
  `el_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_eyoom_latest`
--

INSERT INTO `g5_eyoom_latest` (`el_no`, `el_code`, `el_subject`, `el_theme`, `el_skin`, `el_state`, `el_cache`, `el_new`, `el_link`, `el_target`, `el_regdt`) VALUES
(1, '1517122147', '인기게시물', 'eb4_basic', 'bestset', 1, 0, 24, '', '', '2024-10-24 06:21:25'),
(2, '1518393947', '베이직 그룹', 'eb4_basic', 'basic', 1, 120, 24, '', '', '2024-10-24 06:21:25'),
(3, '1518503581', '갤러리 그룹', 'eb4_basic', 'gallery', 1, 0, 24, '', '', '2024-10-24 06:21:25'),
(4, '1519114252', '웹진 그룹', 'eb4_basic', 'webzine', 1, 0, 24, '', '', '2024-10-24 06:21:25'),
(5, '1519177106', '새글', 'eb4_basic', 'newpost', 1, 0, 24, '', '', '2024-10-24 06:21:25'),
(6, '1520320186', '공지사항 사이드', 'eb4_basic', 'notice_roll_side', 1, 0, 24, '', '', '2024-10-24 06:21:25'),
(7, '1520321978', '공지사항 헤더', 'eb4_basic', 'notice_roll_header', 1, 0, 24, '', '', '2024-10-24 06:21:25'),
(8, '1526255599', '공지사항 쇼핑몰', 'eb4_basic', 'notice_roll_shop', 1, 0, 24, '', '', '2024-10-24 06:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_latest_item`
--

CREATE TABLE `g5_eyoom_latest_item` (
  `li_no` int(10) UNSIGNED NOT NULL,
  `el_code` varchar(20) NOT NULL,
  `li_theme` varchar(30) NOT NULL DEFAULT '',
  `li_state` char(1) NOT NULL DEFAULT '2',
  `li_sort` int(10) DEFAULT 0,
  `li_title` varchar(255) NOT NULL,
  `li_link` varchar(255) NOT NULL,
  `li_target` varchar(10) NOT NULL,
  `li_bo_table` varchar(20) NOT NULL DEFAULT '',
  `li_gr_id` varchar(20) NOT NULL DEFAULT '',
  `li_exclude` varchar(255) NOT NULL DEFAULT '',
  `li_include` varchar(255) NOT NULL DEFAULT '',
  `li_tables` text NOT NULL,
  `li_direct` char(1) NOT NULL DEFAULT 'n',
  `li_count` smallint(2) NOT NULL DEFAULT 5,
  `li_depart` smallint(1) NOT NULL DEFAULT 2,
  `li_period` smallint(2) NOT NULL DEFAULT 0,
  `li_type` char(2) NOT NULL,
  `li_ca_view` char(1) NOT NULL DEFAULT 'n',
  `li_cut_subject` smallint(2) NOT NULL DEFAULT 50,
  `li_best` char(1) NOT NULL DEFAULT 'n',
  `li_random` char(1) NOT NULL DEFAULT 'n',
  `li_img_view` char(1) NOT NULL DEFAULT 'n',
  `li_img_width` smallint(3) NOT NULL DEFAULT 300,
  `li_img_height` smallint(3) NOT NULL DEFAULT 300,
  `li_content` char(1) NOT NULL DEFAULT 'n',
  `li_cut_content` smallint(3) NOT NULL DEFAULT 100,
  `li_bo_subject` char(1) NOT NULL DEFAULT 'n',
  `li_mbname_view` char(1) NOT NULL DEFAULT 'y',
  `li_photo` char(1) NOT NULL DEFAULT 'n',
  `li_use_date` char(1) NOT NULL DEFAULT 'y',
  `li_date_type` char(1) NOT NULL DEFAULT '1',
  `li_date_kind` varchar(20) NOT NULL,
  `li_view_level` tinyint(4) NOT NULL DEFAULT 1,
  `li_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_like`
--

CREATE TABLE `g5_eyoom_like` (
  `lk_no` int(11) UNSIGNED NOT NULL,
  `lk_my_id` varchar(30) NOT NULL,
  `lk_mb_id` varchar(30) NOT NULL,
  `lk_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_manager`
--

CREATE TABLE `g5_eyoom_manager` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mg_theme` varchar(255) NOT NULL DEFAULT '',
  `mg_menu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_mbmemo`
--

CREATE TABLE `g5_eyoom_mbmemo` (
  `mm_no` int(11) UNSIGNED NOT NULL,
  `mm_my_id` varchar(30) NOT NULL,
  `mm_mb_id` varchar(30) NOT NULL,
  `mm_memo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_member`
--

CREATE TABLE `g5_eyoom_member` (
  `mb_id` varchar(30) NOT NULL,
  `level` mediumint(5) NOT NULL DEFAULT 1,
  `level_point` mediumint(11) NOT NULL DEFAULT 0,
  `photo` varchar(100) NOT NULL,
  `myhome_cover` varchar(100) NOT NULL,
  `myhome_hit` mediumint(11) NOT NULL DEFAULT 0,
  `open_page` enum('y','n') NOT NULL DEFAULT 'y',
  `respond` mediumint(5) NOT NULL DEFAULT 0,
  `onoff_push` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_respond` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_memo` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_social` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_likes` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_guest` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_social` enum('on','off') NOT NULL DEFAULT 'on',
  `open_email` enum('y','n') NOT NULL DEFAULT 'y',
  `open_homepage` enum('y','n') NOT NULL DEFAULT 'y',
  `open_tel` enum('y','n') NOT NULL DEFAULT 'y',
  `open_hp` enum('y','n') NOT NULL DEFAULT 'y',
  `view_timeline` char(1) NOT NULL DEFAULT '1',
  `view_favorite` char(1) NOT NULL DEFAULT '1',
  `view_followinggul` char(1) NOT NULL DEFAULT '1',
  `favorite` text NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_eyoom_member`
--

INSERT INTO `g5_eyoom_member` (`mb_id`, `level`, `level_point`, `photo`, `myhome_cover`, `myhome_hit`, `open_page`, `respond`, `onoff_push`, `onoff_push_respond`, `onoff_push_memo`, `onoff_push_social`, `onoff_push_likes`, `onoff_push_guest`, `onoff_social`, `open_email`, `open_homepage`, `open_tel`, `open_hp`, `view_timeline`, `view_favorite`, `view_followinggul`, `favorite`, `likes`) VALUES
('admin', 1, 0, 'admin.gif', '', 1, 'y', 0, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'y', 'y', 'y', 'y', '1', '1', '1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_menu`
--

CREATE TABLE `g5_eyoom_menu` (
  `me_id` int(11) NOT NULL,
  `me_theme` varchar(20) NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_icon` varchar(100) NOT NULL,
  `me_shop` char(1) NOT NULL DEFAULT '2',
  `me_path` varchar(255) NOT NULL,
  `me_type` varchar(30) NOT NULL,
  `me_pid` varchar(40) NOT NULL,
  `me_sca` varchar(50) NOT NULL,
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT 0,
  `me_permit_level` tinyint(4) NOT NULL DEFAULT 1,
  `me_side` enum('y','n') NOT NULL DEFAULT 'y',
  `me_use` enum('y','n') NOT NULL DEFAULT 'y',
  `me_use_nav` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_eyoom_menu`
--

INSERT INTO `g5_eyoom_menu` (`me_id`, `me_theme`, `me_code`, `me_name`, `me_icon`, `me_shop`, `me_path`, `me_type`, `me_pid`, `me_sca`, `me_link`, `me_target`, `me_order`, `me_permit_level`, `me_side`, `me_use`, `me_use_nav`) VALUES
(1, 'eb4_basic', '001002', '오시는길', '', '2', 'OVERVIEW > 오시는길', 'pid', 'contact', '', '/page/?pid=contact', 'self', 2, 1, 'y', 'y', 'y'),
(2, 'eb4_basic', '001001', '회사개요', '', '2', 'OVERVIEW > 회사개요', 'pid', 'overview', '', '/page/?pid=overview', 'self', 1, 1, 'y', 'y', 'y'),
(3, 'eb4_basic', '001', 'OVERVIEW', '', '2', 'OVERVIEW', 'pid', 'overview', '', '/page/?pid=overview', 'self', 1, 1, 'y', 'y', 'y'),
(4, 'eb4_basic', '002', 'BUSINESS', '', '2', 'BUSINESS', 'pid', 'business', '', '/page/?pid=business', 'self', 2, 1, 'y', 'y', 'y'),
(5, 'eb4_basic', '002001', '프로젝트', '', '2', 'BUSINESS > 프로젝트', 'pid', 'business', '', '/page/?pid=business', 'self', 1, 1, 'y', 'y', 'y'),
(6, 'eb4_basic', '003', 'RECRUIT', '', '2', 'RECRUIT', 'pid', 'recruit', '', '/page/?pid=recruit', 'self', 3, 1, 'y', 'y', 'y'),
(7, 'eb4_basic', '004', 'COMMUNITY', '', '2', 'COMMUNITY', 'board', 'business_news', '', '/bbs/board.php?bo_table=business_news', 'self', 4, 1, 'y', 'y', 'y'),
(8, 'eb4_basic', '004001', 'News', '', '2', 'COMMUNITY > News', 'board', 'business_news', '', '/bbs/board.php?bo_table=business_news', 'self', 1, 1, 'y', 'y', 'y'),
(9, 'eb4_basic', '004001001', '사회', '', '2', 'COMMUNITY > News > 사회', 'board', 'magazine_society', '', '/bbs/board.php?bo_table=magazine_society', 'self', 1, 1, 'y', 'y', 'y'),
(10, 'eb4_basic', '004002', 'Notice', '', '2', 'COMMUNITY > Notice', 'board', 'business_notice', '', '/bbs/board.php?bo_table=business_notice', 'self', 2, 1, 'y', 'y', 'y'),
(11, 'eb4_basic', '004002001', '제품 리뷰', '', '2', 'COMMUNITY > Notice > 제품 리뷰', 'board', 'magazine_review', '', '/bbs/board.php?bo_table=magazine_review', 'self', 1, 1, 'y', 'y', 'y'),
(12, 'eb4_basic', '004002002', '문화', '', '2', 'COMMUNITY > Notice > 문화', 'board', 'magazine_culture', '', '/bbs/board.php?bo_table=magazine_culture', 'self', 2, 1, 'y', 'y', 'y'),
(13, 'eb4_basic', '005', '매뉴얼', '', '2', '매뉴얼', 'pid', 'manual', '', '/page/?pid=manual', 'self', 5, 1, 'y', 'y', 'y'),
(14, 'eb4_basic', '001001001', '스킨/토너/미스트', '', '1', '뷰티/피부 > 스킨케어 > 스킨/토너/미스트', 'shop', '10101020', '', '/shop/list.php?ca_id=10101020', 'self', 2, 1, 'y', 'y', 'y'),
(15, 'eb4_basic', '001001', '스킨케어', '', '1', '뷰티/피부 > 스킨케어', 'shop', '101010', '', '/shop/list.php?ca_id=101010', 'self', 1, 1, 'y', 'y', 'y'),
(16, 'eb4_basic', '001', '뷰티/피부', '', '1', '뷰티/피부', 'shop', '1010', '', '/shop/list.php?ca_id=1010', 'self', 1, 1, 'y', 'y', 'y'),
(17, 'eb4_basic', '001001002', '에센스/세럼', '', '1', '뷰티/피부 > 스킨케어 > 에센스/세럼', 'shop', '10101040', '', '/shop/list.php?ca_id=10101040', 'self', 4, 1, 'y', 'y', 'y'),
(18, 'eb4_basic', '001001003', '크림/오일', '', '1', '뷰티/피부 > 스킨케어 > 크림/오일', 'shop', '10101050', '', '/shop/list.php?ca_id=10101050', 'self', 5, 1, 'y', 'y', 'y'),
(19, 'eb4_basic', '001002', '헤어/바디', '', '1', '뷰티/피부 > 헤어/바디', 'shop', '101040', '', '/shop/list.php?ca_id=101040', 'self', 3, 1, 'y', 'y', 'y'),
(20, 'eb4_basic', '001002001', '헤어케어', '', '1', '뷰티/피부 > 헤어/바디 > 헤어케어', 'shop', '10104010', '', '/shop/list.php?ca_id=10104010', 'self', 1, 1, 'y', 'y', 'y'),
(21, 'eb4_basic', '001002002', '헤어스타일링', '', '1', '뷰티/피부 > 헤어/바디 > 헤어스타일링', 'shop', '10104020', '', '/shop/list.php?ca_id=10104020', 'self', 2, 1, 'y', 'y', 'y'),
(22, 'eb4_basic', '001003', '메이크업', '', '1', '뷰티/피부 > 메이크업', 'shop', '101020', '', '/shop/list.php?ca_id=101020', 'self', 2, 1, 'y', 'y', 'y'),
(23, 'eb4_basic', '001004', '향수', '', '1', '뷰티/피부 > 향수', 'shop', '101030', '', '/shop/list.php?ca_id=101030', 'self', 5, 1, 'y', 'y', 'y'),
(24, 'eb4_basic', '002', '신선푸드', '', '1', '신선푸드', 'shop', '1020', '', '/shop/list.php?ca_id=1020', 'self', 2, 1, 'y', 'y', 'y'),
(25, 'eb4_basic', '002001', '과일', '', '1', '신선푸드 > 과일', 'shop', '102010', '', '/shop/list.php?ca_id=102010', 'self', 1, 1, 'y', 'y', 'y'),
(26, 'eb4_basic', '002001001', '생과일', '', '1', '신선푸드 > 과일 > 생과일', 'shop', '10201010', '', '/shop/list.php?ca_id=10201010', 'self', 1, 1, 'y', 'y', 'y'),
(27, 'eb4_basic', '002001002', '기타과일(냉동,건조과일)', '', '1', '신선푸드 > 과일 > 기타과일(냉동,건조과일)', 'shop', '10201020', '', '/shop/list.php?ca_id=10201020', 'self', 2, 1, 'y', 'y', 'y'),
(28, 'eb4_basic', '002002', '채소/야채', '', '1', '신선푸드 > 채소/야채', 'shop', '102020', '', '/shop/list.php?ca_id=102020', 'self', 2, 1, 'y', 'y', 'y'),
(34, 'eb4_basic', '003', '가공푸드', '', '1', '가공푸드', 'shop', '1040', '', '/shop/list.php?ca_id=1040', 'self', 3, 1, 'y', 'y', 'y'),
(35, 'eb4_basic', '003001', '차/커피/음료', '', '1', '가공푸드 > 차/커피/음료', 'shop', '104050', '', '/shop/list.php?ca_id=104050', 'self', 6, 1, 'y', 'y', 'y'),
(37, 'eb4_basic', '003003', '과자/디저트/아이스크림', '', '1', '가공푸드 > 과자/디저트/아이스크림', 'shop', '104060', '', '/shop/list.php?ca_id=104060', 'self', 7, 1, 'y', 'y', 'y'),
(38, 'eb4_basic', '003004', '건강/다이어트', '', '1', '가공푸드 > 건강/다이어트', 'shop', '1020e0', '', '/shop/list.php?ca_id=1020e0', 'self', 8, 1, 'y', 'y', 'y'),
(39, 'eb4_basic', '004', '디지털 가전', '', '1', '디지털 가전', 'shop', '1050', '', '/shop/list.php?ca_id=1050', 'self', 4, 1, 'y', 'y', 'y'),
(47, 'eb4_basic', '004003', 'IT', '', '2', 'COMMUNITY > IT', 'board', 'magazine_it', '', '/bbs/board.php?bo_table=magazine_it', 'self', 3, 1, 'y', 'y', 'y'),
(48, 'eb4_basic', '004004', '블로그', '', '2', 'COMMUNITY > 블로그', 'board', 'blog', '', '/bbs/board.php?bo_table=blog', 'self', 4, 1, 'y', 'y', 'y'),
(49, 'eb4_basic', '004005', '스포츠', '', '2', 'COMMUNITY > 스포츠', 'board', 'magazine_sports', '', '/bbs/board.php?bo_table=magazine_sports', 'self', 5, 1, 'y', 'y', 'y'),
(50, 'eb4_basic', '004006', '연예', '', '2', 'COMMUNITY > 연예', 'board', 'magazine_entertain', '', '/bbs/board.php?bo_table=magazine_entertain', 'self', 6, 1, 'y', 'y', 'y'),
(51, 'eb4_basic', '001001004', '클렌징', '', '1', '뷰티/피부 > 스킨케어 > 클렌징', 'shop', '10101010', '', '/shop/list.php?ca_id=10101010', 'self', 1, 1, 'y', 'y', 'y'),
(52, 'eb4_basic', '001001005', '로션/에멀젼', '', '1', '뷰티/피부 > 스킨케어 > 로션/에멀젼', 'shop', '10101030', '', '/shop/list.php?ca_id=10101030', 'self', 3, 1, 'y', 'y', 'y'),
(54, 'eb4_basic', '001001006', '마스크/팩/스틱제품', '', '1', '뷰티/피부 > 스킨케어 > 마스크/팩/스틱제품', 'shop', '10101060', '', '/shop/list.php?ca_id=10101060', 'self', 6, 1, 'y', 'y', 'y'),
(55, 'eb4_basic', '001001007', '아이케어/넥케어(목관리)', '', '1', '뷰티/피부 > 스킨케어 > 아이케어/넥케어(목관리)', 'shop', '10101070', '', '/shop/list.php?ca_id=10101070', 'self', 7, 1, 'y', 'n', 'y'),
(56, 'eb4_basic', '001001008', '선케어(자외선차단)', '', '1', '뷰티/피부 > 스킨케어 > 선케어(자외선차단)', 'shop', '10101080', '', '/shop/list.php?ca_id=10101080', 'self', 8, 1, 'y', 'y', 'y'),
(57, 'eb4_basic', '001001009', '화장품세트', '', '1', '뷰티/피부 > 스킨케어 > 화장품세트', 'shop', '10101090', '', '/shop/list.php?ca_id=10101090', 'self', 9, 1, 'y', 'y', 'y'),
(58, 'eb4_basic', '001003001', '베이스메이크업', '', '1', '뷰티/피부 > 메이크업 > 베이스메이크업', 'shop', '10102010', '', '/shop/list.php?ca_id=10102010', 'self', 1, 1, 'y', 'y', 'y'),
(59, 'eb4_basic', '001003002', '립메이크업', '', '1', '뷰티/피부 > 메이크업 > 립메이크업', 'shop', '10102020', '', '/shop/list.php?ca_id=10102020', 'self', 2, 1, 'y', 'y', 'y'),
(60, 'eb4_basic', '001003003', '아이메이크업', '', '1', '뷰티/피부 > 메이크업 > 아이메이크업', 'shop', '10102030', '', '/shop/list.php?ca_id=10102030', 'self', 3, 1, 'y', 'y', 'y'),
(61, 'eb4_basic', '001003004', '블러셔/하이라이터/쉐딩', '', '1', '뷰티/피부 > 메이크업 > 블러셔/하이라이터/쉐딩', 'shop', '10102040', '', '/shop/list.php?ca_id=10102040', 'self', 4, 1, 'y', 'n', 'y'),
(62, 'eb4_basic', '001003005', '메이크업세트', '', '1', '뷰티/피부 > 메이크업 > 메이크업세트', 'shop', '10102050', '', '/shop/list.php?ca_id=10102050', 'self', 5, 1, 'y', 'y', 'y'),
(63, 'eb4_basic', '001002003', '바디케어', '', '1', '뷰티/피부 > 헤어/바디 > 바디케어', 'shop', '10104030', '', '/shop/list.php?ca_id=10104030', 'self', 3, 1, 'y', 'y', 'y'),
(64, 'eb4_basic', '001002004', '핸드케어/풋케어/네일', '', '1', '뷰티/피부 > 헤어/바디 > 핸드케어/풋케어/네일', 'shop', '10104040', '', '/shop/list.php?ca_id=10104040', 'self', 4, 1, 'y', 'y', 'y'),
(65, 'eb4_basic', '001002005', '입욕제', '', '1', '뷰티/피부 > 헤어/바디 > 입욕제', 'shop', '10104050', '', '/shop/list.php?ca_id=10104050', 'self', 5, 1, 'y', 'y', 'y'),
(66, 'eb4_basic', '001005', '남성전용 화장품', '', '1', '뷰티/피부 > 남성전용 화장품', 'shop', '101050', '', '/shop/list.php?ca_id=101050', 'self', 4, 1, 'y', 'y', 'y'),
(67, 'eb4_basic', '001005001', '클렌징 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 클렌징 (남성)', 'shop', '10105010', '', '/shop/list.php?ca_id=10105010', 'self', 1, 1, 'y', 'y', 'y'),
(68, 'eb4_basic', '001005002', '스킨/토너 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 스킨/토너 (남성)', 'shop', '10105020', '', '/shop/list.php?ca_id=10105020', 'self', 2, 1, 'y', 'y', 'y'),
(69, 'eb4_basic', '001005003', '로션/에멀젼 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 로션/에멀젼 (남성)', 'shop', '10105030', '', '/shop/list.php?ca_id=10105030', 'self', 3, 1, 'y', 'y', 'y'),
(70, 'eb4_basic', '001005004', '에센스/세럼 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 에센스/세럼 (남성)', 'shop', '10105040', '', '/shop/list.php?ca_id=10105040', 'self', 4, 1, 'y', 'y', 'y'),
(71, 'eb4_basic', '001005005', '크림/선크림 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 크림/선크림 (남성)', 'shop', '10105050', '', '/shop/list.php?ca_id=10105050', 'self', 5, 1, 'y', 'y', 'y'),
(72, 'eb4_basic', '001005006', '올인원 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 올인원 (남성)', 'shop', '10105060', '', '/shop/list.php?ca_id=10105060', 'self', 6, 1, 'y', 'y', 'y'),
(73, 'eb4_basic', '001005007', '마스크/팩 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 마스크/팩 (남성)', 'shop', '10105070', '', '/shop/list.php?ca_id=10105070', 'self', 7, 1, 'y', 'y', 'y'),
(74, 'eb4_basic', '001005008', '쉐이빙폼 (남성)', '', '1', '뷰티/피부 > 남성전용 화장품 > 쉐이빙폼 (남성)', 'shop', '10105080', '', '/shop/list.php?ca_id=10105080', 'self', 8, 1, 'y', 'y', 'y'),
(75, 'eb4_basic', '001004001', '여성향수', '', '1', '뷰티/피부 > 향수 > 여성향수', 'shop', '10103010', '', '/shop/list.php?ca_id=10103010', 'self', 1, 1, 'y', 'y', 'y'),
(76, 'eb4_basic', '001004002', '남성향수', '', '1', '뷰티/피부 > 향수 > 남성향수', 'shop', '10103020', '', '/shop/list.php?ca_id=10103020', 'self', 2, 1, 'y', 'y', 'y'),
(78, 'eb4_basic', '001006', '뷰티기기/소품', '', '1', '뷰티/피부 > 뷰티기기/소품', 'shop', '101060', '', '/shop/list.php?ca_id=101060', 'self', 6, 1, 'y', 'y', 'y'),
(79, 'eb4_basic', '001006001', '면도기/제모기', '', '1', '뷰티/피부 > 뷰티기기/소품 > 면도기/제모기', 'shop', '10106010', '', '/shop/list.php?ca_id=10106010', 'self', 1, 1, 'y', 'y', 'y'),
(80, 'eb4_basic', '001006002', '피부케어기기/소품', '', '1', '뷰티/피부 > 뷰티기기/소품 > 피부케어기기/소품', 'shop', '10106020', '', '/shop/list.php?ca_id=10106020', 'self', 2, 1, 'y', 'y', 'y'),
(81, 'eb4_basic', '001006003', '헤어기기/소품', '', '1', '뷰티/피부 > 뷰티기기/소품 > 헤어기기/소품', 'shop', '10106030', '', '/shop/list.php?ca_id=10106030', 'self', 3, 1, 'y', 'y', 'y'),
(82, 'eb4_basic', '001006004', '메이크업소품', '', '1', '뷰티/피부 > 뷰티기기/소품 > 메이크업소품', 'shop', '10106040', '', '/shop/list.php?ca_id=10106040', 'self', 4, 1, 'y', 'y', 'y'),
(83, 'eb4_basic', '001006005', '위생/클렌징', '', '1', '뷰티/피부 > 뷰티기기/소품 > 위생/클렌징 ', 'shop', '10106050', '', '/shop/list.php?ca_id=10106050', 'self', 5, 1, 'y', 'y', 'y'),
(84, 'eb4_basic', '002002001', '잎채소', '', '1', '신선푸드 > 채소/야채 > 잎채소', 'shop', '10202010', '', '/shop/list.php?ca_id=10202010', 'self', 1, 1, 'y', 'y', 'y'),
(85, 'eb4_basic', '002002002', '뿌리채소', '', '1', '신선푸드 > 채소/야채 > 뿌리채소', 'shop', '10202020', '', '/shop/list.php?ca_id=10202020', 'self', 2, 1, 'y', 'y', 'y'),
(86, 'eb4_basic', '002002003', '열매채소(오이/호박)', '', '1', '신선푸드 > 채소/야채 > 열매채소(오이/호박)', 'shop', '10202030', '', '/shop/list.php?ca_id=10202030', 'self', 3, 1, 'y', 'y', 'y'),
(87, 'eb4_basic', '002002004', '양파/마늘/생강/파', '', '1', '신선푸드 > 채소/야채 > 양파/마늘/생강/파', 'shop', '10202040', '', '/shop/list.php?ca_id=10202040', 'self', 4, 1, 'y', 'y', 'y'),
(88, 'eb4_basic', '002002005', '냉동채소', '', '1', '신선푸드 > 채소/야채 > 냉동채소', 'shop', '10202050', '', '/shop/list.php?ca_id=10202050', 'self', 5, 1, 'y', 'y', 'y'),
(89, 'eb4_basic', '002002006', '인삼/한방재료', '', '1', '신선푸드 > 채소/야채 > 인삼/한방재료', 'shop', '10202060', '', '/shop/list.php?ca_id=10202060', 'self', 6, 1, 'y', 'y', 'y'),
(94, 'eb4_basic', '011', 'P2U 내역', '', '1', 'P2U 내역', 'pid', 'userhistory', '', '/page/?pid=userhistory', 'self', 15, 1, 'n', 'y', 'n'),
(95, 'eb4_basic', '006', 'P2U 내역', '', '2', 'P2U 내역', 'pid', 'userhistory', '', '/page/?pid=userhistory', 'self', 6, 1, 'n', 'n', 'n'),
(96, 'eb4_basic', '004002003', '전자금융이용약관', '', '2', '전자금융이용약관', 'page', 'company', '', '/bbs/content.php?co_id=company', 'self', 3, 1, 'n', 'y', 'y'),
(98, 'eb4_basic', '003005', '김치/반찬', '', '1', '가공푸드 > 김치/반찬', 'shop', '104030', '', '/shop/list.php?ca_id=104030', 'self', 3, 1, 'y', 'y', 'y'),
(99, 'eb4_basic', '002003', '쌀/잡곡/견과', '', '1', '신선푸드 > 쌀/잡곡/견과', 'shop', '102030', '', '/shop/list.php?ca_id=102030', 'self', 3, 1, 'y', 'y', 'y'),
(100, 'eb4_basic', '002004', '수산/건어물', '', '1', '신선푸드 > 수산/건어물', 'shop', '102040', '', '/shop/list.php?ca_id=102040', 'self', 4, 1, 'y', 'y', 'y'),
(101, 'eb4_basic', '002003001', '쌀/잡곡선물세트', '', '1', '신선푸드 > 쌀/잡곡/견과 > 쌀/잡곡선물세트', 'shop', '10203010', '', '/shop/list.php?ca_id=10203010', 'self', 1, 1, 'y', 'y', 'y'),
(102, 'eb4_basic', '002003002', '찹쌀/현미/흑미', '', '1', '신선푸드 > 쌀/잡곡/견과 > 찹쌀/현미/흑미', 'shop', '10203020', '', '/shop/list.php?ca_id=10203020', 'self', 2, 1, 'y', 'y', 'y'),
(103, 'eb4_basic', '002003003', '귀리/보리/조/서리태', '', '1', '신선푸드 > 쌀/잡곡/견과 > 귀리/보리/조/서리태', 'shop', '10203030', '', '/shop/list.php?ca_id=10203030', 'self', 3, 1, 'y', 'y', 'y'),
(104, 'eb4_basic', '002003004', '견과류', '', '1', '신선푸드 > 쌀/잡곡/견과 > 견과류', 'shop', '10203040', '', '/shop/list.php?ca_id=10203040', 'self', 4, 1, 'y', 'y', 'y'),
(105, 'eb4_basic', '002004001', '생선', '', '1', '신선푸드 > 수산/건어물 > 생선', 'shop', '10204010', '', '/shop/list.php?ca_id=10204010', 'self', 1, 1, 'y', 'y', 'y'),
(106, 'eb4_basic', '002004002', '김/해조류', '', '1', '신선푸드 > 수산/건어물 > 김/해조류', 'shop', '10204020', '', '/shop/list.php?ca_id=10204020', 'self', 2, 1, 'y', 'y', 'y'),
(107, 'eb4_basic', '002004003', '오징어/낙지/쭈꾸미', '', '1', '신선푸드 > 수산/건어물 > 오징어/낙지/쭈꾸미', 'shop', '10204030', '', '/shop/list.php?ca_id=10204030', 'self', 4, 1, 'y', 'y', 'y'),
(108, 'eb4_basic', '002004004', '새우/게/랍스터', '', '1', '신선푸드 > 수산/건어물 > 새우/게/랍스터', 'shop', '10204050', '', '/shop/list.php?ca_id=10204050', 'self', 5, 1, 'y', 'y', 'y'),
(110, 'eb4_basic', '002004005', '건어물', '', '1', '신선푸드 > 수산/건어물 > 건어물', 'shop', '10204060', '', '/shop/list.php?ca_id=10204060', 'self', 6, 1, 'y', 'y', 'y'),
(111, 'eb4_basic', '002004006', '전복/굴/조개류', '', '1', '신선푸드 > 수산/건어물 > 전복/굴/조개류', 'shop', '10204040', '', '/shop/list.php?ca_id=10204040', 'self', 3, 1, 'y', 'y', 'y'),
(112, 'eb4_basic', '002004007', '수산선물세트', '', '1', '신선푸드 > 수산/건어물 > 수산선물세트', 'shop', '10204070', '', '/shop/list.php?ca_id=10204070', 'self', 7, 1, 'y', 'y', 'y'),
(113, 'eb4_basic', '002004008', '기타해산물', '', '1', '신선푸드 > 수산/건어물 > 기타해산물', 'shop', '10204080', '', '/shop/list.php?ca_id=10204080', 'self', 8, 1, 'y', 'y', 'y'),
(114, 'eb4_basic', '003006', '우유/유제품', '', '1', '가공푸드 > 우유/유제품', 'shop', '104010', '', '/shop/list.php?ca_id=104010', 'self', 1, 1, 'y', 'y', 'y'),
(115, 'eb4_basic', '002005', '정육/계란', '', '1', '신선푸드 > 정육/계란', 'shop', '102050', '', '/shop/list.php?ca_id=102050', 'self', 5, 1, 'y', 'y', 'y'),
(116, 'eb4_basic', '002005001', '소고기 (국내산,수입산)', '', '1', '신선푸드 > 정육/계란 > 소고기 (국내산,수입산)', 'shop', '10205010', '', '/shop/list.php?ca_id=10205010', 'self', 1, 1, 'y', 'y', 'y'),
(117, 'eb4_basic', '002005002', '돼지고기 (국내산/수입산)', '', '1', '신선푸드 > 정육/계란 > 돼지고기 (국내산/수입산)', 'shop', '10205020', '', '/shop/list.php?ca_id=10205020', 'self', 2, 1, 'y', 'y', 'y'),
(118, 'eb4_basic', '002005003', '닭고기/오리고기', '', '1', '신선푸드 > 정육/계란 > 닭고기/오리고기', 'shop', '10205030', '', '/shop/list.php?ca_id=10205030', 'self', 3, 1, 'y', 'y', 'y'),
(119, 'eb4_basic', '002005004', '계란/알류', '', '1', '신선푸드 > 정육/계란 > 계란/알류', 'shop', '10205040', '', '/shop/list.php?ca_id=10205040', 'self', 4, 1, 'y', 'y', 'y'),
(120, 'eb4_basic', '002005005', '양념육', '', '1', '신선푸드 > 정육/계란 > 양념육', 'shop', '10205050', '', '/shop/list.php?ca_id=10205050', 'self', 5, 1, 'y', 'y', 'y'),
(122, 'eb4_basic', '002005006', '정육선물세트', '', '1', '신선푸드 > 정육/계란 > 정육선물세트', 'shop', '10205060', '', '/shop/list.php?ca_id=10205060', 'self', 6, 1, 'y', 'y', 'y'),
(124, 'eb4_basic', '003006001', '우유/두유', '', '1', '가공푸드 > 우유/유제품 > 우유/두유', 'shop', '10401010', '', '/shop/list.php?ca_id=10401010', 'self', 1, 1, 'y', 'y', 'y'),
(125, 'eb4_basic', '003006002', '치즈/요구르트', '', '1', '가공푸드 > 우유/유제품 > 치즈/요구르트', 'shop', '10401020', '', '/shop/list.php?ca_id=10401020', 'self', 2, 1, 'y', 'y', 'y'),
(126, 'eb4_basic', '003006003', '생크림/연유/버터', '', '1', '가공푸드 > 우유/유제품 > 생크림/연유/버터', 'shop', '10401030', '', '/shop/list.php?ca_id=10401030', 'self', 3, 1, 'y', 'y', 'y'),
(127, 'eb4_basic', '003007', '냉장/냉동/간편식', '', '1', '가공푸드 > 냉장/냉동/간편식', 'shop', '104020', '', '/shop/list.php?ca_id=104020', 'self', 2, 1, 'y', 'y', 'y'),
(128, 'eb4_basic', '003007001', '밀키트/간편요리', '', '1', '가공푸드 > 냉장/냉동/간편식 > 밀키트/간편요리', 'shop', '10402010', '', '/shop/list.php?ca_id=10402010', 'self', 1, 1, 'y', 'y', 'y'),
(129, 'eb4_basic', '003007002', '즉석밥/죽/스프', '', '1', '가공푸드 > 냉장/냉동/간편식 > 즉석밥/죽/스프', 'shop', '10402020', '', '/shop/list.php?ca_id=10402020', 'self', 2, 1, 'y', 'y', 'y'),
(130, 'eb4_basic', '003007003', '국/탕/찌개', '', '1', '가공푸드 > 냉장/냉동/간편식 > 국/탕/찌개', 'shop', '10402030', '', '/shop/list.php?ca_id=10402030', 'self', 3, 1, 'y', 'y', 'y'),
(131, 'eb4_basic', '003007004', '햄/소시지/베이컨', '', '1', '가공푸드 > 냉장/냉동/간편식 > 햄/소시지/베이컨', 'shop', '10402040', '', '/shop/list.php?ca_id=10402040', 'self', 4, 1, 'y', 'y', 'y'),
(132, 'eb4_basic', '003007005', '떡볶이/만두', '', '1', '가공푸드 > 냉장/냉동/간편식 > 떡볶이/만두', 'shop', '10402050', '', '/shop/list.php?ca_id=10402050', 'self', 5, 1, 'y', 'y', 'y'),
(133, 'eb4_basic', '003007006', '돈까스/고로케/너겟', '', '1', '가공푸드 > 냉장/냉동/간편식 > 돈까스/고로케/너겟', 'shop', '10402060', '', '/shop/list.php?ca_id=10402060', 'self', 6, 1, 'y', 'y', 'y'),
(134, 'eb4_basic', '003007007', '피자/핫도그/햄버거', '', '1', '가공푸드 > 냉장/냉동/간편식 > 피자/핫도그/햄버거', 'shop', '10402070', '', '/shop/list.php?ca_id=10402070', 'self', 7, 1, 'y', 'y', 'y'),
(135, 'eb4_basic', '003007008', '짜장/카레', '', '1', '가공푸드 > 냉장/냉동/간편식 > 짜장/카레', 'shop', '10402080', '', '/shop/list.php?ca_id=10402080', 'self', 8, 1, 'y', 'y', 'y'),
(136, 'eb4_basic', '003007009', '어묵/맛살/전/튀김', '', '1', '가공푸드 > 냉장/냉동/간편식 > 어묵/맛살/전/튀김', 'shop', '10402090', '', '/shop/list.php?ca_id=10402090', 'self', 9, 1, 'y', 'y', 'y'),
(138, 'eb4_basic', '003007011', '안주류', '', '1', '가공푸드 > 냉장/냉동/간편식 > 안주류', 'shop', '104020b0', '', '/shop/list.php?ca_id=104020b0', 'self', 11, 1, 'y', 'y', 'y'),
(139, 'eb4_basic', '003001001', '커피믹스/원두커피', '', '1', '가공푸드 > 차/커피/음료 > 커피믹스/원두커피', 'shop', '10405010', '', '/shop/list.php?ca_id=10405010', 'self', 1, 1, 'y', 'y', 'y'),
(140, 'eb4_basic', '003001002', '캡슐/드립백/더치', '', '1', '가공푸드 > 차/커피/음료 > 캡슐/드립백/더치', 'shop', '10405020', '', '/shop/list.php?ca_id=10405020', 'self', 2, 1, 'y', 'y', 'y'),
(141, 'eb4_basic', '003001003', '녹차/곡물/전통차', '', '1', '가공푸드 > 차/커피/음료 > 녹차/곡물/전통차', 'shop', '10405030', '', '/shop/list.php?ca_id=10405030', 'self', 3, 1, 'y', 'y', 'y'),
(142, 'eb4_basic', '003001004', '코코아/홍차/기타분말', '', '1', '가공푸드 > 차/커피/음료 > 코코아/홍차/기타분말', 'shop', '10405040', '', '/shop/list.php?ca_id=10405040', 'self', 4, 1, 'y', 'y', 'y'),
(143, 'eb4_basic', '003001005', '허브/과일차', '', '1', '가공푸드 > 차/커피/음료 > 허브/과일차', 'shop', '10405050', '', '/shop/list.php?ca_id=10405050', 'self', 5, 1, 'y', 'y', 'y'),
(144, 'eb4_basic', '003001006', '커피음료/시럽', '', '1', '가공푸드 > 차/커피/음료 > 커피음료/시럽', 'shop', '10405060', '', '/shop/list.php?ca_id=10405060', 'self', 6, 1, 'y', 'y', 'y'),
(145, 'eb4_basic', '003001007', '커피/차 선물세트', '', '1', '가공푸드 > 차/커피/음료 > 커피/차 선물세트', 'shop', '10405070', '', '/shop/list.php?ca_id=10405070', 'self', 7, 1, 'y', 'y', 'y'),
(146, 'eb4_basic', '003005001', '김치', '', '1', '가공푸드 > 김치/반찬 > 김치', 'shop', '10403010', '', '/shop/list.php?ca_id=10403010', 'self', 1, 1, 'y', 'y', 'y'),
(147, 'eb4_basic', '003005002', '반찬/젓갈', '', '1', '가공푸드 > 김치/반찬 > 반찬/젓갈', 'shop', '10403020', '', '/shop/list.php?ca_id=10403020', 'self', 2, 1, 'y', 'y', 'y'),
(148, 'eb4_basic', '003005003', '두부/묵/기타콩가공품', '', '1', '가공푸드 > 김치/반찬 > 두부/묵/기타콩가공품', 'shop', '10403030', '', '/shop/list.php?ca_id=10403030', 'self', 3, 1, 'y', 'y', 'y'),
(149, 'eb4_basic', '003003001', '과자/쿠키/파이', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 과자/쿠키/파이', 'shop', '10406010', '', '/shop/list.php?ca_id=10406010', 'self', 1, 1, 'y', 'y', 'y'),
(150, 'eb4_basic', '003003002', '아이스크림/빙수', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 아이스크림/빙수', 'shop', '10406040', '', '/shop/list.php?ca_id=10406040', 'self', 4, 1, 'y', 'y', 'y'),
(151, 'eb4_basic', '003003003', '시리얼/그래놀라', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 시리얼/그래놀라', 'shop', '10406020', '', '/shop/list.php?ca_id=10406020', 'self', 2, 1, 'y', 'y', 'y'),
(153, 'eb4_basic', '003003004', '캔디/껌/캐러멜', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 캔디/껌/캐러멜', 'shop', '10406050', '', '/shop/list.php?ca_id=10406050', 'self', 5, 1, 'y', 'y', 'y'),
(154, 'eb4_basic', '003003005', '디저트/케이크/베이커리', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 디저트/케이크/베이커리', 'shop', '10406030', '', '/shop/list.php?ca_id=10406030', 'self', 3, 1, 'y', 'y', 'y'),
(155, 'eb4_basic', '003003006', '스낵/견과류', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 스낵/견과류', 'shop', '10406060', '', '/shop/list.php?ca_id=10406060', 'self', 6, 1, 'y', 'y', 'y'),
(156, 'eb4_basic', '003003007', '전통과자', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 전통과자', 'shop', '10406070', '', '/shop/list.php?ca_id=10406070', 'self', 7, 1, 'y', 'y', 'y'),
(157, 'eb4_basic', '003003008', '기타간식', '', '1', '가공푸드 > 과자/디저트/아이스크림 > 기타간식', 'shop', '10406080', '', '/shop/list.php?ca_id=10406080', 'self', 8, 1, 'y', 'y', 'y'),
(161, 'eb4_basic', '003004001', '홍삼/비타민/영양제', '', '1', '가공푸드 > 건강/다이어트 > 홍삼/비타민/영양제', 'shop', '1020e010', '', '/shop/list.php?ca_id=1020e010', 'self', 1, 1, 'y', 'y', 'y'),
(162, 'eb4_basic', '003004002', '영양식/건강즙/건강보조제', '', '1', '가공푸드 > 건강/다이어트 > 영양식/건강즙/건강보조제', 'shop', '1020e020', '', '/shop/list.php?ca_id=1020e020', 'self', 2, 1, 'y', 'y', 'y'),
(163, 'eb4_basic', '003004003', '숙취해소/소화제', '', '1', '가공푸드 > 건강/다이어트 > 숙취해소/소화제', 'shop', '1020e030', '', '/shop/list.php?ca_id=1020e030', 'self', 5, 1, 'y', 'y', 'y'),
(164, 'eb4_basic', '003004004', '어린이 건강식품', '', '1', '가공푸드 > 건강/다이어트 > 어린이 건강식품', 'shop', '1020e040', '', '/shop/list.php?ca_id=1020e040', 'self', 6, 1, 'y', 'y', 'y'),
(167, 'eb4_basic', '003004005', '건강환(분말류)/꿀/프로폴리스', '', '1', '가공푸드 > 건강/다이어트 > 건강환(분말류)/꿀/프로폴리스', 'shop', '1020e050', '', '/shop/list.php?ca_id=1020e050', 'self', 3, 1, 'y', 'y', 'y'),
(168, 'eb4_basic', '003004006', '다이어트보조/뷰티푸드', '', '1', '가공푸드 > 건강/다이어트 > 다이어트보조/뷰티푸드', 'shop', '1020e060', '', '/shop/list.php?ca_id=1020e060', 'self', 4, 1, 'y', 'y', 'y'),
(175, 'eb4_basic', '003004007', '우유/유제품', '', '1', '가공푸드 > 건강/다이어트 > 우유/유제품', 'shop', '104010', '', '/shop/list.php?ca_id=104010', 'self', 7, 1, 'y', 'y', 'y'),
(176, 'eb4_basic', '003008', '생수/음료', '', '1', '가공푸드 > 생수/음료', 'shop', '104040', '', '/shop/list.php?ca_id=104040', 'self', 4, 1, 'y', 'y', 'y'),
(177, 'eb4_basic', '003008001', '생수/탄산수', '', '1', '가공푸드 > 생수/음료 > 생수/탄산수', 'shop', '10404010', '', '/shop/list.php?ca_id=10404010', 'self', 1, 1, 'y', 'y', 'y'),
(178, 'eb4_basic', '003008002', '스포츠,건강음료', '', '1', '가공푸드 > 생수/음료 > 스포츠,건강음료', 'shop', '10404020', '', '/shop/list.php?ca_id=10404020', 'self', 2, 1, 'y', 'y', 'y'),
(179, 'eb4_basic', '003008003', '전통음료/차음료', '', '1', '가공푸드 > 생수/음료 > 전통음료/차음료', 'shop', '10404030', '', '/shop/list.php?ca_id=10404030', 'self', 3, 1, 'y', 'y', 'y'),
(180, 'eb4_basic', '003008004', '주스/과즙음료', '', '1', '가공푸드 > 생수/음료 > 주스/과즙음료', 'shop', '10404040', '', '/shop/list.php?ca_id=10404040', 'self', 4, 1, 'y', 'y', 'y'),
(181, 'eb4_basic', '004001', 'TV/영상/음향가전', '', '1', '디지털 가전 > TV/영상/음향가전', 'shop', '105010', '', '/shop/list.php?ca_id=105010', 'self', 1, 1, 'y', 'y', 'y'),
(182, 'eb4_basic', '004002', '디지털가전', '', '1', '디지털 가전 > 디지털가전', 'shop', '105020', '', '/shop/list.php?ca_id=105020', 'self', 2, 1, 'y', 'y', 'y'),
(183, 'eb4_basic', '004003', '생활가전', '', '1', '디지털 가전 > 생활가전', 'shop', '105030', '', '/shop/list.php?ca_id=105030', 'self', 3, 1, 'y', 'y', 'y'),
(184, 'eb4_basic', '004004', '주방가전', '', '1', '디지털 가전 > 주방가전', 'shop', '105040', '', '/shop/list.php?ca_id=105040', 'self', 4, 1, 'y', 'y', 'y'),
(185, 'eb4_basic', '004005', '계절가전', '', '1', '디지털 가전 > 계절가전', 'shop', '105050', '', '/shop/list.php?ca_id=105050', 'self', 5, 1, 'y', 'y', 'y'),
(186, 'eb4_basic', '004005001', '에어컨/선풍기', '', '1', '디지털 가전 > 계절가전 > 에어컨/선풍기', 'shop', '10505010', '', '/shop/list.php?ca_id=10505010', 'self', 1, 1, 'y', 'y', 'y'),
(187, 'eb4_basic', '004005002', '공기정화기', '', '1', '디지털 가전 > 계절가전 > 공기정화기', 'shop', '10505020', '', '/shop/list.php?ca_id=10505020', 'self', 2, 1, 'y', 'y', 'y'),
(188, 'eb4_basic', '004005003', '냉방기기', '', '1', '디지털 가전 > 계절가전 > 냉방기기', 'shop', '10505030', '', '/shop/list.php?ca_id=10505030', 'self', 3, 1, 'y', 'y', 'y'),
(189, 'eb4_basic', '004005004', '가습기/제습기', '', '1', '디지털 가전 > 계절가전 > 가습기/제습기', 'shop', '10505040', '', '/shop/list.php?ca_id=10505040', 'self', 4, 1, 'y', 'y', 'y'),
(190, 'eb4_basic', '004005005', '난방매트/난방기기', '', '1', '디지털 가전 > 계절가전 > 난방매트/난방기기', 'shop', '10505050', '', '/shop/list.php?ca_id=10505050', 'self', 5, 1, 'y', 'y', 'y'),
(191, 'eb4_basic', '004005006', '냉온풍기 겸용', '', '1', '디지털 가전 > 계절가전 > 냉온풍기 겸용', 'shop', '10505060', '', '/shop/list.php?ca_id=10505060', 'self', 6, 1, 'y', 'y', 'y'),
(192, 'eb4_basic', '004005007', '액세서리/소모품', '', '1', '디지털 가전 > 계절가전 > 액세서리/소모품', 'shop', '10505080', '', '/shop/list.php?ca_id=10505080', 'self', 8, 1, 'y', 'y', 'y'),
(193, 'eb4_basic', '004005008', '해충퇴치기', '', '1', '디지털 가전 > 계절가전 > 해충퇴치기', 'shop', '10505070', '', '/shop/list.php?ca_id=10505070', 'self', 7, 1, 'y', 'y', 'y'),
(194, 'eb4_basic', '012', '생활/건강', '', '1', '생활/건강', 'shop', '1030', '', '/shop/list.php?ca_id=1030', 'self', 5, 1, 'y', 'y', 'y'),
(195, 'eb4_basic', '012001', '구강/면도', '', '1', '생활/건강 > 구강/면도', 'shop', '103010', '', '/shop/list.php?ca_id=103010', 'self', 1, 1, 'y', 'y', 'y'),
(196, 'eb4_basic', '012002', '화장지/물티슈', '', '1', '생활/건강 > 화장지/물티슈', 'shop', '103020', '', '/shop/list.php?ca_id=103020', 'self', 2, 1, 'y', 'y', 'y'),
(197, 'eb4_basic', '012003', '세제/방향제/살충', '', '1', '생활/건강 > 세제/방향제/살충', 'shop', '103030', '', '/shop/list.php?ca_id=103030', 'self', 3, 1, 'y', 'y', 'y'),
(198, 'eb4_basic', '012004', '건강용품', '', '1', '생활/건강 > 건강용품', 'shop', '103040', '', '/shop/list.php?ca_id=103040', 'self', 4, 1, 'y', 'y', 'y'),
(199, 'eb4_basic', '012005', '세탁용품', '', '1', '생활/건강 > 세탁용품', 'shop', '103050', '', '/shop/list.php?ca_id=103050', 'self', 5, 1, 'y', 'y', 'y'),
(200, 'eb4_basic', '012006', '생활/정리용품', '', '1', '생활/건강 > 생활/정리용품', 'shop', '103060', '', '/shop/list.php?ca_id=103060', 'self', 6, 1, 'y', 'y', 'y'),
(201, 'eb4_basic', '012007', '청소용품', '', '1', '생활/건강 > 청소용품', 'shop', '103070', '', '/shop/list.php?ca_id=103070', 'self', 7, 1, 'y', 'y', 'y'),
(202, 'eb4_basic', '012008', '욕실용품/잡화', '', '1', '생활/건강 > 욕실용품/잡화', 'shop', '103080', '', '/shop/list.php?ca_id=103080', 'self', 8, 1, 'y', 'y', 'y'),
(203, 'eb4_basic', '012009', '주방용품', '', '1', '생활/건강 > 주방용품', 'shop', '103090', '', '/shop/list.php?ca_id=103090', 'self', 9, 1, 'y', 'y', 'y'),
(204, 'eb4_basic', '012006001', '포장기/포장용품', '', '1', '생활/건강 > 생활/정리용품 > 포장기/포장용품', 'shop', '10306010', '', '/shop/list.php?ca_id=10306010', 'self', 1, 1, 'y', 'y', 'y'),
(205, 'eb4_basic', '012006002', '장바구니/카트', '', '1', '생활/건강 > 생활/정리용품 > 장바구니/카트', 'shop', '10306020', '', '/shop/list.php?ca_id=10306020', 'self', 2, 1, 'y', 'y', 'y'),
(206, 'eb4_basic', '012006003', '옷걸이/잡화걸이', '', '1', '생활/건강 > 생활/정리용품 > 옷걸이/잡화걸이', 'shop', '10306030', '', '/shop/list.php?ca_id=10306030', 'self', 3, 1, 'y', 'y', 'y'),
(207, 'eb4_basic', '012006004', '행거/의류정리', '', '1', '생활/건강 > 생활/정리용품 > 행거/의류정리', 'shop', '10306040', '', '/shop/list.php?ca_id=10306040', 'self', 4, 1, 'y', 'y', 'y'),
(208, 'eb4_basic', '012006005', '수납/리빙박스', '', '1', '생활/건강 > 생활/정리용품 > 수납/리빙박스', 'shop', '10306050', '', '/shop/list.php?ca_id=10306050', 'self', 5, 1, 'y', 'y', 'y'),
(209, 'eb4_basic', '012006006', '매트/발판', '', '1', '생활/건강 > 생활/정리용품 > 매트/발판', 'shop', '10306060', '', '/shop/list.php?ca_id=10306060', 'self', 6, 1, 'y', 'y', 'y'),
(210, 'eb4_basic', '012006007', '방풍/방음', '', '1', '생활/건강 > 생활/정리용품 > 방풍/방음', 'shop', '10306070', '', '/shop/list.php?ca_id=10306070', 'self', 7, 1, 'y', 'y', 'y'),
(211, 'eb4_basic', '012006008', '핫팩/아이스팩', '', '1', '생활/건강 > 생활/정리용품 > 핫팩/아이스팩', 'shop', '10306080', '', '/shop/list.php?ca_id=10306080', 'self', 8, 1, 'y', 'y', 'y'),
(212, 'eb4_basic', '013', '가구/인테리어', '', '1', '가구/인테리어', 'shop', '1060', '', '/shop/list.php?ca_id=1060', 'self', 6, 1, 'y', 'y', 'y'),
(213, 'eb4_basic', '013001', '수납가구', '', '1', '가구/인테리어 > 수납가구', 'shop', '106010', '', '/shop/list.php?ca_id=106010', 'self', 1, 1, 'y', 'y', 'y'),
(214, 'eb4_basic', '013002', '카펫/러그', '', '1', '가구/인테리어 > 카펫/러그', 'shop', '106020', '', '/shop/list.php?ca_id=106020', 'self', 2, 1, 'y', 'y', 'y'),
(215, 'eb4_basic', '013003', '카펫/러그', '', '1', '가구/인테리어 > 카펫/러그', 'shop', '106020', '', '/shop/list.php?ca_id=106020', 'self', 3, 1, 'y', 'y', 'y'),
(216, 'eb4_basic', '013004', '홈패브릭', '', '1', '가구/인테리어 > 홈패브릭', 'shop', '106030', '', '/shop/list.php?ca_id=106030', 'self', 4, 1, 'y', 'y', 'y'),
(217, 'eb4_basic', '013005', '인테리어소품', '', '1', '가구/인테리어 > 인테리어소품', 'shop', '106040', '', '/shop/list.php?ca_id=106040', 'self', 5, 1, 'y', 'y', 'y'),
(218, 'eb4_basic', '013006', '액자/조명', '', '1', '가구/인테리어 > 액자/조명', 'shop', '10604010', '', '/shop/list.php?ca_id=10604010', 'self', 6, 1, 'y', 'y', 'y'),
(219, 'eb4_basic', '013007', '파티션/벽장식', '', '1', '가구/인테리어 > 파티션/벽장식', 'shop', '10604020', '', '/shop/list.php?ca_id=10604020', 'self', 7, 1, 'y', 'y', 'y'),
(220, 'eb4_basic', '014', '자동차/공구', '', '1', '자동차/공구', 'shop', '1070', '', '/shop/list.php?ca_id=1070', 'self', 7, 1, 'y', 'y', 'y'),
(221, 'eb4_basic', '014001', '자동차기기', '', '1', '자동차/공구 > 자동차기기', 'shop', '107010', '', '/shop/list.php?ca_id=107010', 'self', 1, 1, 'y', 'y', 'y'),
(222, 'eb4_basic', '014002', '자동차용품', '', '1', '자동차/공구 > 자동차용품', 'shop', '107020', '', '/shop/list.php?ca_id=107020', 'self', 2, 1, 'y', 'y', 'y'),
(223, 'eb4_basic', '014002001', '필터/와이퍼', '', '1', '자동차/공구 > 자동차용품 > 필터/와이퍼', 'shop', '10702010', '', '/shop/list.php?ca_id=10702010', 'self', 1, 1, 'y', 'y', 'y'),
(224, 'eb4_basic', '014002002', '세차/광택용품', '', '1', '자동차/공구 > 자동차용품 > 세차/광택용품', 'shop', '10702020', '', '/shop/list.php?ca_id=10702020', 'self', 2, 1, 'y', 'y', 'y'),
(225, 'eb4_basic', '014002003', '비상/안전용품', '', '1', '자동차/공구 > 자동차용품 > 비상/안전용품', 'shop', '10702030', '', '/shop/list.php?ca_id=10702030', 'self', 3, 1, 'y', 'y', 'y'),
(226, 'eb4_basic', '014002004', '카인테리어용품', '', '1', '자동차/공구 > 자동차용품 > 카인테리어용품', 'shop', '10702040', '', '/shop/list.php?ca_id=10702040', 'self', 4, 1, 'y', 'y', 'y'),
(227, 'eb4_basic', '014002005', '카전기용품', '', '1', '자동차/공구 > 자동차용품 > 카전기용품', 'shop', '10702050', '', '/shop/list.php?ca_id=10702050', 'self', 5, 1, 'y', 'y', 'y'),
(228, 'eb4_basic', '014002006', '시트커버/매트/쿠션', '', '1', '자동차/공구 > 자동차용품 > 시트커버/매트/쿠션', 'shop', '10702060', '', '/shop/list.php?ca_id=10702060', 'self', 6, 1, 'y', 'y', 'y'),
(229, 'eb4_basic', '014002007', '정리용품', '', '1', '자동차/공구 > 자동차용품 > 정리용품', 'shop', '10702070', '', '/shop/list.php?ca_id=10702070', 'self', 7, 1, 'y', 'y', 'y'),
(230, 'eb4_basic', '012007001', '청소솔/빗자루/쓰레받기', '', '1', '생활/건강 > 청소용품 > 청소솔/빗자루/쓰레받기', 'shop', '10307010', '', '/shop/list.php?ca_id=10307010', 'self', 1, 1, 'y', 'y', 'y'),
(231, 'eb4_basic', '012007002', '먼지떨이/먼지제거기', '', '1', '생활/건강 > 청소용품 > 먼지떨이/먼지제거기', 'shop', '10307020', '', '/shop/list.php?ca_id=10307020', 'self', 2, 1, 'y', 'y', 'y'),
(232, 'eb4_basic', '012007003', '테이프클리너', '', '1', '생활/건강 > 청소용품 > 테이프클리너', 'shop', '10307030', '', '/shop/list.php?ca_id=10307030', 'self', 3, 1, 'y', 'y', 'y'),
(233, 'eb4_basic', '012007004', '유리닦이용품', '', '1', '생활/건강 > 청소용품 > 유리닦이용품', 'shop', '10307040', '', '/shop/list.php?ca_id=10307040', 'self', 4, 1, 'y', 'y', 'y'),
(234, 'eb4_basic', '012007005', '매직블럭/스펀지', '', '1', '생활/건강 > 청소용품 > 매직블럭/스펀지', 'shop', '10307050', '', '/shop/list.php?ca_id=10307050', 'self', 5, 1, 'y', 'y', 'y'),
(235, 'eb4_basic', '012007006', '물호스/물분사기', '', '1', '생활/건강 > 청소용품 > 물호스/물분사기', 'shop', '10307060', '', '/shop/list.php?ca_id=10307060', 'self', 6, 1, 'y', 'y', 'y'),
(236, 'eb4_basic', '012007007', '휴지통/쓰레기봉투', '', '1', '생활/건강 > 청소용품 > 휴지통/쓰레기봉투', 'shop', '10307070', '', '/shop/list.php?ca_id=10307070', 'self', 7, 1, 'y', 'y', 'y'),
(244, 'eb4_basic', '008', 'Event Management', '', '2', 'Event Management', 'pid', 'eventmanagement', '', '/page/?pid=eventmanagement', 'self', 8, 2, 'n', 'n', 'n'),
(245, 'eb4_basic', '009', '이벤트', '', '2', 'Event', 'pid', 'eventinformation', '', '/page/?pid=eventinformation', 'self', 9, 2, 'n', 'n', 'n'),
(246, 'eb4_basic', '002001003', '과일선물세트', '', '1', '신선푸드 > 과일 > 과일선물세트', 'shop', '10201030', '', '/shop/list.php?ca_id=10201030', 'self', 3, 1, 'y', 'y', 'y'),
(249, 'eb4_basic', '010', 'My Hub', '', '2', 'My Hub', 'userpage', 'extra', '', 'https://dev-yc.p2u.kr/shop/myhub.php', 'self', 10, 2, 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_pin`
--

CREATE TABLE `g5_eyoom_pin` (
  `pn_no` int(11) UNSIGNED NOT NULL,
  `mb_id` varchar(30) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `pn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_rating`
--

CREATE TABLE `g5_eyoom_rating` (
  `rt_id` int(11) UNSIGNED NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `rating` smallint(2) NOT NULL DEFAULT 0,
  `comment` varchar(255) NOT NULL,
  `rt_good` int(11) NOT NULL DEFAULT 0,
  `rt_nogood` int(11) NOT NULL DEFAULT 0,
  `rt_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_respond`
--

CREATE TABLE `g5_eyoom_respond` (
  `rid` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `pr_id` mediumint(11) NOT NULL,
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `wr_cmt` int(11) NOT NULL DEFAULT 0,
  `wr_subject` varchar(255) NOT NULL DEFAULT '',
  `wr_mb_id` varchar(20) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `mb_name` varchar(255) NOT NULL,
  `re_cnt` mediumint(3) NOT NULL DEFAULT 0,
  `re_type` varchar(20) NOT NULL,
  `re_chk` tinyint(4) NOT NULL DEFAULT 0,
  `regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_scheduled`
--

CREATE TABLE `g5_eyoom_scheduled` (
  `sd_id` int(11) UNSIGNED NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `tg_table` varchar(20) NOT NULL DEFAULT '',
  `wr_opendate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_slider`
--

CREATE TABLE `g5_eyoom_slider` (
  `es_no` int(10) UNSIGNED NOT NULL,
  `es_code` varchar(255) NOT NULL,
  `es_subject` varchar(255) NOT NULL,
  `es_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `es_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `es_text` text NOT NULL,
  `es_ytplay` char(1) NOT NULL DEFAULT '1',
  `es_ytmauto` char(1) NOT NULL DEFAULT '2',
  `es_state` smallint(1) NOT NULL DEFAULT 0,
  `es_link` varchar(255) NOT NULL,
  `es_target` varchar(10) NOT NULL,
  `es_image` varchar(255) NOT NULL,
  `es_link_cnt` smallint(2) NOT NULL DEFAULT 2,
  `es_image_cnt` smallint(2) NOT NULL DEFAULT 3,
  `es_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_eyoom_slider`
--

INSERT INTO `g5_eyoom_slider` (`es_no`, `es_code`, `es_subject`, `es_theme`, `es_skin`, `es_text`, `es_ytplay`, `es_ytmauto`, `es_state`, `es_link`, `es_target`, `es_image`, `es_link_cnt`, `es_image_cnt`, `es_regdt`) VALUES
(1, '1516512257', '메인 슬라이더', 'eb4_basic', 'basic', '', '1', '2', 1, 'eyoom.net', '_self', '', 2, 5, '2024-10-24 06:21:25'),
(2, '1526428620', '쇼핑몰 메인 슬라이더', 'eb4_basic', 'shop_basic', '', '1', '2', 1, '', '_self', '', 1, 1, '2024-10-24 06:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_slider_item`
--

CREATE TABLE `g5_eyoom_slider_item` (
  `ei_no` int(10) UNSIGNED NOT NULL,
  `es_code` varchar(255) NOT NULL,
  `ei_theme` varchar(50) NOT NULL DEFAULT '',
  `ei_state` char(1) NOT NULL DEFAULT '2',
  `ei_sort` int(10) DEFAULT 0,
  `ei_title` varchar(255) NOT NULL,
  `ei_subtitle` varchar(255) NOT NULL,
  `ei_text` text NOT NULL,
  `ei_link` text NOT NULL,
  `ei_target` text NOT NULL,
  `ei_img` text NOT NULL,
  `ei_period` char(1) NOT NULL DEFAULT '1',
  `ei_start` varchar(10) NOT NULL,
  `ei_end` varchar(10) NOT NULL,
  `ei_clicked` mediumint(10) NOT NULL DEFAULT 0,
  `ei_view_level` tinyint(4) NOT NULL DEFAULT 1,
  `ei_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_slider_ytitem`
--

CREATE TABLE `g5_eyoom_slider_ytitem` (
  `ei_no` int(10) UNSIGNED NOT NULL,
  `es_code` text NOT NULL,
  `ei_theme` varchar(30) NOT NULL DEFAULT '',
  `ei_state` char(1) NOT NULL DEFAULT '2',
  `ei_sort` int(10) DEFAULT 0,
  `ei_ytcode` varchar(255) NOT NULL,
  `ei_quality` varchar(10) NOT NULL DEFAULT 'hd1080',
  `ei_remember` char(1) NOT NULL DEFAULT '1',
  `ei_autoplay` char(1) NOT NULL DEFAULT '1',
  `ei_control` char(1) NOT NULL DEFAULT '1',
  `ei_loop` char(1) NOT NULL DEFAULT '1',
  `ei_mute` char(1) NOT NULL DEFAULT '1',
  `ei_raster` char(1) NOT NULL DEFAULT '1',
  `ei_volumn` smallint(3) NOT NULL DEFAULT 10,
  `ei_stime` smallint(4) NOT NULL DEFAULT 0,
  `ei_etime` smallint(4) NOT NULL DEFAULT 0,
  `ei_period` char(1) NOT NULL DEFAULT '1',
  `ei_start` varchar(10) NOT NULL,
  `ei_end` varchar(10) NOT NULL,
  `ei_view_level` tinyint(4) NOT NULL DEFAULT 1,
  `ei_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_subscribe`
--

CREATE TABLE `g5_eyoom_subscribe` (
  `sb_no` int(11) UNSIGNED NOT NULL,
  `sb_my_id` varchar(30) NOT NULL,
  `sb_mb_id` varchar(30) NOT NULL,
  `sb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_tag`
--

CREATE TABLE `g5_eyoom_tag` (
  `tg_id` int(11) UNSIGNED NOT NULL,
  `tg_word` varchar(20) NOT NULL DEFAULT '',
  `tg_theme` varchar(40) NOT NULL DEFAULT 'basic',
  `tg_regcnt` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tg_dpmenu` enum('y','n') NOT NULL DEFAULT 'n',
  `tg_scnt` int(11) NOT NULL DEFAULT 0,
  `tg_score` int(11) NOT NULL DEFAULT 0,
  `tg_recommdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tg_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_tag_write`
--

CREATE TABLE `g5_eyoom_tag_write` (
  `tw_id` int(11) UNSIGNED NOT NULL,
  `tw_theme` varchar(40) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `wr_subject` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_content` text NOT NULL,
  `wr_tag` text NOT NULL,
  `wr_image` text NOT NULL,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_name` varchar(50) NOT NULL,
  `mb_nick` varchar(50) NOT NULL,
  `mb_level` varchar(255) NOT NULL,
  `tw_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eb_1` varchar(255) NOT NULL,
  `eb_2` varchar(255) NOT NULL,
  `eb_3` varchar(255) NOT NULL,
  `eb_4` varchar(255) NOT NULL,
  `eb_5` varchar(255) NOT NULL,
  `eb_6` varchar(255) NOT NULL,
  `eb_7` varchar(255) NOT NULL,
  `eb_8` varchar(255) NOT NULL,
  `eb_9` varchar(255) NOT NULL,
  `eb_10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_theme`
--

CREATE TABLE `g5_eyoom_theme` (
  `tm_name` varchar(40) NOT NULL,
  `tm_alias` varchar(20) NOT NULL,
  `tm_key` varchar(100) NOT NULL,
  `cm_key` varchar(255) NOT NULL,
  `cm_salt` varchar(10) NOT NULL,
  `tm_last` varchar(20) NOT NULL,
  `tm_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_eyoom_theme`
--

INSERT INTO `g5_eyoom_theme` (`tm_name`, `tm_alias`, `tm_key`, `cm_key`, `cm_salt`, `tm_last`, `tm_time`) VALUES
('eb4_basic', '', '1729718485', '', '', '', '2024-10-24 06:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_wrfixed`
--

CREATE TABLE `g5_eyoom_wrfixed` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(30) NOT NULL,
  `bf_wrfixed_point` int(11) NOT NULL DEFAULT 0,
  `bf_wrfixed_date` smallint(3) NOT NULL DEFAULT 1,
  `bf_open` enum('y','n') NOT NULL DEFAULT 'n',
  `po_datetime` datetime NOT NULL,
  `ex_datetime` datetime NOT NULL,
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_eyoom_yellowcard`
--

CREATE TABLE `g5_eyoom_yellowcard` (
  `yc_id` int(11) UNSIGNED NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `pr_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `yc_reason` char(1) NOT NULL,
  `yc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_faq`
--

CREATE TABLE `g5_faq` (
  `fa_id` int(11) NOT NULL,
  `fm_id` int(11) NOT NULL DEFAULT 0,
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_faq_master`
--

CREATE TABLE `g5_faq_master` (
  `fm_id` int(11) NOT NULL,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_faq_master`
--

INSERT INTO `g5_faq_master` (`fm_id`, `fm_subject`, `fm_head_html`, `fm_tail_html`, `fm_mobile_head_html`, `fm_mobile_tail_html`, `fm_order`) VALUES
(1, '자주하시는 질문', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `g5_group`
--

CREATE TABLE `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT 0,
  `gr_order` int(11) NOT NULL DEFAULT 0,
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_group`
--

INSERT INTO `g5_group` (`gr_id`, `gr_subject`, `gr_device`, `gr_admin`, `gr_use_access`, `gr_order`, `gr_1_subj`, `gr_2_subj`, `gr_3_subj`, `gr_4_subj`, `gr_5_subj`, `gr_6_subj`, `gr_7_subj`, `gr_8_subj`, `gr_9_subj`, `gr_10_subj`, `gr_1`, `gr_2`, `gr_3`, `gr_4`, `gr_5`, `gr_6`, `gr_7`, `gr_8`, `gr_9`, `gr_10`) VALUES
('community', '커뮤니티', 'both', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_group_member`
--

CREATE TABLE `g5_group_member` (
  `gm_id` int(11) NOT NULL,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_login`
--

CREATE TABLE `g5_login` (
  `lo_id` int(11) NOT NULL,
  `lo_ip` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_login`
--

INSERT INTO `g5_login` (`lo_id`, `lo_ip`, `mb_id`, `lo_datetime`, `lo_location`, `lo_url`) VALUES
(1, '::1', '', '2024-10-25 21:21:17', '/eyoom/', '/eyoom/');

-- --------------------------------------------------------

--
-- Table structure for table `g5_mail`
--

CREATE TABLE `g5_mail` (
  `ma_id` int(11) NOT NULL,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_mail`
--

INSERT INTO `g5_mail` (`ma_id`, `ma_subject`, `ma_content`, `ma_time`, `ma_ip`, `ma_last_option`) VALUES
(1, 'This is email testing', '<p>This is testing</p>', '2024-10-24 06:39:26', '::1', ''),
(2, 'This is email testing 2', '<p>This is email testing 2<br></p>', '2024-10-24 06:41:32', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_member`
--

CREATE TABLE `g5_member` (
  `mb_no` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT 0,
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT 0,
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sms` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_scrap_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_member`
--

INSERT INTO `g5_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_level`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_certify`, `mb_adult`, `mb_dupinfo`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_addr3`, `mb_addr_jibeon`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_email_certify2`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_memo_cnt`, `mb_scrap_cnt`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(1, 'admin', 'sha256:12000:YdIiSG/Bl1sE5AUNst/6HUGonbDbram6:cY/ByKGYuv9HFze1zw1pfJXUVSjeQwwM', '최고관리자', '최고관리자', '2024-10-24', 'admin@domain.com', '', 10, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 100, '2024-10-24 06:24:55', '::1', '2024-10-24 06:21:25', '::1', '', '', '2024-10-24 06:21:25', '', '', '', 1, 0, 1, '0000-00-00', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_member_cert_history`
--

CREATE TABLE `g5_member_cert_history` (
  `ch_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `ch_name` varchar(255) NOT NULL DEFAULT '',
  `ch_hp` varchar(255) NOT NULL DEFAULT '',
  `ch_birth` varchar(255) NOT NULL DEFAULT '',
  `ch_type` varchar(20) NOT NULL DEFAULT '',
  `ch_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_member_social_profiles`
--

CREATE TABLE `g5_member_social_profiles` (
  `mp_no` int(11) NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_memo`
--

CREATE TABLE `g5_memo` (
  `me_id` int(11) NOT NULL,
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL,
  `me_send_id` int(11) NOT NULL DEFAULT 0,
  `me_type` enum('send','recv') NOT NULL DEFAULT 'recv',
  `me_send_ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_menu`
--

CREATE TABLE `g5_menu` (
  `me_id` int(11) NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT 0,
  `me_use` tinyint(4) NOT NULL DEFAULT 0,
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_menu`
--

INSERT INTO `g5_menu` (`me_id`, `me_code`, `me_name`, `me_link`, `me_target`, `me_order`, `me_use`, `me_mobile_use`) VALUES
(1, '10', 'P2U 내역', 'https://dev-yc.p2u.kr/page/?pid=userhistory', 'self', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `g5_new_win`
--

CREATE TABLE `g5_new_win` (
  `nw_id` int(11) NOT NULL,
  `nw_division` varchar(10) NOT NULL DEFAULT 'both',
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT 0,
  `nw_left` int(11) NOT NULL DEFAULT 0,
  `nw_top` int(11) NOT NULL DEFAULT 0,
  `nw_height` int(11) NOT NULL DEFAULT 0,
  `nw_width` int(11) NOT NULL DEFAULT 0,
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_point`
--

CREATE TABLE `g5_point` (
  `po_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_use_point` int(11) NOT NULL DEFAULT 0,
  `po_expired` tinyint(4) NOT NULL DEFAULT 0,
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT 0,
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_point`
--

INSERT INTO `g5_point` (`po_id`, `mb_id`, `po_datetime`, `po_content`, `po_point`, `po_use_point`, `po_expired`, `po_expire_date`, `po_mb_point`, `po_rel_table`, `po_rel_id`, `po_rel_action`) VALUES
(1, 'admin', '2024-10-24 06:24:55', '2024-10-24 첫로그인', 100, 0, 0, '9999-12-31', 100, '@login', 'admin', '2024-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `g5_poll`
--

CREATE TABLE `g5_poll` (
  `po_id` int(11) NOT NULL,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT 0,
  `po_cnt2` int(11) NOT NULL DEFAULT 0,
  `po_cnt3` int(11) NOT NULL DEFAULT 0,
  `po_cnt4` int(11) NOT NULL DEFAULT 0,
  `po_cnt5` int(11) NOT NULL DEFAULT 0,
  `po_cnt6` int(11) NOT NULL DEFAULT 0,
  `po_cnt7` int(11) NOT NULL DEFAULT 0,
  `po_cnt8` int(11) NOT NULL DEFAULT 0,
  `po_cnt9` int(11) NOT NULL DEFAULT 0,
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT 0,
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  `po_use` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_poll_etc`
--

CREATE TABLE `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT 0,
  `po_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_popular`
--

CREATE TABLE `g5_popular` (
  `pp_id` int(11) NOT NULL,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_qa_config`
--

CREATE TABLE `g5_qa_config` (
  `qa_id` int(11) NOT NULL,
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT 0,
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_image_width` int(11) NOT NULL DEFAULT 0,
  `qa_upload_size` int(11) NOT NULL DEFAULT 0,
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_qa_config`
--

INSERT INTO `g5_qa_config` (`qa_id`, `qa_title`, `qa_category`, `qa_skin`, `qa_mobile_skin`, `qa_use_email`, `qa_req_email`, `qa_use_hp`, `qa_req_hp`, `qa_use_sms`, `qa_send_number`, `qa_admin_hp`, `qa_admin_email`, `qa_use_editor`, `qa_subject_len`, `qa_mobile_subject_len`, `qa_page_rows`, `qa_mobile_page_rows`, `qa_image_width`, `qa_upload_size`, `qa_insert_content`, `qa_include_head`, `qa_include_tail`, `qa_content_head`, `qa_content_tail`, `qa_mobile_content_head`, `qa_mobile_content_tail`, `qa_1_subj`, `qa_2_subj`, `qa_3_subj`, `qa_4_subj`, `qa_5_subj`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`) VALUES
(1, '1:1문의', '회원|포인트', 'basic', 'basic', 1, 0, 1, 0, 0, '0', '', '', 1, 60, 30, 15, 15, 600, 1048576, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_qa_content`
--

CREATE TABLE `g5_qa_content` (
  `qa_id` int(11) NOT NULL,
  `qa_num` int(11) NOT NULL DEFAULT 0,
  `qa_parent` int(11) NOT NULL DEFAULT 0,
  `qa_related` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT 0,
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_html` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT 0,
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_scrap`
--

CREATE TABLE `g5_scrap` (
  `ms_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_banner`
--

CREATE TABLE `g5_shop_banner` (
  `bn_id` int(11) NOT NULL,
  `bn_alt` varchar(255) NOT NULL DEFAULT '',
  `bn_url` varchar(255) NOT NULL DEFAULT '',
  `bn_device` varchar(10) NOT NULL DEFAULT '',
  `bn_position` varchar(255) NOT NULL DEFAULT '',
  `bn_border` tinyint(4) NOT NULL DEFAULT 0,
  `bn_new_win` tinyint(4) NOT NULL DEFAULT 0,
  `bn_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_hit` int(11) NOT NULL DEFAULT 0,
  `bn_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_cart`
--

CREATE TABLE `g5_shop_cart` (
  `ct_id` int(11) NOT NULL,
  `od_id` bigint(20) UNSIGNED NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `it_name` varchar(255) NOT NULL DEFAULT '',
  `it_sc_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_method` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_price` int(11) NOT NULL DEFAULT 0,
  `it_sc_minimum` int(11) NOT NULL DEFAULT 0,
  `it_sc_qty` int(11) NOT NULL DEFAULT 0,
  `ct_status` varchar(255) NOT NULL DEFAULT '',
  `ct_history` text NOT NULL,
  `ct_price` int(11) NOT NULL DEFAULT 0,
  `ct_point` int(11) NOT NULL DEFAULT 0,
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `ct_point_use` tinyint(4) NOT NULL DEFAULT 0,
  `ct_stock_use` tinyint(4) NOT NULL DEFAULT 0,
  `ct_option` varchar(255) NOT NULL DEFAULT '',
  `ct_qty` int(11) NOT NULL DEFAULT 0,
  `ct_notax` tinyint(4) NOT NULL DEFAULT 0,
  `io_id` varchar(255) NOT NULL DEFAULT '',
  `io_type` tinyint(4) NOT NULL DEFAULT 0,
  `io_price` int(11) NOT NULL DEFAULT 0,
  `ct_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ct_ip` varchar(25) NOT NULL DEFAULT '',
  `ct_send_cost` tinyint(4) NOT NULL DEFAULT 0,
  `ct_direct` tinyint(4) NOT NULL DEFAULT 0,
  `ct_select` tinyint(4) NOT NULL DEFAULT 0,
  `ct_select_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_category`
--

CREATE TABLE `g5_shop_category` (
  `ca_id` varchar(10) NOT NULL DEFAULT '0',
  `ca_name` varchar(255) NOT NULL DEFAULT '',
  `ca_order` int(11) NOT NULL DEFAULT 0,
  `ca_skin_dir` varchar(255) NOT NULL DEFAULT '',
  `ca_mobile_skin_dir` varchar(255) NOT NULL DEFAULT '',
  `ca_skin` varchar(255) NOT NULL DEFAULT '',
  `ca_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `ca_img_width` int(11) NOT NULL DEFAULT 0,
  `ca_img_height` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_img_width` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_img_height` int(11) NOT NULL DEFAULT 0,
  `ca_sell_email` varchar(255) NOT NULL DEFAULT '',
  `ca_use` tinyint(4) NOT NULL DEFAULT 0,
  `ca_stock_qty` int(11) NOT NULL DEFAULT 0,
  `ca_explan_html` tinyint(4) NOT NULL DEFAULT 0,
  `ca_head_html` text NOT NULL,
  `ca_tail_html` text NOT NULL,
  `ca_mobile_head_html` text NOT NULL,
  `ca_mobile_tail_html` text NOT NULL,
  `ca_list_mod` int(11) NOT NULL DEFAULT 0,
  `ca_list_row` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_list_mod` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_list_row` int(11) NOT NULL DEFAULT 0,
  `ca_include_head` varchar(255) NOT NULL DEFAULT '',
  `ca_include_tail` varchar(255) NOT NULL DEFAULT '',
  `ca_mb_id` varchar(255) NOT NULL DEFAULT '',
  `ca_cert_use` tinyint(4) NOT NULL DEFAULT 0,
  `ca_adult_use` tinyint(4) NOT NULL DEFAULT 0,
  `ca_nocoupon` tinyint(4) NOT NULL DEFAULT 0,
  `ca_1_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_2_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_3_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_4_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_5_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_6_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_7_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_8_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_9_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_10_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_1` varchar(255) NOT NULL DEFAULT '',
  `ca_2` varchar(255) NOT NULL DEFAULT '',
  `ca_3` varchar(255) NOT NULL DEFAULT '',
  `ca_4` varchar(255) NOT NULL DEFAULT '',
  `ca_5` varchar(255) NOT NULL DEFAULT '',
  `ca_6` varchar(255) NOT NULL DEFAULT '',
  `ca_7` varchar(255) NOT NULL DEFAULT '',
  `ca_8` varchar(255) NOT NULL DEFAULT '',
  `ca_9` varchar(255) NOT NULL DEFAULT '',
  `ca_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_coupon`
--

CREATE TABLE `g5_shop_coupon` (
  `cp_no` int(11) NOT NULL,
  `cp_id` varchar(100) NOT NULL DEFAULT '',
  `cp_subject` varchar(255) NOT NULL DEFAULT '',
  `cp_method` tinyint(4) NOT NULL DEFAULT 0,
  `cp_target` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `cz_id` int(11) NOT NULL DEFAULT 0,
  `cp_start` date NOT NULL DEFAULT '0000-00-00',
  `cp_end` date NOT NULL DEFAULT '0000-00-00',
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `cp_type` tinyint(4) NOT NULL DEFAULT 0,
  `cp_trunc` int(11) NOT NULL DEFAULT 0,
  `cp_minimum` int(11) NOT NULL DEFAULT 0,
  `cp_maximum` int(11) NOT NULL DEFAULT 0,
  `od_id` bigint(20) UNSIGNED NOT NULL,
  `cp_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_coupon_log`
--

CREATE TABLE `g5_shop_coupon_log` (
  `cl_id` int(11) NOT NULL,
  `cp_id` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(100) NOT NULL DEFAULT '',
  `od_id` bigint(20) NOT NULL,
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `cl_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_coupon_zone`
--

CREATE TABLE `g5_shop_coupon_zone` (
  `cz_id` int(11) NOT NULL,
  `cz_type` tinyint(4) NOT NULL DEFAULT 0,
  `cz_subject` varchar(255) NOT NULL DEFAULT '',
  `cz_start` date NOT NULL DEFAULT '0000-00-00',
  `cz_end` date NOT NULL DEFAULT '0000-00-00',
  `cz_file` varchar(255) NOT NULL DEFAULT '',
  `cz_period` int(11) NOT NULL DEFAULT 0,
  `cz_point` int(11) NOT NULL DEFAULT 0,
  `cp_method` tinyint(4) NOT NULL DEFAULT 0,
  `cp_target` varchar(255) NOT NULL DEFAULT '',
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `cp_type` tinyint(4) NOT NULL DEFAULT 0,
  `cp_trunc` int(11) NOT NULL DEFAULT 0,
  `cp_minimum` int(11) NOT NULL DEFAULT 0,
  `cp_maximum` int(11) NOT NULL DEFAULT 0,
  `cz_download` int(11) NOT NULL DEFAULT 0,
  `cz_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_default`
--

CREATE TABLE `g5_shop_default` (
  `de_id` int(11) NOT NULL,
  `de_admin_company_owner` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_name` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_saupja_no` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_tel` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_fax` varchar(255) NOT NULL DEFAULT '',
  `de_admin_tongsin_no` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_zip` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_addr` varchar(255) NOT NULL DEFAULT '',
  `de_admin_info_name` varchar(255) NOT NULL DEFAULT '',
  `de_admin_info_email` varchar(255) NOT NULL DEFAULT '',
  `de_shop_skin` varchar(255) NOT NULL DEFAULT '',
  `de_shop_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type1_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type1_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type1_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type1_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type1_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type1_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type2_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type2_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type2_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type2_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type2_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type2_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type3_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type3_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type3_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type3_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type3_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type3_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type4_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type4_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type4_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type4_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type4_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type4_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type5_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type5_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type5_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type5_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type5_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type5_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type1_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type1_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type2_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type2_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type3_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type3_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type4_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type4_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type5_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type5_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_img_height` int(11) NOT NULL DEFAULT 0,
  `de_rel_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_rel_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_rel_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_rel_img_width` int(11) NOT NULL DEFAULT 0,
  `de_rel_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_rel_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_rel_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_rel_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_rel_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_rel_img_height` int(11) NOT NULL DEFAULT 0,
  `de_search_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_search_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_search_list_row` int(11) NOT NULL DEFAULT 0,
  `de_search_img_width` int(11) NOT NULL DEFAULT 0,
  `de_search_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_search_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_img_height` int(11) NOT NULL DEFAULT 0,
  `de_listtype_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_listtype_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_listtype_list_row` int(11) NOT NULL DEFAULT 0,
  `de_listtype_img_width` int(11) NOT NULL DEFAULT 0,
  `de_listtype_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_listtype_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_img_height` int(11) NOT NULL DEFAULT 0,
  `de_bank_use` int(11) NOT NULL DEFAULT 0,
  `de_bank_account` text NOT NULL,
  `de_card_test` int(11) NOT NULL DEFAULT 0,
  `de_card_use` int(11) NOT NULL DEFAULT 0,
  `de_card_noint_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_card_point` int(11) NOT NULL DEFAULT 0,
  `de_settle_min_point` int(11) NOT NULL DEFAULT 0,
  `de_settle_max_point` int(11) NOT NULL DEFAULT 0,
  `de_settle_point_unit` int(11) NOT NULL DEFAULT 0,
  `de_level_sell` int(11) NOT NULL DEFAULT 0,
  `de_delivery_company` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_case` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_limit` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_list` varchar(255) NOT NULL DEFAULT '',
  `de_hope_date_use` int(11) NOT NULL DEFAULT 0,
  `de_hope_date_after` int(11) NOT NULL DEFAULT 0,
  `de_baesong_content` text NOT NULL,
  `de_change_content` text NOT NULL,
  `de_point_days` int(11) NOT NULL DEFAULT 0,
  `de_simg_width` int(11) NOT NULL DEFAULT 0,
  `de_simg_height` int(11) NOT NULL DEFAULT 0,
  `de_mimg_width` int(11) NOT NULL DEFAULT 0,
  `de_mimg_height` int(11) NOT NULL DEFAULT 0,
  `de_sms_cont1` text NOT NULL,
  `de_sms_cont2` text NOT NULL,
  `de_sms_cont3` text NOT NULL,
  `de_sms_cont4` text NOT NULL,
  `de_sms_cont5` text NOT NULL,
  `de_sms_use1` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use2` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use3` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use4` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use5` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_hp` varchar(255) NOT NULL DEFAULT '',
  `de_pg_service` varchar(255) NOT NULL DEFAULT '',
  `de_kcp_mid` varchar(255) NOT NULL DEFAULT '',
  `de_kcp_site_key` varchar(255) NOT NULL DEFAULT '',
  `de_inicis_mid` varchar(255) NOT NULL DEFAULT '',
  `de_inicis_iniapi_key` varchar(30) NOT NULL DEFAULT '',
  `de_inicis_iniapi_iv` varchar(30) NOT NULL DEFAULT '',
  `de_inicis_sign_key` varchar(255) NOT NULL DEFAULT '',
  `de_iche_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_easy_pay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_easy_pay_services` varchar(255) NOT NULL DEFAULT '',
  `de_samsung_pay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_inicis_lpay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_inicis_kakaopay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_inicis_cartpoint_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_nicepay_mid` varchar(30) NOT NULL DEFAULT '',
  `de_nicepay_key` varchar(255) NOT NULL DEFAULT '',
  `de_item_use_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_item_use_write` tinyint(4) NOT NULL DEFAULT 0,
  `de_code_dup_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_cart_keep_term` int(11) NOT NULL DEFAULT 0,
  `de_guest_cart_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_admin_buga_no` varchar(255) NOT NULL DEFAULT '',
  `de_vbank_use` varchar(255) NOT NULL DEFAULT '',
  `de_taxsave_use` tinyint(4) NOT NULL,
  `de_taxsave_types` set('account','vbank','transfer') NOT NULL DEFAULT 'account',
  `de_guest_privacy` text NOT NULL,
  `de_hp_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_escrow_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_tax_flag_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_kakaopay_mid` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_key` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_enckey` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_hashkey` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_cancelpwd` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_mid` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_cert_key` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_button_key` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_test` tinyint(4) NOT NULL DEFAULT 0,
  `de_naverpay_mb_id` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_sendcost` varchar(255) NOT NULL DEFAULT '',
  `de_member_reg_coupon_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_member_reg_coupon_term` int(11) NOT NULL DEFAULT 0,
  `de_member_reg_coupon_price` int(11) NOT NULL DEFAULT 0,
  `de_member_reg_coupon_minimum` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_shop_default`
--

INSERT INTO `g5_shop_default` (`de_id`, `de_admin_company_owner`, `de_admin_company_name`, `de_admin_company_saupja_no`, `de_admin_company_tel`, `de_admin_company_fax`, `de_admin_tongsin_no`, `de_admin_company_zip`, `de_admin_company_addr`, `de_admin_info_name`, `de_admin_info_email`, `de_shop_skin`, `de_shop_mobile_skin`, `de_type1_list_use`, `de_type1_list_skin`, `de_type1_list_mod`, `de_type1_list_row`, `de_type1_img_width`, `de_type1_img_height`, `de_type2_list_use`, `de_type2_list_skin`, `de_type2_list_mod`, `de_type2_list_row`, `de_type2_img_width`, `de_type2_img_height`, `de_type3_list_use`, `de_type3_list_skin`, `de_type3_list_mod`, `de_type3_list_row`, `de_type3_img_width`, `de_type3_img_height`, `de_type4_list_use`, `de_type4_list_skin`, `de_type4_list_mod`, `de_type4_list_row`, `de_type4_img_width`, `de_type4_img_height`, `de_type5_list_use`, `de_type5_list_skin`, `de_type5_list_mod`, `de_type5_list_row`, `de_type5_img_width`, `de_type5_img_height`, `de_mobile_type1_list_use`, `de_mobile_type1_list_skin`, `de_mobile_type1_list_mod`, `de_mobile_type1_list_row`, `de_mobile_type1_img_width`, `de_mobile_type1_img_height`, `de_mobile_type2_list_use`, `de_mobile_type2_list_skin`, `de_mobile_type2_list_mod`, `de_mobile_type2_list_row`, `de_mobile_type2_img_width`, `de_mobile_type2_img_height`, `de_mobile_type3_list_use`, `de_mobile_type3_list_skin`, `de_mobile_type3_list_mod`, `de_mobile_type3_list_row`, `de_mobile_type3_img_width`, `de_mobile_type3_img_height`, `de_mobile_type4_list_use`, `de_mobile_type4_list_skin`, `de_mobile_type4_list_mod`, `de_mobile_type4_list_row`, `de_mobile_type4_img_width`, `de_mobile_type4_img_height`, `de_mobile_type5_list_use`, `de_mobile_type5_list_skin`, `de_mobile_type5_list_mod`, `de_mobile_type5_list_row`, `de_mobile_type5_img_width`, `de_mobile_type5_img_height`, `de_rel_list_use`, `de_rel_list_skin`, `de_rel_list_mod`, `de_rel_img_width`, `de_rel_img_height`, `de_mobile_rel_list_use`, `de_mobile_rel_list_skin`, `de_mobile_rel_list_mod`, `de_mobile_rel_img_width`, `de_mobile_rel_img_height`, `de_search_list_skin`, `de_search_list_mod`, `de_search_list_row`, `de_search_img_width`, `de_search_img_height`, `de_mobile_search_list_skin`, `de_mobile_search_list_mod`, `de_mobile_search_list_row`, `de_mobile_search_img_width`, `de_mobile_search_img_height`, `de_listtype_list_skin`, `de_listtype_list_mod`, `de_listtype_list_row`, `de_listtype_img_width`, `de_listtype_img_height`, `de_mobile_listtype_list_skin`, `de_mobile_listtype_list_mod`, `de_mobile_listtype_list_row`, `de_mobile_listtype_img_width`, `de_mobile_listtype_img_height`, `de_bank_use`, `de_bank_account`, `de_card_test`, `de_card_use`, `de_card_noint_use`, `de_card_point`, `de_settle_min_point`, `de_settle_max_point`, `de_settle_point_unit`, `de_level_sell`, `de_delivery_company`, `de_send_cost_case`, `de_send_cost_limit`, `de_send_cost_list`, `de_hope_date_use`, `de_hope_date_after`, `de_baesong_content`, `de_change_content`, `de_point_days`, `de_simg_width`, `de_simg_height`, `de_mimg_width`, `de_mimg_height`, `de_sms_cont1`, `de_sms_cont2`, `de_sms_cont3`, `de_sms_cont4`, `de_sms_cont5`, `de_sms_use1`, `de_sms_use2`, `de_sms_use3`, `de_sms_use4`, `de_sms_use5`, `de_sms_hp`, `de_pg_service`, `de_kcp_mid`, `de_kcp_site_key`, `de_inicis_mid`, `de_inicis_iniapi_key`, `de_inicis_iniapi_iv`, `de_inicis_sign_key`, `de_iche_use`, `de_easy_pay_use`, `de_easy_pay_services`, `de_samsung_pay_use`, `de_inicis_lpay_use`, `de_inicis_kakaopay_use`, `de_inicis_cartpoint_use`, `de_nicepay_mid`, `de_nicepay_key`, `de_item_use_use`, `de_item_use_write`, `de_code_dup_use`, `de_cart_keep_term`, `de_guest_cart_use`, `de_admin_buga_no`, `de_vbank_use`, `de_taxsave_use`, `de_taxsave_types`, `de_guest_privacy`, `de_hp_use`, `de_escrow_use`, `de_tax_flag_use`, `de_kakaopay_mid`, `de_kakaopay_key`, `de_kakaopay_enckey`, `de_kakaopay_hashkey`, `de_kakaopay_cancelpwd`, `de_naverpay_mid`, `de_naverpay_cert_key`, `de_naverpay_button_key`, `de_naverpay_test`, `de_naverpay_mb_id`, `de_naverpay_sendcost`, `de_member_reg_coupon_use`, `de_member_reg_coupon_term`, `de_member_reg_coupon_price`, `de_member_reg_coupon_minimum`) VALUES
(1, '대표자명', '회사명', '123-45-67890', '02-123-4567', '02-123-4568', '제 OO구 - 123호', '123-456', 'OO도 OO시 OO구 OO동 123-45', '정보책임자명', '정보책임자 E-mail', 'basic', 'basic', 1, 'main.10.skin.php', 5, 1, 300, 0, 1, 'main.20.skin.php', 4, 1, 600, 0, 1, 'main.40.skin.php', 4, 1, 600, 0, 1, 'main.50.skin.php', 5, 1, 600, 0, 1, 'main.30.skin.php', 4, 1, 600, 0, 1, 'main.30.skin.php', 2, 4, 600, 0, 1, 'main.10.skin.php', 2, 2, 600, 0, 1, 'main.10.skin.php', 2, 4, 1000, 0, 1, 'main.20.skin.php', 2, 2, 160, 0, 1, 'main.10.skin.php', 2, 2, 600, 0, 1, 'relation.10.skin.php', 5, 600, 0, 1, 'relation.10.skin.php', 3, 600, 0, 'list.10.skin.php', 5, 5, 450, 0, 'list.10.skin.php', 2, 5, 600, 0, 'list.10.skin.php', 5, 5, 450, 0, 'list.10.skin.php', 2, 5, 600, 0, 1, 'OO은행 12345-67-89012 예금주명', 1, 0, 0, 0, 5000, 50000, 100, 1, '', '차등', '20000;30000;40000', '4000;3000;2000', 0, 3, '배송 안내 입력전입니다.', '교환/반품 안내 입력전입니다.', 7, 600, 0, 1000, 0, '{이름}님의 회원가입을 축하드립니다.\nID:{회원아이디}\n{회사명}', '{이름}님 주문해주셔서 고맙습니다.\n{주문번호}\n{주문금액}원\n{회사명}', '{이름}님께서 주문하셨습니다.\n{주문번호}\n{주문금액}원\n{회사명}', '{이름}님 입금 감사합니다.\n{입금액}원\n주문번호:\n{주문번호}\n{회사명}', '{이름}님 배송합니다.\n택배:{택배회사}\n운송장번호:\n{운송장번호}\n{회사명}', 0, 0, 0, 0, 0, '', 'kcp', '', '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '', '', 1, 0, 1, 15, 0, '12345호', '0', 0, 'account', '', 0, 0, 0, '', '', '', '', '', '', '', '', 0, '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_event`
--

CREATE TABLE `g5_shop_event` (
  `ev_id` int(11) NOT NULL,
  `ev_skin` varchar(255) NOT NULL DEFAULT '',
  `ev_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `ev_img_width` int(11) NOT NULL DEFAULT 0,
  `ev_img_height` int(11) NOT NULL DEFAULT 0,
  `ev_list_mod` int(11) NOT NULL DEFAULT 0,
  `ev_list_row` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_img_width` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_img_height` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_list_mod` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_list_row` int(11) NOT NULL DEFAULT 0,
  `ev_subject` varchar(255) NOT NULL DEFAULT '',
  `ev_subject_strong` tinyint(4) NOT NULL DEFAULT 0,
  `ev_head_html` text NOT NULL,
  `ev_tail_html` text NOT NULL,
  `ev_use` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_event_item`
--

CREATE TABLE `g5_shop_event_item` (
  `ev_id` int(11) NOT NULL DEFAULT 0,
  `it_id` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_inicis_log`
--

CREATE TABLE `g5_shop_inicis_log` (
  `oid` bigint(20) UNSIGNED NOT NULL,
  `P_TID` varchar(255) NOT NULL DEFAULT '',
  `P_MID` varchar(255) NOT NULL DEFAULT '',
  `P_AUTH_DT` varchar(255) NOT NULL DEFAULT '',
  `P_STATUS` varchar(255) NOT NULL DEFAULT '',
  `P_TYPE` varchar(255) NOT NULL DEFAULT '',
  `P_OID` varchar(255) NOT NULL DEFAULT '',
  `P_FN_NM` varchar(255) NOT NULL DEFAULT '',
  `P_AUTH_NO` varchar(255) NOT NULL DEFAULT '',
  `P_AMT` int(11) NOT NULL DEFAULT 0,
  `P_RMESG1` varchar(255) NOT NULL DEFAULT '',
  `post_data` text NOT NULL,
  `is_mail_send` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_item`
--

CREATE TABLE `g5_shop_item` (
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `ca_id` varchar(10) NOT NULL DEFAULT '0',
  `ca_id2` varchar(255) NOT NULL DEFAULT '',
  `ca_id3` varchar(255) NOT NULL DEFAULT '',
  `it_skin` varchar(255) NOT NULL DEFAULT '',
  `it_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `it_name` varchar(255) NOT NULL DEFAULT '',
  `it_seo_title` varchar(200) NOT NULL DEFAULT '',
  `it_maker` varchar(255) NOT NULL DEFAULT '',
  `it_origin` varchar(255) NOT NULL DEFAULT '',
  `it_brand` varchar(255) NOT NULL DEFAULT '',
  `it_model` varchar(255) NOT NULL DEFAULT '',
  `it_option_subject` varchar(255) NOT NULL DEFAULT '',
  `it_supply_subject` varchar(255) NOT NULL DEFAULT '',
  `it_type1` tinyint(4) NOT NULL DEFAULT 0,
  `it_type2` tinyint(4) NOT NULL DEFAULT 0,
  `it_type3` tinyint(4) NOT NULL DEFAULT 0,
  `it_type4` tinyint(4) NOT NULL DEFAULT 0,
  `it_type5` tinyint(4) NOT NULL DEFAULT 0,
  `it_basic` text NOT NULL,
  `it_explan` mediumtext NOT NULL,
  `it_explan2` mediumtext NOT NULL,
  `it_mobile_explan` mediumtext NOT NULL,
  `it_cust_price` int(11) NOT NULL DEFAULT 0,
  `it_price` int(11) NOT NULL DEFAULT 0,
  `it_point` int(11) NOT NULL DEFAULT 0,
  `it_point_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_supply_point` int(11) NOT NULL DEFAULT 0,
  `it_notax` tinyint(4) NOT NULL DEFAULT 0,
  `it_sell_email` varchar(255) NOT NULL DEFAULT '',
  `it_use` tinyint(4) NOT NULL DEFAULT 0,
  `it_nocoupon` tinyint(4) NOT NULL DEFAULT 0,
  `it_soldout` tinyint(4) NOT NULL DEFAULT 0,
  `it_stock_qty` int(11) NOT NULL DEFAULT 0,
  `it_stock_sms` tinyint(4) NOT NULL DEFAULT 0,
  `it_noti_qty` int(11) NOT NULL DEFAULT 0,
  `it_sc_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_method` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_price` int(11) NOT NULL DEFAULT 0,
  `it_sc_minimum` int(11) NOT NULL DEFAULT 0,
  `it_sc_qty` int(11) NOT NULL DEFAULT 0,
  `it_buy_min_qty` int(11) NOT NULL DEFAULT 0,
  `it_buy_max_qty` int(11) NOT NULL DEFAULT 0,
  `it_head_html` text NOT NULL,
  `it_tail_html` text NOT NULL,
  `it_mobile_head_html` text NOT NULL,
  `it_mobile_tail_html` text NOT NULL,
  `it_hit` int(11) NOT NULL DEFAULT 0,
  `it_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_ip` varchar(25) NOT NULL DEFAULT '',
  `it_order` int(11) NOT NULL DEFAULT 0,
  `it_tel_inq` tinyint(4) NOT NULL DEFAULT 0,
  `it_info_gubun` varchar(50) NOT NULL DEFAULT '',
  `it_info_value` text NOT NULL,
  `it_sum_qty` int(11) NOT NULL DEFAULT 0,
  `it_use_cnt` int(11) NOT NULL DEFAULT 0,
  `it_use_avg` decimal(2,1) NOT NULL,
  `it_shop_memo` text NOT NULL,
  `ec_mall_pid` varchar(255) NOT NULL DEFAULT '',
  `it_img1` varchar(255) NOT NULL DEFAULT '',
  `it_img2` varchar(255) NOT NULL DEFAULT '',
  `it_img3` varchar(255) NOT NULL DEFAULT '',
  `it_img4` varchar(255) NOT NULL DEFAULT '',
  `it_img5` varchar(255) NOT NULL DEFAULT '',
  `it_img6` varchar(255) NOT NULL DEFAULT '',
  `it_img7` varchar(255) NOT NULL DEFAULT '',
  `it_img8` varchar(255) NOT NULL DEFAULT '',
  `it_img9` varchar(255) NOT NULL DEFAULT '',
  `it_img10` varchar(255) NOT NULL DEFAULT '',
  `it_1_subj` varchar(255) NOT NULL DEFAULT '',
  `it_2_subj` varchar(255) NOT NULL DEFAULT '',
  `it_3_subj` varchar(255) NOT NULL DEFAULT '',
  `it_4_subj` varchar(255) NOT NULL DEFAULT '',
  `it_5_subj` varchar(255) NOT NULL DEFAULT '',
  `it_6_subj` varchar(255) NOT NULL DEFAULT '',
  `it_7_subj` varchar(255) NOT NULL DEFAULT '',
  `it_8_subj` varchar(255) NOT NULL DEFAULT '',
  `it_9_subj` varchar(255) NOT NULL DEFAULT '',
  `it_10_subj` varchar(255) NOT NULL DEFAULT '',
  `it_1` varchar(255) NOT NULL DEFAULT '',
  `it_2` varchar(255) NOT NULL DEFAULT '',
  `it_3` varchar(255) NOT NULL DEFAULT '',
  `it_4` varchar(255) NOT NULL DEFAULT '',
  `it_5` varchar(255) NOT NULL DEFAULT '',
  `it_6` varchar(255) NOT NULL DEFAULT '',
  `it_7` varchar(255) NOT NULL DEFAULT '',
  `it_8` varchar(255) NOT NULL DEFAULT '',
  `it_9` varchar(255) NOT NULL DEFAULT '',
  `it_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_item_option`
--

CREATE TABLE `g5_shop_item_option` (
  `io_no` int(11) NOT NULL,
  `io_id` varchar(255) NOT NULL DEFAULT '0',
  `io_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `io_price` int(11) NOT NULL DEFAULT 0,
  `io_stock_qty` int(11) NOT NULL DEFAULT 0,
  `io_noti_qty` int(11) NOT NULL DEFAULT 0,
  `io_use` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_item_qa`
--

CREATE TABLE `g5_shop_item_qa` (
  `iq_id` int(11) NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `iq_secret` tinyint(4) NOT NULL DEFAULT 0,
  `iq_name` varchar(255) NOT NULL DEFAULT '',
  `iq_email` varchar(255) NOT NULL DEFAULT '',
  `iq_hp` varchar(255) NOT NULL DEFAULT '',
  `iq_password` varchar(255) NOT NULL DEFAULT '',
  `iq_subject` varchar(255) NOT NULL DEFAULT '',
  `iq_question` text NOT NULL,
  `iq_answer` text NOT NULL,
  `iq_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iq_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_item_relation`
--

CREATE TABLE `g5_shop_item_relation` (
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `it_id2` varchar(20) NOT NULL DEFAULT '',
  `ir_no` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_item_stocksms`
--

CREATE TABLE `g5_shop_item_stocksms` (
  `ss_id` int(11) NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `ss_hp` varchar(255) NOT NULL DEFAULT '',
  `ss_send` tinyint(4) NOT NULL DEFAULT 0,
  `ss_send_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ss_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ss_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_item_use`
--

CREATE TABLE `g5_shop_item_use` (
  `is_id` int(11) NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `is_name` varchar(255) NOT NULL DEFAULT '',
  `is_password` varchar(255) NOT NULL DEFAULT '',
  `is_score` tinyint(4) NOT NULL DEFAULT 0,
  `is_subject` varchar(255) NOT NULL DEFAULT '',
  `is_content` text NOT NULL,
  `is_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_ip` varchar(25) NOT NULL DEFAULT '',
  `is_confirm` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_order`
--

CREATE TABLE `g5_shop_order` (
  `od_id` bigint(20) UNSIGNED NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `od_name` varchar(20) NOT NULL DEFAULT '',
  `od_email` varchar(100) NOT NULL DEFAULT '',
  `od_tel` varchar(20) NOT NULL DEFAULT '',
  `od_hp` varchar(20) NOT NULL DEFAULT '',
  `od_zip1` char(3) NOT NULL DEFAULT '',
  `od_zip2` char(3) NOT NULL DEFAULT '',
  `od_addr1` varchar(100) NOT NULL DEFAULT '',
  `od_addr2` varchar(100) NOT NULL DEFAULT '',
  `od_addr3` varchar(255) NOT NULL DEFAULT '',
  `od_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `od_deposit_name` varchar(20) NOT NULL DEFAULT '',
  `od_b_name` varchar(20) NOT NULL DEFAULT '',
  `od_b_tel` varchar(20) NOT NULL DEFAULT '',
  `od_b_hp` varchar(20) NOT NULL DEFAULT '',
  `od_b_zip1` char(3) NOT NULL DEFAULT '',
  `od_b_zip2` char(3) NOT NULL DEFAULT '',
  `od_b_addr1` varchar(100) NOT NULL DEFAULT '',
  `od_b_addr2` varchar(100) NOT NULL DEFAULT '',
  `od_b_addr3` varchar(255) NOT NULL DEFAULT '',
  `od_b_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `od_memo` text NOT NULL,
  `od_cart_count` int(11) NOT NULL DEFAULT 0,
  `od_cart_price` int(11) NOT NULL DEFAULT 0,
  `od_cart_coupon` int(11) NOT NULL DEFAULT 0,
  `od_send_cost` int(11) NOT NULL DEFAULT 0,
  `od_send_cost2` int(11) NOT NULL DEFAULT 0,
  `od_send_coupon` int(11) NOT NULL DEFAULT 0,
  `od_receipt_price` int(11) NOT NULL DEFAULT 0,
  `od_cancel_price` int(11) NOT NULL DEFAULT 0,
  `od_receipt_point` int(11) NOT NULL DEFAULT 0,
  `od_refund_price` int(11) NOT NULL DEFAULT 0,
  `od_bank_account` varchar(255) NOT NULL DEFAULT '',
  `od_receipt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_coupon` int(11) NOT NULL DEFAULT 0,
  `od_misu` int(11) NOT NULL DEFAULT 0,
  `od_shop_memo` text NOT NULL,
  `od_mod_history` text NOT NULL,
  `od_status` varchar(255) NOT NULL DEFAULT '',
  `od_hope_date` date NOT NULL DEFAULT '0000-00-00',
  `od_settle_case` varchar(255) NOT NULL DEFAULT '',
  `od_other_pay_type` varchar(100) NOT NULL DEFAULT '',
  `od_test` tinyint(4) NOT NULL DEFAULT 0,
  `od_mobile` tinyint(4) NOT NULL DEFAULT 0,
  `od_pg` varchar(255) NOT NULL DEFAULT '',
  `od_tno` varchar(255) NOT NULL DEFAULT '',
  `od_app_no` varchar(20) NOT NULL DEFAULT '',
  `od_escrow` tinyint(4) NOT NULL DEFAULT 0,
  `od_casseqno` varchar(255) NOT NULL DEFAULT '',
  `od_tax_flag` tinyint(4) NOT NULL DEFAULT 0,
  `od_tax_mny` int(11) NOT NULL DEFAULT 0,
  `od_vat_mny` int(11) NOT NULL DEFAULT 0,
  `od_free_mny` int(11) NOT NULL DEFAULT 0,
  `od_delivery_company` varchar(255) NOT NULL DEFAULT '0',
  `od_invoice` varchar(255) NOT NULL DEFAULT '',
  `od_invoice_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_cash` tinyint(4) NOT NULL,
  `od_cash_no` varchar(255) NOT NULL,
  `od_cash_info` text NOT NULL,
  `od_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_pwd` varchar(255) NOT NULL DEFAULT '',
  `od_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_order_address`
--

CREATE TABLE `g5_shop_order_address` (
  `ad_id` int(11) NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `ad_subject` varchar(255) NOT NULL DEFAULT '',
  `ad_default` tinyint(4) NOT NULL DEFAULT 0,
  `ad_name` varchar(255) NOT NULL DEFAULT '',
  `ad_tel` varchar(255) NOT NULL DEFAULT '',
  `ad_hp` varchar(255) NOT NULL DEFAULT '',
  `ad_zip1` char(3) NOT NULL DEFAULT '',
  `ad_zip2` char(3) NOT NULL DEFAULT '',
  `ad_addr1` varchar(255) NOT NULL DEFAULT '',
  `ad_addr2` varchar(255) NOT NULL DEFAULT '',
  `ad_addr3` varchar(255) NOT NULL DEFAULT '',
  `ad_jibeon` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_order_data`
--

CREATE TABLE `g5_shop_order_data` (
  `od_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `dt_pg` varchar(255) NOT NULL DEFAULT '',
  `dt_data` text NOT NULL,
  `dt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_order_delete`
--

CREATE TABLE `g5_shop_order_delete` (
  `de_id` int(11) NOT NULL,
  `de_key` varchar(255) NOT NULL DEFAULT '',
  `de_data` longtext NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `de_ip` varchar(255) NOT NULL DEFAULT '',
  `de_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_order_post_log`
--

CREATE TABLE `g5_shop_order_post_log` (
  `log_id` int(11) NOT NULL,
  `oid` bigint(20) UNSIGNED NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `post_data` text NOT NULL,
  `ol_code` varchar(255) NOT NULL DEFAULT '',
  `ol_msg` text NOT NULL,
  `ol_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ol_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_personalpay`
--

CREATE TABLE `g5_shop_personalpay` (
  `pp_id` bigint(20) UNSIGNED NOT NULL,
  `od_id` bigint(20) UNSIGNED NOT NULL,
  `pp_name` varchar(255) NOT NULL DEFAULT '',
  `pp_email` varchar(255) NOT NULL DEFAULT '',
  `pp_hp` varchar(255) NOT NULL DEFAULT '',
  `pp_content` text NOT NULL,
  `pp_use` tinyint(4) NOT NULL DEFAULT 0,
  `pp_price` int(11) NOT NULL DEFAULT 0,
  `pp_pg` varchar(255) NOT NULL DEFAULT '',
  `pp_tno` varchar(255) NOT NULL DEFAULT '',
  `pp_app_no` varchar(20) NOT NULL DEFAULT '',
  `pp_casseqno` varchar(255) NOT NULL DEFAULT '',
  `pp_receipt_price` int(11) NOT NULL DEFAULT 0,
  `pp_settle_case` varchar(255) NOT NULL DEFAULT '',
  `pp_bank_account` varchar(255) NOT NULL DEFAULT '',
  `pp_deposit_name` varchar(255) NOT NULL DEFAULT '',
  `pp_receipt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pp_receipt_ip` varchar(255) NOT NULL DEFAULT '',
  `pp_shop_memo` text NOT NULL,
  `pp_cash` tinyint(4) NOT NULL DEFAULT 0,
  `pp_cash_no` varchar(255) NOT NULL DEFAULT '',
  `pp_cash_info` text NOT NULL,
  `pp_ip` varchar(255) NOT NULL DEFAULT '',
  `pp_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_sendcost`
--

CREATE TABLE `g5_shop_sendcost` (
  `sc_id` int(11) NOT NULL,
  `sc_name` varchar(255) NOT NULL DEFAULT '',
  `sc_zip1` varchar(10) NOT NULL DEFAULT '',
  `sc_zip2` varchar(10) NOT NULL DEFAULT '',
  `sc_price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_shop_wish`
--

CREATE TABLE `g5_shop_wish` (
  `wi_id` int(11) NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `it_id` varchar(20) NOT NULL DEFAULT '0',
  `wi_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wi_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_uniqid`
--

CREATE TABLE `g5_uniqid` (
  `uq_id` bigint(20) UNSIGNED NOT NULL,
  `uq_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_uniqid`
--

INSERT INTO `g5_uniqid` (`uq_id`, `uq_ip`) VALUES
(2024102406245595, '::1'),
(2024102406365876, '::1'),
(2024102406371477, '::1'),
(2024102406405689, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `g5_visit`
--

CREATE TABLE `g5_visit` (
  `vi_id` int(11) NOT NULL,
  `vi_ip` varchar(100) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(200) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_visit`
--

INSERT INTO `g5_visit` (`vi_id`, `vi_ip`, `vi_date`, `vi_time`, `vi_referer`, `vi_agent`, `vi_browser`, `vi_os`, `vi_device`) VALUES
(1, '::1', '2024-10-24', '06:21:27', 'http://localhost/eyoom/eyoom/install/setup_db.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '', '', ''),
(2, '::1', '2024-10-25', '20:28:01', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_visit_sum`
--

CREATE TABLE `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `g5_visit_sum`
--

INSERT INTO `g5_visit_sum` (`vs_date`, `vs_count`) VALUES
('2024-10-24', 1),
('2024-10-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `g5_write_free`
--

CREATE TABLE `g5_write_free` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_write_gallery`
--

CREATE TABLE `g5_write_gallery` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_write_notice`
--

CREATE TABLE `g5_write_notice` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g5_write_qa`
--

CREATE TABLE `g5_write_qa` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `g5_auth`
--
ALTER TABLE `g5_auth`
  ADD PRIMARY KEY (`mb_id`,`au_menu`);

--
-- Indexes for table `g5_autosave`
--
ALTER TABLE `g5_autosave`
  ADD PRIMARY KEY (`as_id`),
  ADD UNIQUE KEY `as_uid` (`as_uid`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_board`
--
ALTER TABLE `g5_board`
  ADD PRIMARY KEY (`bo_table`);

--
-- Indexes for table `g5_board_file`
--
ALTER TABLE `g5_board_file`
  ADD PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`);

--
-- Indexes for table `g5_board_good`
--
ALTER TABLE `g5_board_good`
  ADD PRIMARY KEY (`bg_id`),
  ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`);

--
-- Indexes for table `g5_board_new`
--
ALTER TABLE `g5_board_new`
  ADD PRIMARY KEY (`bn_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_config`
--
ALTER TABLE `g5_config`
  ADD PRIMARY KEY (`cf_id`);

--
-- Indexes for table `g5_content`
--
ALTER TABLE `g5_content`
  ADD PRIMARY KEY (`co_id`),
  ADD KEY `co_seo_title` (`co_seo_title`);

--
-- Indexes for table `g5_eyoom_activity`
--
ALTER TABLE `g5_eyoom_activity`
  ADD PRIMARY KEY (`act_id`);

--
-- Indexes for table `g5_eyoom_banner`
--
ALTER TABLE `g5_eyoom_banner`
  ADD PRIMARY KEY (`bn_no`);

--
-- Indexes for table `g5_eyoom_banner_date`
--
ALTER TABLE `g5_eyoom_banner_date`
  ADD PRIMARY KEY (`bs_date`);

--
-- Indexes for table `g5_eyoom_banner_hit`
--
ALTER TABLE `g5_eyoom_banner_hit`
  ADD PRIMARY KEY (`bh_id`);

--
-- Indexes for table `g5_eyoom_banner_item`
--
ALTER TABLE `g5_eyoom_banner_item`
  ADD PRIMARY KEY (`bi_no`);

--
-- Indexes for table `g5_eyoom_bbspoll`
--
ALTER TABLE `g5_eyoom_bbspoll`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `g5_eyoom_best`
--
ALTER TABLE `g5_eyoom_best`
  ADD PRIMARY KEY (`bb_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_eyoom_board`
--
ALTER TABLE `g5_eyoom_board`
  ADD PRIMARY KEY (`bo_id`),
  ADD KEY `bo_table` (`bo_table`),
  ADD KEY `bo_theme` (`bo_theme`);

--
-- Indexes for table `g5_eyoom_brand`
--
ALTER TABLE `g5_eyoom_brand`
  ADD PRIMARY KEY (`br_no`);

--
-- Indexes for table `g5_eyoom_contents`
--
ALTER TABLE `g5_eyoom_contents`
  ADD PRIMARY KEY (`ec_no`);

--
-- Indexes for table `g5_eyoom_contents_item`
--
ALTER TABLE `g5_eyoom_contents_item`
  ADD PRIMARY KEY (`ci_no`);

--
-- Indexes for table `g5_eyoom_counsel`
--
ALTER TABLE `g5_eyoom_counsel`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `g5_eyoom_exboard`
--
ALTER TABLE `g5_eyoom_exboard`
  ADD PRIMARY KEY (`ex_no`);

--
-- Indexes for table `g5_eyoom_follow`
--
ALTER TABLE `g5_eyoom_follow`
  ADD PRIMARY KEY (`fo_no`);

--
-- Indexes for table `g5_eyoom_goods`
--
ALTER TABLE `g5_eyoom_goods`
  ADD PRIMARY KEY (`eg_no`);

--
-- Indexes for table `g5_eyoom_goods_item`
--
ALTER TABLE `g5_eyoom_goods_item`
  ADD PRIMARY KEY (`gi_no`);

--
-- Indexes for table `g5_eyoom_latest`
--
ALTER TABLE `g5_eyoom_latest`
  ADD PRIMARY KEY (`el_no`);

--
-- Indexes for table `g5_eyoom_latest_item`
--
ALTER TABLE `g5_eyoom_latest_item`
  ADD PRIMARY KEY (`li_no`);

--
-- Indexes for table `g5_eyoom_like`
--
ALTER TABLE `g5_eyoom_like`
  ADD PRIMARY KEY (`lk_no`);

--
-- Indexes for table `g5_eyoom_manager`
--
ALTER TABLE `g5_eyoom_manager`
  ADD PRIMARY KEY (`mb_id`,`mg_theme`);

--
-- Indexes for table `g5_eyoom_mbmemo`
--
ALTER TABLE `g5_eyoom_mbmemo`
  ADD PRIMARY KEY (`mm_no`);

--
-- Indexes for table `g5_eyoom_member`
--
ALTER TABLE `g5_eyoom_member`
  ADD UNIQUE KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_eyoom_menu`
--
ALTER TABLE `g5_eyoom_menu`
  ADD PRIMARY KEY (`me_id`);

--
-- Indexes for table `g5_eyoom_pin`
--
ALTER TABLE `g5_eyoom_pin`
  ADD PRIMARY KEY (`pn_no`);

--
-- Indexes for table `g5_eyoom_rating`
--
ALTER TABLE `g5_eyoom_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `g5_eyoom_respond`
--
ALTER TABLE `g5_eyoom_respond`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `mb_id` (`wr_mb_id`);

--
-- Indexes for table `g5_eyoom_scheduled`
--
ALTER TABLE `g5_eyoom_scheduled`
  ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `g5_eyoom_slider`
--
ALTER TABLE `g5_eyoom_slider`
  ADD PRIMARY KEY (`es_no`);

--
-- Indexes for table `g5_eyoom_slider_item`
--
ALTER TABLE `g5_eyoom_slider_item`
  ADD PRIMARY KEY (`ei_no`);

--
-- Indexes for table `g5_eyoom_slider_ytitem`
--
ALTER TABLE `g5_eyoom_slider_ytitem`
  ADD PRIMARY KEY (`ei_no`);

--
-- Indexes for table `g5_eyoom_subscribe`
--
ALTER TABLE `g5_eyoom_subscribe`
  ADD PRIMARY KEY (`sb_no`);

--
-- Indexes for table `g5_eyoom_tag`
--
ALTER TABLE `g5_eyoom_tag`
  ADD PRIMARY KEY (`tg_id`),
  ADD KEY `tg_word` (`tg_word`);

--
-- Indexes for table `g5_eyoom_tag_write`
--
ALTER TABLE `g5_eyoom_tag_write`
  ADD PRIMARY KEY (`tw_id`),
  ADD KEY `mb_id` (`mb_id`),
  ADD KEY `wr_hit` (`wr_hit`);

--
-- Indexes for table `g5_eyoom_theme`
--
ALTER TABLE `g5_eyoom_theme`
  ADD UNIQUE KEY `tm_name` (`tm_name`);

--
-- Indexes for table `g5_eyoom_yellowcard`
--
ALTER TABLE `g5_eyoom_yellowcard`
  ADD PRIMARY KEY (`yc_id`);

--
-- Indexes for table `g5_faq`
--
ALTER TABLE `g5_faq`
  ADD PRIMARY KEY (`fa_id`),
  ADD KEY `fm_id` (`fm_id`);

--
-- Indexes for table `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  ADD PRIMARY KEY (`fm_id`);

--
-- Indexes for table `g5_group`
--
ALTER TABLE `g5_group`
  ADD PRIMARY KEY (`gr_id`);

--
-- Indexes for table `g5_group_member`
--
ALTER TABLE `g5_group_member`
  ADD PRIMARY KEY (`gm_id`),
  ADD KEY `gr_id` (`gr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_login`
--
ALTER TABLE `g5_login`
  ADD PRIMARY KEY (`lo_id`),
  ADD UNIQUE KEY `lo_ip_unique` (`lo_ip`);

--
-- Indexes for table `g5_mail`
--
ALTER TABLE `g5_mail`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `g5_member`
--
ALTER TABLE `g5_member`
  ADD PRIMARY KEY (`mb_no`),
  ADD UNIQUE KEY `mb_id` (`mb_id`),
  ADD KEY `mb_today_login` (`mb_today_login`),
  ADD KEY `mb_datetime` (`mb_datetime`);

--
-- Indexes for table `g5_member_cert_history`
--
ALTER TABLE `g5_member_cert_history`
  ADD PRIMARY KEY (`ch_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_member_social_profiles`
--
ALTER TABLE `g5_member_social_profiles`
  ADD UNIQUE KEY `mp_no` (`mp_no`),
  ADD KEY `mb_id` (`mb_id`),
  ADD KEY `provider` (`provider`);

--
-- Indexes for table `g5_memo`
--
ALTER TABLE `g5_memo`
  ADD PRIMARY KEY (`me_id`),
  ADD KEY `me_recv_mb_id` (`me_recv_mb_id`);

--
-- Indexes for table `g5_menu`
--
ALTER TABLE `g5_menu`
  ADD PRIMARY KEY (`me_id`);

--
-- Indexes for table `g5_new_win`
--
ALTER TABLE `g5_new_win`
  ADD PRIMARY KEY (`nw_id`);

--
-- Indexes for table `g5_point`
--
ALTER TABLE `g5_point`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  ADD KEY `index2` (`po_expire_date`);

--
-- Indexes for table `g5_poll`
--
ALTER TABLE `g5_poll`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `g5_poll_etc`
--
ALTER TABLE `g5_poll_etc`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `g5_popular`
--
ALTER TABLE `g5_popular`
  ADD PRIMARY KEY (`pp_id`),
  ADD UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`);

--
-- Indexes for table `g5_qa_config`
--
ALTER TABLE `g5_qa_config`
  ADD PRIMARY KEY (`qa_id`);

--
-- Indexes for table `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  ADD PRIMARY KEY (`qa_id`),
  ADD KEY `qa_num_parent` (`qa_num`,`qa_parent`);

--
-- Indexes for table `g5_scrap`
--
ALTER TABLE `g5_scrap`
  ADD PRIMARY KEY (`ms_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_shop_banner`
--
ALTER TABLE `g5_shop_banner`
  ADD PRIMARY KEY (`bn_id`);

--
-- Indexes for table `g5_shop_cart`
--
ALTER TABLE `g5_shop_cart`
  ADD PRIMARY KEY (`ct_id`),
  ADD KEY `od_id` (`od_id`),
  ADD KEY `it_id` (`it_id`),
  ADD KEY `ct_status` (`ct_status`);

--
-- Indexes for table `g5_shop_category`
--
ALTER TABLE `g5_shop_category`
  ADD PRIMARY KEY (`ca_id`),
  ADD KEY `ca_order` (`ca_order`);

--
-- Indexes for table `g5_shop_coupon`
--
ALTER TABLE `g5_shop_coupon`
  ADD PRIMARY KEY (`cp_no`),
  ADD UNIQUE KEY `cp_id` (`cp_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_shop_coupon_log`
--
ALTER TABLE `g5_shop_coupon_log`
  ADD PRIMARY KEY (`cl_id`),
  ADD KEY `mb_id` (`mb_id`),
  ADD KEY `od_id` (`od_id`);

--
-- Indexes for table `g5_shop_coupon_zone`
--
ALTER TABLE `g5_shop_coupon_zone`
  ADD PRIMARY KEY (`cz_id`);

--
-- Indexes for table `g5_shop_default`
--
ALTER TABLE `g5_shop_default`
  ADD PRIMARY KEY (`de_id`);

--
-- Indexes for table `g5_shop_event`
--
ALTER TABLE `g5_shop_event`
  ADD PRIMARY KEY (`ev_id`);

--
-- Indexes for table `g5_shop_event_item`
--
ALTER TABLE `g5_shop_event_item`
  ADD PRIMARY KEY (`ev_id`,`it_id`),
  ADD KEY `it_id` (`it_id`);

--
-- Indexes for table `g5_shop_inicis_log`
--
ALTER TABLE `g5_shop_inicis_log`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `g5_shop_item`
--
ALTER TABLE `g5_shop_item`
  ADD PRIMARY KEY (`it_id`),
  ADD KEY `ca_id` (`ca_id`),
  ADD KEY `it_name` (`it_name`),
  ADD KEY `it_seo_title` (`it_seo_title`),
  ADD KEY `it_order` (`it_order`);

--
-- Indexes for table `g5_shop_item_option`
--
ALTER TABLE `g5_shop_item_option`
  ADD PRIMARY KEY (`io_no`),
  ADD KEY `io_id` (`io_id`),
  ADD KEY `it_id` (`it_id`);

--
-- Indexes for table `g5_shop_item_qa`
--
ALTER TABLE `g5_shop_item_qa`
  ADD PRIMARY KEY (`iq_id`);

--
-- Indexes for table `g5_shop_item_relation`
--
ALTER TABLE `g5_shop_item_relation`
  ADD PRIMARY KEY (`it_id`,`it_id2`);

--
-- Indexes for table `g5_shop_item_stocksms`
--
ALTER TABLE `g5_shop_item_stocksms`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `g5_shop_item_use`
--
ALTER TABLE `g5_shop_item_use`
  ADD PRIMARY KEY (`is_id`),
  ADD KEY `index1` (`it_id`);

--
-- Indexes for table `g5_shop_order`
--
ALTER TABLE `g5_shop_order`
  ADD PRIMARY KEY (`od_id`),
  ADD KEY `index2` (`mb_id`);

--
-- Indexes for table `g5_shop_order_address`
--
ALTER TABLE `g5_shop_order_address`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_shop_order_data`
--
ALTER TABLE `g5_shop_order_data`
  ADD KEY `od_id` (`od_id`);

--
-- Indexes for table `g5_shop_order_delete`
--
ALTER TABLE `g5_shop_order_delete`
  ADD PRIMARY KEY (`de_id`);

--
-- Indexes for table `g5_shop_order_post_log`
--
ALTER TABLE `g5_shop_order_post_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `g5_shop_personalpay`
--
ALTER TABLE `g5_shop_personalpay`
  ADD PRIMARY KEY (`pp_id`),
  ADD KEY `od_id` (`od_id`);

--
-- Indexes for table `g5_shop_sendcost`
--
ALTER TABLE `g5_shop_sendcost`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `sc_zip1` (`sc_zip1`),
  ADD KEY `sc_zip2` (`sc_zip2`);

--
-- Indexes for table `g5_shop_wish`
--
ALTER TABLE `g5_shop_wish`
  ADD PRIMARY KEY (`wi_id`),
  ADD KEY `index1` (`mb_id`);

--
-- Indexes for table `g5_uniqid`
--
ALTER TABLE `g5_uniqid`
  ADD PRIMARY KEY (`uq_id`);

--
-- Indexes for table `g5_visit`
--
ALTER TABLE `g5_visit`
  ADD PRIMARY KEY (`vi_id`),
  ADD UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  ADD KEY `index2` (`vi_date`);

--
-- Indexes for table `g5_visit_sum`
--
ALTER TABLE `g5_visit_sum`
  ADD PRIMARY KEY (`vs_date`),
  ADD KEY `index1` (`vs_count`);

--
-- Indexes for table `g5_write_free`
--
ALTER TABLE `g5_write_free`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_seo_title` (`wr_seo_title`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- Indexes for table `g5_write_gallery`
--
ALTER TABLE `g5_write_gallery`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_seo_title` (`wr_seo_title`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- Indexes for table `g5_write_notice`
--
ALTER TABLE `g5_write_notice`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_seo_title` (`wr_seo_title`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- Indexes for table `g5_write_qa`
--
ALTER TABLE `g5_write_qa`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_seo_title` (`wr_seo_title`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `g5_autosave`
--
ALTER TABLE `g5_autosave`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_board_good`
--
ALTER TABLE `g5_board_good`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_board_new`
--
ALTER TABLE `g5_board_new`
  MODIFY `bn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_config`
--
ALTER TABLE `g5_config`
  MODIFY `cf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_eyoom_activity`
--
ALTER TABLE `g5_eyoom_activity`
  MODIFY `act_id` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `g5_eyoom_banner`
--
ALTER TABLE `g5_eyoom_banner`
  MODIFY `bn_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_banner_hit`
--
ALTER TABLE `g5_eyoom_banner_hit`
  MODIFY `bh_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_banner_item`
--
ALTER TABLE `g5_eyoom_banner_item`
  MODIFY `bi_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_bbspoll`
--
ALTER TABLE `g5_eyoom_bbspoll`
  MODIFY `po_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_best`
--
ALTER TABLE `g5_eyoom_best`
  MODIFY `bb_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_board`
--
ALTER TABLE `g5_eyoom_board`
  MODIFY `bo_id` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_brand`
--
ALTER TABLE `g5_eyoom_brand`
  MODIFY `br_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_contents`
--
ALTER TABLE `g5_eyoom_contents`
  MODIFY `ec_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_contents_item`
--
ALTER TABLE `g5_eyoom_contents_item`
  MODIFY `ci_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_counsel`
--
ALTER TABLE `g5_eyoom_counsel`
  MODIFY `cs_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_exboard`
--
ALTER TABLE `g5_eyoom_exboard`
  MODIFY `ex_no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_follow`
--
ALTER TABLE `g5_eyoom_follow`
  MODIFY `fo_no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_goods`
--
ALTER TABLE `g5_eyoom_goods`
  MODIFY `eg_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_goods_item`
--
ALTER TABLE `g5_eyoom_goods_item`
  MODIFY `gi_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_latest`
--
ALTER TABLE `g5_eyoom_latest`
  MODIFY `el_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `g5_eyoom_latest_item`
--
ALTER TABLE `g5_eyoom_latest_item`
  MODIFY `li_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_like`
--
ALTER TABLE `g5_eyoom_like`
  MODIFY `lk_no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_mbmemo`
--
ALTER TABLE `g5_eyoom_mbmemo`
  MODIFY `mm_no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_menu`
--
ALTER TABLE `g5_eyoom_menu`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `g5_eyoom_pin`
--
ALTER TABLE `g5_eyoom_pin`
  MODIFY `pn_no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_rating`
--
ALTER TABLE `g5_eyoom_rating`
  MODIFY `rt_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_respond`
--
ALTER TABLE `g5_eyoom_respond`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_scheduled`
--
ALTER TABLE `g5_eyoom_scheduled`
  MODIFY `sd_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_slider`
--
ALTER TABLE `g5_eyoom_slider`
  MODIFY `es_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `g5_eyoom_slider_item`
--
ALTER TABLE `g5_eyoom_slider_item`
  MODIFY `ei_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_slider_ytitem`
--
ALTER TABLE `g5_eyoom_slider_ytitem`
  MODIFY `ei_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_subscribe`
--
ALTER TABLE `g5_eyoom_subscribe`
  MODIFY `sb_no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_tag`
--
ALTER TABLE `g5_eyoom_tag`
  MODIFY `tg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_tag_write`
--
ALTER TABLE `g5_eyoom_tag_write`
  MODIFY `tw_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_eyoom_yellowcard`
--
ALTER TABLE `g5_eyoom_yellowcard`
  MODIFY `yc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_faq`
--
ALTER TABLE `g5_faq`
  MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  MODIFY `fm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_group_member`
--
ALTER TABLE `g5_group_member`
  MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_login`
--
ALTER TABLE `g5_login`
  MODIFY `lo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_mail`
--
ALTER TABLE `g5_mail`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `g5_member`
--
ALTER TABLE `g5_member`
  MODIFY `mb_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_member_cert_history`
--
ALTER TABLE `g5_member_cert_history`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_member_social_profiles`
--
ALTER TABLE `g5_member_social_profiles`
  MODIFY `mp_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_memo`
--
ALTER TABLE `g5_memo`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_menu`
--
ALTER TABLE `g5_menu`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_new_win`
--
ALTER TABLE `g5_new_win`
  MODIFY `nw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_point`
--
ALTER TABLE `g5_point`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_poll`
--
ALTER TABLE `g5_poll`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_popular`
--
ALTER TABLE `g5_popular`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_qa_config`
--
ALTER TABLE `g5_qa_config`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_scrap`
--
ALTER TABLE `g5_scrap`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_banner`
--
ALTER TABLE `g5_shop_banner`
  MODIFY `bn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_cart`
--
ALTER TABLE `g5_shop_cart`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_coupon`
--
ALTER TABLE `g5_shop_coupon`
  MODIFY `cp_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_coupon_log`
--
ALTER TABLE `g5_shop_coupon_log`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_coupon_zone`
--
ALTER TABLE `g5_shop_coupon_zone`
  MODIFY `cz_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_default`
--
ALTER TABLE `g5_shop_default`
  MODIFY `de_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g5_shop_event`
--
ALTER TABLE `g5_shop_event`
  MODIFY `ev_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_item_option`
--
ALTER TABLE `g5_shop_item_option`
  MODIFY `io_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_item_qa`
--
ALTER TABLE `g5_shop_item_qa`
  MODIFY `iq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_item_stocksms`
--
ALTER TABLE `g5_shop_item_stocksms`
  MODIFY `ss_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_item_use`
--
ALTER TABLE `g5_shop_item_use`
  MODIFY `is_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_order_address`
--
ALTER TABLE `g5_shop_order_address`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_order_delete`
--
ALTER TABLE `g5_shop_order_delete`
  MODIFY `de_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_order_post_log`
--
ALTER TABLE `g5_shop_order_post_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_sendcost`
--
ALTER TABLE `g5_shop_sendcost`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_shop_wish`
--
ALTER TABLE `g5_shop_wish`
  MODIFY `wi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_visit`
--
ALTER TABLE `g5_visit`
  MODIFY `vi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `g5_write_free`
--
ALTER TABLE `g5_write_free`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_write_gallery`
--
ALTER TABLE `g5_write_gallery`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_write_notice`
--
ALTER TABLE `g5_write_notice`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g5_write_qa`
--
ALTER TABLE `g5_write_qa`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
