-- Các kiểu dữ liệu hay dùng

-- int: kiểu số nguyên, tập hợp N. Ví dụ: -9, 8, -6, 3, 10
-- float: kiểu số thực, tập hợp R. Ví dụ: -0.5, 0.9, 10, 9.6
-- char: kiểu ký tự. Không viết tiếng Việt được. Bộ nhớ cấp phát cứng. Ví dụ: A, a, B, b, f, k, K. char(10) -> 10 ô nhớ này không ai được động vào. Luôn giữ 10 ô nhớ.
-- varchar: Kiểu ký tự. Không viết tiếng Việt được. Bộ nhớ cấp phát động. varchar(10) -> 10 ô nhớ này chỉ được lấy khi có dữ liệu nằm bên trong. 'Kteam' -> chỉ dùng 5 ô nhớ.
-- nchar: kiểu ký tự. Có thể lưu tiếng Việt.
-- nvarchar: Kiểu ký tự cấp phát động có thể lưu tiếng Việt.
-- date: lưu trữ ngày, tháng, năm, giờ.
-- time: lưu trữ giờ, phút, giây...
-- but: lưu giá trị 0 và 1
-- text: lưu văn bản lớn
-- ntext: lưu văn bản lớn có tiếng Việt

CREATE TABLE Test
(
	Doc NVARCHAR(50), --  Khai báo trường Doc kiểu nvarchar cấp phát động 50 ô nhớ
	MaSV CHAR(10),	-- Khai báo trường MaSV kiểu char cấp phát cứng 10 ơ nhớ
	Birthday DATE,
	Sex BIT, -- lưu giá trị 0 hoặc 1
)
GO

-- MaSV lưu 10 ô nhớ. MaSV = '1234567890Kteam' -> kết quả lưu trữ sẽ là:
-- 1. '1234567890'
-- 2. '67890Kteam'
-- 3. Câu trả lời của bạn