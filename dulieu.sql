-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 27, 2024 lúc 10:05 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dulieu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
('AD01', 'admin1', 'admin1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `IDNV` varchar(10) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `IDPB` varchar(10) NOT NULL,
  `Diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`IDNV`, `Hoten`, `IDPB`, `Diachi`) VALUES
('NV01', 'Tran Van A', 'PB01', '54 Nguyen Luong Bang, Lien Chieu, DN'),
('NV02', 'Le Van B', 'PB02', '34 Le Van Thu, Son Tra, DN'),
('NV03', 'Nguyen Thi C', 'PB02', '30 Le Duan, Hai Chau, DN'),
('NV04', 'Ngo Thi D', 'PB03', '123 Huynh Ngoc Hue, Thanh Khe, DN'),
('NV05', 'Nguyen Minh E', 'PB03', '321 Yen Bai, Hai Chau, DN'),
('NV06', 'Ho Van F', 'PB03', '300 Hung Vuong, Hai Chau, DN'),
('NV07', 'Tran Thi G', 'PB01', '76 Le Loi, Hai Chau, DN'),
('NV08', 'Le Van H', 'PB02', '89 Nguyen Van Linh, Son Tra, DN'),
('NV09', 'Nguyen Van I', 'PB01', '15 Phan Thanh, Hai Chau, DN'),
('NV10', 'Pham Thi K', 'PB03', '45 Tran Hung Dao, Thanh Khe, DN'),
('NV11', 'Hoang Van L', 'PB02', '27 Nguyen Van Cu, Hai Chau, DN'),
('NV12', 'Nguyen Thi M', 'PB01', '19 Le Dinh Duong, Thanh Khe, DN'),
('NV13', 'Tran Van N', 'PB03', '56 Phan Chu Trinh, Hai Chau, DN'),
('NV14', 'Le Thi O', 'PB02', '88 Hoang Dieu, Son Tra, DN'),
('NV15', 'Phan Van P', 'PB01', '67 Tran Phu, Hai Chau, DN'),
('NV16', 'Truong Thi Q', 'PB03', '10 Le Loi, Thanh Khe, DN'),
('NV17', 'Nguyen Van R', 'PB02', '22 Bach Dang, Hai Chau, DN'),
('NV18', 'Le Thi S', 'PB01', '123 Le Duan, Thanh Khe, DN'),
('NV19', 'Hoang Van T', 'PB03', '99 Tran Phu, Son Tra, DN'),
('NV20', 'Pham Van U', 'PB02', '55 Nguyen Tat Thanh, Hai Chau, DN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `IDPB` varchar(10) NOT NULL,
  `Tenpb` varchar(50) NOT NULL,
  `Mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phongban`
--

INSERT INTO `phongban` (`IDPB`, `Tenpb`, `Mota`) VALUES
('PB01', 'Phong ban 01', 'Day la phong ban 01'),
('PB02', 'Phong ban 02', 'Day la phong ban 02'),
('PB03', 'Phong ban 03', 'Day la phong ban 03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`IDNV`),
  ADD KEY `fk_nhanvien_phongban` (`IDPB`);

--
-- Chỉ mục cho bảng `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`IDPB`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_phongban` FOREIGN KEY (`IDPB`) REFERENCES `phongban` (`IDPB`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
