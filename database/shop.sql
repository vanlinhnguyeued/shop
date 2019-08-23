-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2019 lúc 05:51 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `SoLuong`, `GiaBan`, `MaDonDatHang`, `MaSanPham`) VALUES
('15071700101', 1, 90000, '150717001', 53),
('15071700100', 2, 55000, '150717001', 58),
('20051900100', 99, 100000, '200519001', 63),
('23051900100', 1, 90000, '230519001', 123),
('23051900200', 1, 350000, '230519002', 81),
('23051900300', 3, 150000, '230519003', 98),
('26051900100', 1, 90000, '260519001', 124),
('27051900100', 1, 90000, '270519001', 121);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `NgayLap`, `TongThanhTien`, `MaTaiKhoan`, `MaTinhTrang`) VALUES
('150717001', '2017-07-15 19:40:33', 200000, 8, 4),
('200519001', '2019-05-20 21:46:06', 9900000, 8, 4),
('230519001', '2019-05-23 23:29:18', 90000, 8, 2),
('230519002', '2019-05-23 23:29:58', 350000, 9, 1),
('230519003', '2019-05-23 23:30:22', 450000, 9, 1),
('260519001', '2019-05-26 18:01:00', 90000, 8, 3),
('270519001', '2019-05-27 01:16:45', 90000, 9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(7, 'Hãng Sản Xuất Khác', NULL, 0),
(8, 'Giày Adidas', NULL, 0),
(9, 'Giày Nike', NULL, 0),
(10, 'Giày Bitit', NULL, 0),
(11, 'Giày Dép Gosto', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(14, 'Giày búp bê', 0),
(13, 'Giày cao gót', 0),
(12, 'Dép cao', 0),
(19, 'Giày sandal', 0),
(17, 'Giày thể thao', 0),
(15, 'Dép hình thú', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuocXem` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci,
  `BiXoa` tinyint(1) DEFAULT '0',
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(107, '<p>D&eacute;p cao Gosto-DCG103</p>', 'DCG103.jpg', 150000, '2019-05-23 22:46:26', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 11),
(108, '<p>D&eacute;p cao Gosto-DCG104</p>', 'DCG104.jpg', 150000, '2019-05-23 22:47:02', 20, 0, 2, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 11),
(109, '<p>D&eacute;p Cao Gosto-DCG105</p>', 'DCG105.jpg', 150000, '2019-05-23 22:47:35', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 11),
(106, '<p>D&eacute;p cao Gosto-DCG102</p>', 'DCG102.jpg', 150000, '2019-05-23 22:45:43', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 11),
(105, '<p>D&eacute;p cao Gosto-DCG101</p>', 'DCG101.jpg', 150000, '2019-05-23 22:45:12', 20, 0, 1, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 11),
(104, '<p>Cao g&oacute;t Gosto-CGG106</p>', 'CGG106.jpg', 150000, '2019-05-23 22:44:26', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 11),
(103, '<p>Cao g&oacute;t Gosto-CGG105</p>', 'CGG105.jpg', 150000, '2019-05-23 22:43:32', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 11),
(102, '<p>Cao G&oacute;t Gosto-CGG104</p>', 'CGG104.jpg', 150000, '2019-05-23 22:41:59', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 11),
(98, '<p>Gi&agrave;y B&uacute;p B&ecirc; Gosto-BBG1', 'CGG101.jpg', 150000, '2019-05-23 12:30:28', 17, 0, 1, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 14, 11),
(99, '<p>Cao G&oacute;t Gosto-CGG102</p>', 'CGG102.jpg', 150000, '2019-05-23 12:31:56', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 13, 11),
(100, '<p>Cao G&oacute;t Gosto-CGG103</p>', 'CGG103.jpg', 150000, '2019-05-23 12:33:40', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 11),
(101, '<p>Gi&agrave;y B&uacute;p B&ecirc; Gosto-BBG1', 'BBG101.jpg', 150000, '2019-05-23 22:40:33', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 14, 11),
(97, '<p>Gi&agrave;y Bitit - GB106</p>', 'GB106.jpg', 320000, '2019-05-23 12:15:34', 20, 0, 1, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 10),
(92, '<p>Gi&agrave;y Bitit - GB101</p>', 'GB101.jpg', 320000, '2019-05-23 12:11:03', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 10),
(93, '<p>Gi&agrave;y Bitit - GB102</p>', 'GB102.jpg', 320000, '2019-05-23 12:13:33', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 10),
(94, '<p>Gi&agrave;y Bitit - GB103</p>', 'GB103.jpg', 320000, '2019-05-23 12:14:04', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 10),
(95, '<p>Gi&agrave;y Bitit - GB104</p>', 'GB104.jpg', 320000, '2019-05-23 12:14:33', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 10),
(96, '<p>Gi&agrave;y Bitit - GB105</p>', 'GB105.jpg', 320000, '2019-05-23 12:15:03', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 10),
(73, '<p>Gi&agrave;y Nike - GN101</p>', 'giay-nike-air-max-101.jpg', 350000, '2019-05-23 11:10:46', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 9),
(74, '<p>Gi&agrave;y Nike - GN102</p>', 'giay-nike-air-max-102.jpg', 350000, '2019-05-23 11:11:21', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 9),
(75, '<p>Gi&agrave;y Nike - GN103</p>', 'giay-nike-free-rn-103.jpg', 350000, '2019-05-23 11:12:12', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 9),
(76, '<p>Gi&agrave;y Nike - GN104</p>', 'GN104.jpg', 350000, '2019-05-23 11:13:18', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 9),
(77, '<p>Gi&agrave;y Nike - GN105</p>', 'GN105.jpg', 350000, '2019-05-23 11:14:58', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 9),
(78, '<p>Gi&agrave;y Nike - GN106</p>', 'GN106.jpg', 350000, '2019-05-23 11:42:46', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>\r\n<p>&nbsp;</p>', 0, 17, 9),
(79, '<p>Gi&agrave;y Adidas - GA101</p>', 'GA101.jpg', 350000, '2019-05-23 11:46:56', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 8),
(80, '<p>Gi&agrave;y Adidas - GA102</p>', 'GA102.jpg', 350000, '2019-05-23 11:47:38', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 8),
(81, '<p>Gi&agrave;y Adidas - GA103</p>', 'GA103.jpg', 350000, '2019-05-23 11:49:06', 19, 0, 3, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 8),
(82, '<p>Gi&agrave;y Adidas - GA104</p>', 'GA104.jpg', 350000, '2019-05-23 11:50:25', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 8),
(83, '<p>Gi&agrave;y Adidas - GA105</p>', 'GA105.jpg', 350000, '2019-05-23 11:51:11', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 8),
(84, '<p>Gi&agrave;y Adidas - GA106</p>', 'GA106.jpg', 350000, '2019-05-23 11:52:00', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 17, 8),
(110, '<p>D&eacute;p cao Gosto-DCG106</p>', 'DCG106.jpg', 150000, '2019-05-23 22:49:53', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 12, 11),
(111, '<p>D&eacute;p th&uacute;-DHT101</p>', 'DHT101.jpg', 90000, '2019-05-23 22:58:31', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7),
(112, '<p>D&eacute;p th&uacute;-DHT102</p>', 'DHT102.jpg', 90000, '2019-05-23 22:59:05', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7),
(113, '<p>D&eacute;p th&uacute;-DHT103</p>', 'DHT103.jpg', 90000, '2019-05-23 22:59:53', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>\r\n<p>&nbsp;</p>', 0, 15, 7),
(114, '<p>D&eacute;p th&uacute;-DHT104</p>', 'DHT104.jpg', 90000, '2019-05-23 23:00:26', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7),
(115, '<p>D&eacute;p th&uacute;-DHT105</p>', 'DHT105.jpg', 90000, '2019-05-23 23:01:03', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7);
INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(116, '<p>D&eacute;p th&uacute;-DHT106</p>', 'DHT106.jpg', 90000, '2019-05-23 23:01:29', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7),
(117, '<p>D&eacute;p th&uacute;-DHT107</p>', 'DHT107.png', 90000, '2019-05-23 23:01:53', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 15, 7),
(118, '<p>Sandal-sd101</p>', 'SD101.jpg', 90000, '2019-05-23 23:18:44', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(119, '<p>Sandal-sd102</p>', 'SD102.jpg', 90000, '2019-05-23 23:19:23', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(120, '<p>Sandal-103</p>', 'SD103.jpg', 90000, '2019-05-23 23:19:50', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 14, 7),
(121, '<p>Sandal-Sd104</p>', 'SD104.jpg', 90000, '2019-05-23 23:20:27', 19, 0, 1, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(122, '<p>Sandal-sd105</p>', 'SD105.jpg', 90000, '2019-05-23 23:21:22', 20, 0, 0, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(123, '<p>Sandal-SD107</p>', 'SD107.jpg', 90000, '2019-05-23 23:21:50', 19, 0, 1, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7),
(124, '<p>Sandal-SD106</p>', 'SD106.jpg', 90000, '2019-05-23 23:22:13', 19, 0, 2, '<p><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp;H&agrave;ng QC đẹp y h&igrave;nh</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://www.facebook.com/images/emoji.php/v9/f40/1/16/1f4a5.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline-block; font-size: 0px; width: 0px; font-family: inherit;\">????</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"> Bảo h&agrave;nh keo vĩnh viễn</span></p>', 0, 19, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT '0',
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `DienThoai`, `Email`, `BiXoa`, `MaLoaiTaiKhoan`) VALUES
(1, 'admin', 'admin', 'Admin', 'Đà Nẵng', '0933333333', 'thanhha@gmail.com', 0, 2),
(8, 'khuong', '123123123', 'Anh Khuong', '76 Thái Phiên, Quận Hải Châu, TP Đà Nẵng', '01627594223', 'khuong@gmail.com', 0, 1),
(9, 'linhdt', '123456', 'Linh', 'Hòa Khánh Nam, Liên Chiểu', '0975159183', 'dr.hoada@gmail.com', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Đặt hàng'),
(2, 'Đang giao hàng'),
(3, 'Thanh toán'),
(4, 'Hủy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`);

--
-- Chỉ mục cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
