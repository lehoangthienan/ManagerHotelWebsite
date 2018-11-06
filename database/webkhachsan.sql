-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 10, 2018 lúc 05:18 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webkhachsan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datphong`
--

CREATE TABLE `datphong` (
  `MaKH` int(11) NOT NULL,
  `MaP` varchar(20) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `NgayDen` date NOT NULL,
  `NgayDi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `datphong`
--

INSERT INTO `datphong` (`MaKH`, `MaP`, `HoTen`, `DiaChi`, `SDT`, `Email`, `NgayDen`, `NgayDi`) VALUES
(1, 'P1', 'Đặng Việt Dũng - Loan', 'KTX khu B', 15520133, 'dungviet@gmail.com', '2018-04-05', '2018-04-21'),
(2, 'P2', 'Lê Giô Na - Dũng', 'Phạm Văn Đồng , Thủ Đức', 15520501, 'nale@gmail.com', '2018-04-26', '2018-04-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachsan`
--

CREATE TABLE `khachsan` (
  `MaKS` varchar(20) NOT NULL,
  `TenKS` varchar(200) NOT NULL,
  `DiaChi` varchar(300) NOT NULL,
  `SDT` int(11) NOT NULL,
  `SoSao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachsan`
--

INSERT INTO `khachsan` (`MaKS`, `TenKS`, `DiaChi`, `SDT`, `SoSao`) VALUES
('Ks1', 'Khách Sạn Việt Dũng', '69 ,Lý Thường Kiệt , p3 , Quận Tân Bình , HCM', 123456789, 4),
('Ks2', 'Khách Sạn Giô Na', '99 ,Nguyễn Chí Thanh , q9 ,Quận 5 , HCM', 987654321, 5),
('Ks3', 'Khách Sạn', 'Việt nam', 1234567, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `MaP` varchar(20) NOT NULL,
  `TenP` varchar(200) NOT NULL,
  `LoaiP` varchar(100) NOT NULL,
  `MaKS` varchar(20) NOT NULL,
  `Gia` bigint(255) NOT NULL,
  `ThongTinCT` varchar(1000) NOT NULL,
  `BuaSang` int(11) NOT NULL,
  `Wifi` int(11) NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `ChinhSachHuyPhong` int(11) NOT NULL,
  `Giuong` varchar(10) NOT NULL,
  `urlAnh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`MaP`, `TenP`, `LoaiP`, `MaKS`, `Gia`, `ThongTinCT`, `BuaSang`, `Wifi`, `GiamGia`, `ChinhSachHuyPhong`, `Giuong`, `urlAnh`) VALUES
('P1', 'Angle', 'Vip', 'Ks1', 1059500, 'Trung tướng Bùi Văn Thành: \'Không hạ chuẩn phòng cháy chữa cháy\'', 1, 1, 1, 1, 'Đơn', 'https://cdn3.ivivu.com/2014/01/SUPER-DELUXE2.jpg'),
('P10', 'Superior', 'V.I.P.X.X', 'Ks2', 999999, 'Còn những nhà xây sau khi có Luật phòng cháy chữa cháy mà không đủ điều kiện an toàn cháy nổ thì trách nhiệm thuộc về các chủ đầu tư, ban quản lý tòa nhà. Chủ đầu tư phải khắc phục trong thời hạn nhất định, nếu không khắc phục được thì có các chế tài xử lý triệt để. \r\n\r\nChúng tôi cũng khẳng định không hạ chuẩn phòng cháy chữa cháy. Nhưng đối với công trình xây dựng trước khi có luật không có thang thoát hiểm, thì không xây mới được nên đầu tư phải có lộ trình. Chúng tôi sẽ có giải pháp và mong mọi người, người dân cùng đồng hành.\r\n\r\nBà con có thể yên tâm sống trong các tòa nhà chung cư nếu tòa nhà đó đủ điều kiện an toàn. Nhưng một yếu tố rất quyết định là ý thức của mọi người. Với kinh nghiệm 30 năm làm công tác phòng cháy chữa cháy, tôi khẳng định, nếu mọi người cùng hợp tác thì chúng ta có thể ngăn chặn sự gia tăng các vụ cháy. Còn để một cơ quan phòng cháy chữa cháy, một mình chủ đầu tư thì không làm được. ', 1, 1, 0, 0, 'Đôi', 'https://du-lich.chudu24.com/f/m/1604/05/khach-san-havana-nha-trang.jpg'),
('P2', 'Dũng Loan', 'Supper Vip', 'Ks1', 1230000, 'Chiều 4/4, Trung tướng Bùi Văn Thành - Thứ trưởng Bộ Công an trả lời báo chí về tình trạng cháy nổ chung cư xảy ra gần đây.\r\n\r\n- Lực lượng phòng cháy chữa cháy thường kiểm tra mức độ an toàn của các chung cư như thế nào, thưa ông?\r\n\r\n- Theo Luật phòng cháy chữa cháy, việc kiểm tra an toàn được tiến hành thường xuyên, định kỳ, đột xuất. Cảnh sát có trách nhiệm kiểm tra hàng quý với các cơ sở nguy hiểm về cháy nổ và 6 tháng hoặc một năm đối với các trường hợp còn lại. Chúng tôi cũng kiểm tra đột xuất khi có dấu hiệu nguy hiểm, mất an toàn về phòng cháy chữa cháy hoặc vi phạm quy định về an toàn phòng cháy chữa cháy, khi có yêu cầu bảo vệ đặc biệt.', 1, 1, 0, 0, 'Đơn', 'https://media-cdn.tripadvisor.com/media/photo-s/0a/18/e9/63/nh-phong-khach-s-n.jpg'),
('P3', 'Sexy Lady', 'Super star', 'Ks1', 951750, 'Theo chỉ thị 20 của Thủ tướng, mỗi năm cảnh sát chỉ được kiểm tra một lần, còn 3 lần là các ban quản trị toà nhà tự kiểm tra. Chúng tôi đang báo cáo với Chính phủ để yêu cầu các tổ chức, cá nhân tiếp tục tự kiểm tra, nhưng phải chịu trách nhiệm bảo đảm các hệ thống kỹ thuật hoạt động bình thường.', 1, 1, 0, 0, 'Đôi', 'https://s3-ap-southeast-1.amazonaws.com/viettrip/Hotels/832/111014_17122013_room-1.jpg'),
('P4', 'Lovely', 'Romantic\r\n', 'Ks1', 1500000, '- Vụ cháy tòa nhà Carina ở TP HCM gây hậu quả nặng nề. Nếu hệ thống báo cháy, chữa cháy của toà nhà này tốt thì sự cố không gây thiệt hại như vậy. Ông nghĩ sao?\r\n\r\n- Có một thực tế là lúc nghiệm thu hệ thống phòng cháy chữa cháy của toà nhà tốt, nhưng quá trình hoạt động thì hệ thống điện tử xuống cấp, không hoạt động hoặc báo giả làm người dân cố tình bịt, che nó đi. Ngoài ra, các hệ thống chữa cháy tự động và bán tự động có, nhưng chất lượng tại thời điểm cháy là không tốt, như vụ cháy ở toà nhà Carina.', 1, 1, 0, 0, 'Đôi', 'http://www.khachsanthaoanh.com/thaoanh-images/news/photo/phong-tang32.jpg'),
('P5', 'Super Man', 'DC', 'Ks1', 1400000, 'Nếu ban quản lý toà nhà kiểm tra thường xuyên, phát hiện xuống cấp và kịp thời sửa chữa thì khi cháy sẽ có chuông kêu, đèn nháy, còi hú. Phương tiện chữa cháy tự động bằng nước ở nhiệt độ 68 độ sẽ bung ra làm mát, hạn chế lửa lan rộng. Khi đó, Ban quản lý tòa nhà chỉ cần sử dụng phương tiện chữa cháy ban đầu bằng bột, bằng khí thì tôi khẳng định rằng đám cháy sẽ tắt. ', 1, 1, 0, 0, 'Đơn', 'http://www.hanahotel.vn/hanahotel-images/news/photo/RSM1O5T6X_HaNa-Suite1.jpg'),
('P6', 'Bat Man', 'DC', 'Ks2', 1582000, 'Nhưng do việc này không có hoặc có nhưng thiếu trách nhiệm nên đám cháy ở tầng hầm Carina đã bùng lên. Đến lúc xe nổ, xăng chảy ra dẫn đến cháy lan, cháy lớn. Bản chất của phòng cháy chữa cháy là 4 tại chỗ gồm người dân, ban quản trị, phương tiện và công nghệ. Nếu bốn yếu tố này tốt thì đám cháy sẽ không hình thành, phát triển, trừ những đám cháy chất lỏng như cháy xăng dầu với diện tích lớn.', 1, 1, 0, 0, 'Đơn', 'http://img.infonet.vn/w800/Uploaded/nguyenthuy/2016_05_24/dat_phong_gia_re3_1.jpg'),
('P7', 'CLassical', 'Normal', 'Ks2', 1520000, 'Tất cả vấn đề liên quan đến cháy toà nhà Carina đang được làm rõ.\r\n\r\n- Có chung cư vừa kiểm tra thì xảy ra cháy hoặc có đã cảnh báo vi phạm nhiều năm nhưng không khắc phục dẫn đến sự cố. Những trường hợp này lực lượng chức năng xử lý như thế nào?', 1, 1, 0, 0, 'Đơn', 'https://du-lich.chudu24.com/f/m/1704/10/1-1.jpg'),
('P8', 'Venus', 'Special', 'Ks2', 1800000, '- Khi có Luật phòng cháy chữa cháy, những nơi tập trung đông người, đặc biệt là nhà cao tầng, siêu cao tầng, cơ quan chức năng phải thẩm duyệt các giải pháp phòng cháy chữa cháy, sau đó toà nhà mới được nghiệm thu, bàn giao đưa vào sử dụng. Tôi khẳng định, toà nhà nào đã được nghiệm thu thì hệ thống phòng cháy chữa cháy đủ điều kiện, nhưng hiệu quả hoạt động còn phụ thuộc quá trình quản trị. Khi vận hành mà không kiểm tra, bảo trì thì sẽ có trục trặc. Lúc này, trách nhiệm thuộc về Ban quản lý tòa nhà.\r\n\r\nChúng tôi từng xử lý hình sự vụ cháy quán Karaoke ở 68 Trần Thái Tông (Hà Nội), truy tố chủ quán. Hiện tại, vụ cháy Carina đang khởi tố vụ án, trước hết xử lý hành chính, sau đó điều tra, nếu đủ các yếu tố vi phạm pháp luật thì khởi tố bị can. ', 1, 1, 0, 0, 'Đôi', 'http://www.hotel84.com/hotel84-images/product/photo/hoa-phong-hotel13.jpg'),
('P9', 'Iron Man', 'Mavel', 'Ks2', 2234656, 'Hà Nội có 79 tòa nhà vi phạm phòng cháy chữa cháy nhưng mới có 50 tòa khắc phục. Trong 29 tòa còn lại, 15 tòa không thể khắc phục. Những trường hợp này xin hạ chuẩn phòng cháy chữa cháy thì sẽ được xử lý thế nào? \r\n\r\n- Chúng tôi đang thống kê để báo cáo Thủ tướng thực trạng, năng lực phòng cháy chữa cháy của các chung cư cả nước.\r\n\r\nSau khi lên danh sách \"điểm đen\", chúng tôi sẽ đề xuất với những nhà xây trước khi có Luật phòng cháy chữa cháy thì giao trách nhiệm xử lý cho UBND cấp tỉnh, tất nhiên lực lượng phòng cháy chữa cháy là nòng cốt. Nếu số lượng lớn, chúng tôi sẽ báo cáo Thủ tướng thực trạng và quy mô mất an toàn, đề xuất giải pháp căn cơ để Chính phủ vào cuộc. Các toà nhà không đủ điều kiện và không thể khắc phục của Hà Nội nằm trong nhóm này.', 1, 1, 0, 0, 'Đôi', 'https://du-lich.chudu24.com/f/m/1608/03/khach-san-cong-doan-ha-long-1.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`MaKH`),
  ADD KEY `DP_P` (`MaP`);

--
-- Chỉ mục cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`MaKS`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaP`),
  ADD KEY `KS_P` (`MaKS`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD CONSTRAINT `DP_P` FOREIGN KEY (`MaP`) REFERENCES `phong` (`MaP`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `KS_P` FOREIGN KEY (`MaKS`) REFERENCES `khachsan` (`MaKS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
