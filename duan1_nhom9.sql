-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 02, 2024 lúc 03:32 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1_nhom9`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `mabl` int NOT NULL,
  `makh` int NOT NULL,
  `masp` int NOT NULL,
  `noidung` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ngaygui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`mabl`, `makh`, `masp`, `noidung`, `ngaygui`) VALUES
(3, 2, 58, 'sản phẩm chất lượng', '2023-12-05 10:22:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` int NOT NULL,
  `masp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `masp`) VALUES
(13, 58);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int NOT NULL,
  `tendm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soluongsp` int NOT NULL,
  `thutu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `soluongsp`, `thutu`) VALUES
(1, 'Áo sơ mi nam', 125, 1),
(2, 'Áo vest nam', 95, 2),
(3, 'Áo khoác nam', 100, 3),
(20, 'Áo phông nam', 150, 4),
(21, 'Quần âu nam', 86, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int NOT NULL,
  `makh` int NOT NULL,
  `ngaydathang` date NOT NULL,
  `tongtien` int NOT NULL,
  `ghichu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trangthai` set('gio-hang','chuan-bi-don-hang','dang-giao-hang','da-giao') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `makh`, `ngaydathang`, `tongtien`, `ghichu`, `trangthai`) VALUES
(10, 2, '2023-12-04', 950, 'awfawfawf', 'chuan-bi-don-hang'),
(11, 2, '2023-12-04', 400, 'ffas', 'chuan-bi-don-hang'),
(12, 1, '2023-12-05', 0, 'text', 'gio-hang'),
(13, 2, '2023-12-05', 0, 'text', 'gio-hang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int NOT NULL,
  `tensp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dongia` int NOT NULL,
  `khuyenmai` int NOT NULL,
  `soluong` int NOT NULL,
  `ngaytao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `anh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soluotxem` int NOT NULL,
  `hoatdong` int NOT NULL,
  `madm` int NOT NULL,
  `mabl` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `dongia`, `khuyenmai`, `soluong`, `ngaytao`, `anh`, `mota`, `soluotxem`, `hoatdong`, `madm`, `mabl`) VALUES
(11, 'Áo thun nữ phom rộng màu kem', 555, 450, 60, '2023-11-23 10:40:45', 'anhnu8.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 2, 0, 2, 0),
(12, 'Quần short caro nâu đen nữ lưng cao', 755, 550, 242, '2023-11-23 10:41:54', 'anhnu9.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 6, 0, 2, 0),
(13, 'Quần short nữ màu đen lưng cao', 950, 750, 222, '2023-11-23 10:42:45', 'anhnu10.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 7, 0, 2, 0),
(21, 'Đầm ôm công sở nền đen hoạ tiết hoa', 555, 222, 100, '2023-11-23 16:12:59', 'anhnu6.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 22, 0, 2, 0),
(27, 'Áo sơ mi thun hoạ tiết hoa lavender nhún ngực', 900, 600, 70, '2023-11-23 16:44:34', 'anhnu7.webp', '', 11, 0, 2, 0),
(32, 'Đầm xòe công sở cổ sơ mi họa tiết caro', 750, 550, 111, '2023-11-24 11:11:57', 'anhnu4.webp', '', 66, 0, 2, 0),
(33, 'Đầm xòe tafta dự tiệc cổ V cách điệu', 600, 500, 222, '2023-11-25 21:45:50', 'anhnu2.webp', '', 0, 0, 2, 0),
(34, 'Đầm xòe xếp ly tay hến cổ xoắn', 800, 600, 23, '2023-11-26 21:37:45', 'anhnu1.webp', 'chat luong', 0, 0, 2, 0),
(43, 'Áo Khoác Không Nón Vải Denim', 750, 500, 100, '2023-11-30 15:10:11', 'anhnam1.jpg', '', 0, 0, 3, 0),
(44, 'Áo Khoác Không Nón Vải Dù', 550, 500, 100, '2023-11-30 15:15:07', 'anhnam2.jpg', '', 0, 0, 3, 0),
(45, 'Áo Khoác Không Nón Vải Denim', 900, 700, 100, '2023-11-30 15:16:19', 'anhnam3.jpg', '', 0, 0, 3, 0),
(46, 'Áo Khoác Có Nón Vải Dù Mỏng Nhẹ', 760, 650, 100, '2023-11-30 15:17:20', 'anhnam4.jpg', '', 0, 0, 3, 0),
(47, 'Áo Khoác Có Nón Vải Thun Giữ Ấm', 525, 500, 50, '2023-11-30 15:18:25', 'anhnam5.jpg', '', 0, 0, 3, 0),
(48, 'Áo Khoác Có Nón Vải Dù Trượt Nước', 567, 240, 67, '2023-11-30 15:19:31', 'anhnam6.jpg', '', 0, 0, 3, 0),
(49, 'Áo Khoác Không Nón Vải Thun Giữ Ấm ', 540, 450, 424, '2023-11-30 15:20:37', 'anhnam7.jpg', '', 0, 0, 3, 0),
(50, 'Áo Khoác Không Nón Vải Dù Chống Nắng', 350, 300, 45, '2023-11-30 15:30:08', 'anhnam8.jpg', '', 0, 0, 3, 0),
(52, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm H', 500, 400, 23, '2023-11-30 15:32:22', 'anhthunnam2.jpg', '', 0, 0, 1, 0),
(53, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 4 Chiều Co Giã', 600, 550, 45, '2023-11-30 15:33:25', 'anhthunnam3.jpg', '', 0, 0, 1, 0),
(54, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều', 700, 400, 36, '2023-11-30 15:34:12', 'anhthunnam4.jpg', '', 0, 0, 1, 0),
(55, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 4 Chiều Co Giã', 650, 450, 23, '2023-11-30 15:34:56', 'anhthunnam5.jpg', '', 0, 0, 1, 0),
(56, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 4 Chiều Co Giã', 450, 350, 47, '2023-11-30 15:35:52', 'anhthunnam6.jpg', '', 0, 0, 1, 0),
(57, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm H', 789, 500, 23, '2023-11-30 15:37:17', 'anhthunnam7.jpg', '', 0, 0, 1, 0),
(58, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm H', 457, 400, 232, '2023-11-30 15:38:02', 'aothunnam9.png', '', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `makh` int NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `matkhau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `anh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quyen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `ngaysinh` date NOT NULL,
  `sdt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hoatdong` tinyint(1) NOT NULL,
  `mabl` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`makh`, `hoten`, `matkhau`, `email`, `diachi`, `anh`, `quyen`, `ngaysinh`, `sdt`, `hoatdong`, `mabl`) VALUES
(1, 'Quách Việt Dương', '123456', 'duongquach@gmail.com', 'Hà Nội', 'https://png.pngtree.com/thumb_back/fh260/background/20210908/pngtree-mens-emoji-pack-crazy-emoticon-portraits-work-stressed-man-portrait-photography-image_821554.jpg', 'admin', '2005-07-22', '0987654321', 0, 0),
(2, 'Dao Anh Dung', '8386', 'daodung@gmail.com', 'Hà Nội', 'https://cdnphoto.dantri.com.vn/2U7_Bb-s9lanrzx_ghHgx3qrVrs=/thumb_w/990/2021/07/26/nam-sinh-ha-noi-dat-95-diem-van-dien-trai-nhu-dien-vien-dien-anhdocx-1627297592508.jpeg', 'user', '2005-11-20', '03842562155', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabl`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahd`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `madm` (`madm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`makh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabl` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `makh` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `taikhoan` (`makh`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmuc` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
