-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2019 at 07:43 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('user01', '123456'),
('user02', '123456'),
('admin1', '123456'),
('admin2', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `maso` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `theloai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `khuvuc` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`maso`, `ten`, `diachi`, `anh`, `link`, `mota`, `theloai`, `khuvuc`) VALUES
('1', 'Bánh Ép Gia Di - Bà Triệu', '101 Bà Triệu - TP. Huế - TTHuế', './src/banhep.jpg', 'https://www.foody.vn/hue/banh-ep-gia-di-ba-trieu', 'Bánh ép Huế đặc biệt nóng hổi thơm ngon. Ngất ngây với dòng người vô quán. Quán rất dể tìm và rất đông luôn, không gian không sang chảnh kiểu như quán cho sinh viên nhưng rất thích vì ngon và giá sinh viên. Quán khá nhiều món chứ không phải chỉ bánh ép. Vì đông nên chờ khá lâu mới có bánh nhưng thông cảm được. Bánh ăn kèm dưa chua và tré. Quấn lại chắm mắm cắn một miếng mà dai dai của bánh, giòn giòn của dưa chua, đậm đà của tré và mắm hoà quyện ta nói nó ngon không cưỡng. Rất ngon hẹn gặp lại.', 'anvat', 'hue'),
('10', 'Cơm Gà Xối Mỡ', '71 Nguyễn Huệ, Tp. Huế, Huế', './src/comga.jpg', 'https://www.foody.vn/hue/com-ga-xoi-mo-nguyen-hue', 'Cơm gà rất ngon, một dĩa là 20k. Giá cả hợp lí. Chất lượng không chê vào đâu được. Quán này khách rất đông. Có hôm khoảng 7h mình tới khách đông quá không có chỗ ngồi.Nên phải mua mang vê. Phục vụ nhiệt tình chu đáo. Vị trí lại dễ tìm. Vì ngon nên thường xuyên bỏ bữa ở nhà để lên đây ăn lắm. Nói chung là rất ok.', 'buachinh', 'hue'),
('11', 'Cháo Gà&Vịt', '48 Trưng Nữ Vương, Quận Hải Châu, Đà Nẵng', './src/chaogavit.jpg', 'https://www.foody.vn/da-nang/quan-48-chao-ga-vit', 'Gà xé trộn thấy tháp gia vị, vừa miệng cà khá ngon. \r\nCơm ăn cùng cũng vậy nói chung hộp come quá ư là vừa ý luôn. \r\nShipper nhanh nhẹn, giao hàng đúng h, thân thiện.', 'buachinh', 'danang'),
('13', 'Mì Quảng Ếch Bếp Trang - Hà Bổng ', '10 Hà Bổng - Q.Sơn Trà - TP.Đà Nẵng', './src/myquang.jpg', 'https://www.foody.vn/da-nang/mi-quang-ech-bep-trang-ha-bong', 'Mì Bếp Trang đợt này mới mở thêm chi nhánh mới ở bên Hà Bổng này, không gian bên ngoài lẫn bên trong đều rất đẹp, mình ghé buổi tối nên nhìn đèn lồng lung linh cứ ngỡ ở Hội An thôi. Đi hai đứa nhưng muốn thử nhiều loại mì Quảng nên mình chọn combo mì ngũ vị, mẹt khá xinh, trình bày bắt mắt, mỗi tô đều đầy ắp mì và nhân luôn í. Mình thấy ăn vậy vừa thử được nhiều loại lại không bị ngán nên khá thích.', 'buachinh', 'danang'),
('14', 'Chè Hẽm', 'Số 1 Kiệt 29 Hùng Vương ', './src/kem.jpg', 'https://www.foody.vn/hue/che-hem', 'Nằm sâu trong góc hẽm nhỏ xưa ở trung tâm cố đô Huế, hàng chè được coi là niềm tự hào của người dân Huế mỗi khi có dịp đưa đón bạn bè, người thân bốn phương đến để thưởng thức. ', 'anvat', 'hue'),
('15', 'Tastii Healthy Food - Lê Độ', '152 Lê Độ - Phường Chính Gián - Quận Thanh Khê ', './src/tastii2.jpg', 'https://www.foody.vn/da-nang/tastii-healthy-food-le-do', 'Cơm gạo lứt ngon, trang trí bắt mắt. Có kèm theo trái cây tráng miệng nữa. Nhưng giá 42K/ hộp thì khá là mắc và không thể ăn hàng ngày được. Chỉ đợi Now giảm giá rồi ăn . Chủ quán nên xem lại giá, để mọi người có thể đặt ăn hàng ngày mà không cần chờ giảm giá.', 'buachinh', 'danang'),
('16', 'Hiền - Bánh Canh & Bún Mắm', '134 Huỳnh Thúc Kháng,  Quận Hải Châu, Đà Nẵng', './src/banhcanh.jpg', 'https://www.foody.vn/da-nang/banh-canh-ca-loc-hien-huynh-thuc-khang', 'Chiều chiều ghé quán húp tô cháo mà thấy quán có thêm bún mắm thịt bê nghe lạ lạ nên hội bạn chuyên sang ăn bún mắm hết kaka, bọn mình gọi bún mắm thịt bê thui 25k, và tai mui, nem chả và thịt đầu', 'buachinh', 'danang'),
('17', 'Bánh Canh', '144/27 Nguyễn Lương Bằng', './src/banhcanh.jpg', 'https://www.foody.vn/da-nang/banh-canh-ca-loc-hien-huynh-thuc-khang', 'Ngon', 'buachinh', 'danang'),
('18', 'Trà Sữa Gong Cha', '121 Nguyễn Huệ,  Tp. Huế, Huế', './src/trasuagongcha.jpg', 'https://www.foody.vn/hue/tra-sua-gong-cha-nguyen-hue', 'Thương hiệu nổi tiếng rồi nên chỉ muốn nói chất lượng tuyệt vời. Đúng là giá thành đắt đỏ so với sinh viên nhưng uống rất xứng đáng. Nhân viên phục vụ nhiệt tình, cách bài trí trong quán đẹp. Lần đầu tiên mình uống trà alisan kem sữa thấy cũng khá ngon, lần sau vào uống trà xanh kem sữa và bồ kết luôn em này,thêm trân châu trắng 10k mà cực nhiều luôn, ngon nữa. Bạn mình uống trà sữa trà xanh thấy vị cũng tuyệt luôn', 'douong', 'hue'),
('19', 'Green House Coffee', '40 Nguyễn Chí Diễu,  Tp. Huế, Huế', './src/coffee.jpg', 'https://www.foody.vn/hue/green-house-coffee', 'Quán không gian đẹp, thoáng mát, thân thiện với thiên nhiên, đồ uống thì khỏi phải bàn, chất lượng giá mềm mà lại cực kỳ nhiều :)', 'douong', 'hue'),
('2', 'Chè Xoan - Hàng Giấy ', '29 Hàng Giấy - Quận Hoàn Kiếm - Hà Nội', './src/chexoan.jpg', 'https://www.foody.vn/ha-noi/che-xoan-hang-giay', 'Quán nằm đoạn hàng giấy nhé thuộc khu phố cổ nên rất là trung tâm a. Ko gian quán khá là chật hẹp, có chỗ trong nhà nhưng nhỏ nhé, chủ yếu là ngồi bên ngoài', 'anvat', 'hanoi'),
('20', 'Unit 8 Cafe ', '08 Lạc Long Quân, P. Hòa Khánh Bắc, Quận Liên Chiểu, Đà Nẵng', './src/cafe.jpg', 'https://www.foody.vn/da-nang/unit-8-cafe', 'Quán này nằm ngay gần trường cao đẳng nên có rất nhiều sinh viên. \r\nView quán khá đẹp. Rộng rãi có 2 lầu. View lầu 2 thì hợp để các bạn nữa check in hơn :))) quán khá sạch sẽ. Chỗ giữ xe thoải mái. Thích nhất là quán không cho hút thuốc nên không có mùi hôi khó chịu. \r\nNhân viên lịch sự chu đáo. \r\nĐồ uống khá ngon. Mình hay uống các loại nước ép. Vì khá ngon và tươi. Không quá ngọt. Giá cả cũng hợp lí nữa. Nước ép khoảng 17k. Đắt nhất là các loại đã xay. Cũng ngon.', 'douong', 'danang'),
('21', 'Macada Coffe', '305 Nguyễn Khang, P. Yên Hòa,  Quận Cầu Giấy, Hà Nội', './src/macada.jpg', 'https://www.foody.vn/ha-noi/macada-coffee', 'Bingsu thanh, mát, decor chinh chinh, lại có mấy con gấu bé bé sống ảo thôi rồi lun ^^ \r\nTầng 1 thì ngoài con gấu khủng lồ dâu tây và con minion ra thì cũng k còn gì, ánh sáng ấm áp êm dịu, nvien niềm nợ nhiệt tình, còn có bác bảo vệ vui tính nữa. Lên tầng 2 thì decor lung linh lunnnn~~ Có cái cây trắng thêm đèn lên thì best sống ảo luôn ạ ☺️☺️ view nhìn ra sông tô lịch huỳn ảo :)) có mấy đầu gấu bông rất ngộ nghĩnh đáng eo', 'douong', 'hanoi'),
('22', 'Mì Cao Lầu', '51 Hai Bà Trưng, Tp. Huế, Huế', './src/caolau.jpg', 'https://www.foody.vn/hue/tiem-an-a-thoi-cao-lau-mi', 'Về Cao Lầu Mì nước ngọt thanh, sợi mì chắc, ăn kèm với xá xíu và hoành thánh, với giá 30k mình cảm thấy tô mì này rất là ok.\r\nY Phủ Hoành Thánh là món hoành thánh chiên giòn cũng khá ngon, với nước lèo có xá xíu, giá và rau cải thìa.', 'buachinh', 'hue'),
('23', 'Cháo sườn 2', '14 Đồng Xuân,  Quận Hoàn Kiếm, Hà Nội', './src/chaosuon.jpg', 'https://www.foody.vn/ha-noi/chao-suon-dong-xuan', 'Một bát đầy đủ gồm có 3, 4 miếng sườn có quẩy và ruốc nữa. Sườn ninh mềm cháo cũng nấu tới, nêm vừa miệng.\r\nAi không thích ăn ruốc hay quẩy hoặc sườn thì có thể bảo nhân viên ở đây. Và giá cũng khác nhau rồi.\r\nBát đầy đủ 30k nhé.', 'buachinh', 'hanoi'),
('24', 'Hồng Diên - Bánh Căn & Bánh Xèo', '269 Nguyễn Văn Lượng, P. 10,  Quận Gò Vấp, TP. HCM', './src/banhcan.jpg', 'https://www.foody.vn/ho-chi-minh/banh-can-phan-van-tri', 'Bánh dày, nóng hổi ăn ngày mưa rất ngon. \r\nCó 3 loại nước chấm là mắm, nước mắm chua ngọt và tương đậu phộng. \r\nMột phần thập cẩm 5 cái 3 mực 2 tôm giá 35k. \r\nRau nhiều và sạch.', 'buachinh', 'hcm'),
('3', 'Cơm Niêu D2 ', '48 Đường D2,  Quận Bình Thạnh, TP. HCM', './src/comnieu.jpg', 'https://www.foody.vn/ho-chi-minh/com-nieu', 'Quán nằm trên con đường sầm uất D2 của quận Bình Thạnh, nếu đi từ hướng Ung Văn Khiêm thì quẹo phải qua D2, quán sẽ nằm bên trái đường đối diện Uncle Tea. Mặt tiền quán khá nhỏ nếu không có chủ ý tìm kiếm sẽ rất dễ bị lướt qua.\r\n\r\nKhông gian quán bên trong khá nhỏ sức chứa tầm 20 người, không biết quán có không gian trên lầu hay không, đến quán tầm 18h, quán bật đèn vàng xen kẽ đèn trắng lại có cách bài trí mang nét cổ xưa với những chiếc bàn gỗ đen kiểu củ, đúng ra với cách thiết kế này quán sẽ', 'buachinh', 'hcm'),
('4', 'Royal Tea - 359 Hoàng Diệu ', '369 - 371 Hoàng Diệu - Quận Hải Châu -  Đà Nẵng', './src/royaltea.jpg', 'https://www.foody.vn/da-nang/royal-tea-369-hoang-dieu/goi-mon', 'Giữa 1 rừng Royal mọc lên như nấm, mình vẫn thích uống quán này. Chất lượng ok nhất, uống 2 lần ở đây thấy rất đáng đồng tiền. Ghé quán khi có chương trình giảm 30%. Trà sữa kem cheese uống ở đây lợi hơn, vì có lớp kem cheese phía trên; cũng na ná như trà sữa cake cream của các quán khác thôi à nhưng uống ở đây ngon. Kem cheese thì đặc trưng của Royal quá rồi, lỏng vừa phải, béo mặn, uống riết ko thấy ngán ', 'douong', 'danang'),
('5', 'Phở Thìn - Phố Nhỏ ', '170 - Nguyễn Đình Chiểu - P6 - Q3 - TP.HCM', './src/phothin.jpg', 'https://www.foody.vn/ho-chi-minh/pho-thin', 'Quán có không gian khá rộng, nhưng có vẻ hơi cũ kỹ. Mình order phở xào giá 75k/ dĩa khá to. Mùi vị nêm nếm vừa miệng nhưng thịt bò xào hơi dai. Nước sấu có vị gừng và hơi ngọt chút so với khẩu vị ', 'anvat', 'hcm'),
('6', 'Kem Xông Khói', '96 Bà Triệu, Tp. Huế, Huế', './src/kem.jpg', 'https://www.foody.vn/hue/kem-xong-khoi-to-to-hung-vuong', 'Quán có vị trí khá dễ tìm, không gian ổn. Vì mình đến vào giờ mà quán còn rảnh nên khá là thoải mái, không biết lúc đông thì như thế nào :)\r\nĐồ ăn ngon và đậm đà, món gà cay phomai có vị kimchi rất đặc trưng.\r\nKhi mình gọi trà đào, vị ngon ngọt vừa phải, thơm và bất ngờ là lúc tan hết đá rồi vẫn giữ được độ ngọt, không bị lạc.\r\nGiá cả ở mức trung bình, không rẻ cũng không đắt, nhưng so với đồ ăn thức uống và cách phục vụ thì rất ok ;)', 'anvat', 'hue'),
('7', 'Chè Ngọc Bích', '88 Nguyễn Lương Bằng, Quận Liên Chiểu, Đà Nẵng', './src/chengocbich.jpg', 'https://www.foody.vn/da-nang/che-ngoc-bich-nguyen-luong-bang', 'Quán lúc nào cũng đông khách, menu đa dạng từ các món ngọt đến món mặn, giá cả cũng hợp lý, phục vụ nhanh không phải chờ đợi lâu, mình ăn ở quán cũng khá nhiều lần rồi. Tuy nhiên, chè của quán đối với mình thì vị khá ngọt, phải xin thêm ly đá để bỏ thêm vào', 'anvat', 'danang'),
('8', 'Bánh Tráng Cuốn', '40 Đường Số 11, Quận 4, TP. HCM', './src/banhcuon.jpg', 'https://www.foody.vn/ho-chi-minh/ba-bac-banh-trang-cuon-tron', ' Bánh tráng cuốn ăn với sốt siêu ngon có bơ béo béo thêm chút satế cay cay là tuyệt vời. Bánh tráng nướng hình như hơi cứng chắc tại mình ăn mẻ cũ nướng sẵn nên có vẻ cứng hơn. Có bánh tráng trộn với cá viên chiên mình thích nhất mà vội ăn chưa kịp chụp. Bánh tráng trộn có nhiều topping vô cùng, cá viên size to ăn 1 dĩa là no luôn. Phục vụ thân thiện, ra món nhanh.', 'anvat', 'hcm'),
('9', 'Caramen', '431B Bạch Mai,  Quận Hai Bà Trưng, Hà Nội', './src/cararmen.jpg', 'https://www.foody.vn/ha-noi/caramello-caramen-do-an-vat', 'Chè xoài thì có tầng thạch xoài tươi ở bên dưới và bên trên là nước cốt dừa. Món này mình ăn cũng thấy khá ngon, kiểu mềm mềm thơm thơm nhưng hơi bị đơn điệu, kiểu mình thích có tí trân châu nữa thì ngon ấy. Caramen trân châu cốt dừa thì có cả trân đen và trân châu trắng to nhân dừa hay ăn ở mấy quán chè ấy, caramen cũng khá ổn, mềm mịn và thơm. Cốt dừa ở đây không mịn lắm nhưng nói chung tổng thể ăn vẫn khá ok và sạch sẽ nữa', 'anvat', 'hanoi'),
('A', 'Sura Sushi', '13 Lô 2C Trung Hòa,  Quận Cầu Giấy, Hà Nội', './src/sushi.jpg', 'https://www.foody.vn/ha-noi/sura-sushi', 'Không gian quán nhỏ, nhưng bài trí gọn gàng đậm chất nhật bản\r\nĐồ ăn cũng ổn. Sushi cảm giác không được tươi cho lắm. Cơm cuộn ngon, soup ngon ah\r\nGiá cả hợp lý so với các quán nhật khác, thái độ phục vụ oke, khá thân thiện và nhiệt tình', 'buachinh', 'hanoi'),
('HCM01', ' Cơm Trưa Văn Phòng - Su Ăn Ngon - Now Station Trung Yên', '36 Dãy Lô 2A, KĐT Mới Trung Yên, Quận Cầu Giấy, Hà Nội', './src/comtruavp.jpg', 'https://www.foody.vn/ha-noi/com-trua-van-phong-su-an-ngon-now-station-trung-yen', 'Chất lượng thì khoai cắt nhỏ đều chiên vừa tới ăn khá ngon, đồ uống thì cũng được, đóng gói đẹp đẽ sạch sẽ. Giá cả trung bình.', 'buachinh', 'danang'),
('HUE01', 'Pizza Karoo ', '31B Võ Thị Sáu, Tp. Huế, Huế', './src/pizza.jpg', 'https://www.foody.vn/hue/pizza-karoo', 'Quán nằm trong khu phố Tây, khuyến mãi combo 55k 1 pizza 1 nước ngọt vào cuối tuần nên mình đi ăn thử. Nhân viên phục vụ nhiệt tình, nhanh nhẹn. Pizza khá ngon, lớp đế xốp, dày, phần nhân bánh ngon, đầy đủ mặc dù hương vị khá nhạt so với khẩu vị của mình. Nhưng giá 55k cho chất lượng này cộng thêm mặt bằng phố Tây thì quá ư là ổn, rất đáng thử', 'anvat', 'hue'),
('PHO63', 'Phở Bắc 63', '203 Đống Đa, Quận Hải Châu, Đà Nẵng', './src/63pho.jpg', 'https://www.foody.vn/da-nang/pho-bac-63', 'Tối tối se lạnh thèm làm bát phở nóng. Bình thường thì mình hay ăn bên Hà Thành mà tự nhiên lâu lâu nhớ ra quán phở bắc này. Ăn lâu quá rồi ko còn nhớ hương vị nhưng ai cũng khen ngon nên kệ, cứ đến ăn.\r\nGía bình thường, 35, 40k/ tô ngập thịt thà, nạm gàu.\r\n', 'buachinh', 'danang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`maso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
