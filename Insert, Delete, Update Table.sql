
CREATE TABLE Test
(
	MaSo INT,
	Ten NVARCHAR(10),
	NgaySinh DATE,
	Nam BIT,
	DiaChi CHAR(20),
	TienLuong FLOAT
)
GO

-- thêm dữ liệu
-- Kiểu số -> số bình thường
-- Kiểu ký tự hoặc ngày cần để trong cặp nháy đơn
-- Nếu là unicode thì cần có N phía trước cặp nháy đơn N''
-- insert dữ liệu theo thứ tự của bảng
INSERT dbo.Test
VALUES  ( 102, -- MaSo - int
          N'Trần' , -- Ten - nvarchar(10)
          '19940419' , -- NgaySinh - date yyyyMMdd
          0 , -- Nam - bit - true
          'Địa chỉ nè' , -- DiaChi - char(20) - sẽ lỗi
          10000  -- TienLuong - float
        )

-- Inset dữ liệu với trường mong muốn
INSERT dbo.Test
        ( MaSo ,
          Ten ,
          NgaySinh ,
          DiaChi ,
          TienLuong
        )
VALUES  ( 0 , -- MaSo - int
          N'' , -- Ten - nvarchar(10)
          GETDATE() , -- NgaySinh - date
          '' , -- DiaChi - char(20)
          0.0  -- TienLuong - float
        )
        
-- xóa dữ liệu
-- nếu chỉ Delete <Tên bảng> => xóa toàn bộ dữ liệu trong bảng
-- Xóa trường mong muốn dùng thêm where
-- Các toán tử:
-- >, <, >=, <=, <>, And, Or, =

-- Xóa dữ liệu toàn bộ bảng
DELETE dbo.Test

-- Xóa với điều kiện
DELETE dbo.Test WHERE TienLuong > 5000 AND MaSo < 15

-- update dữ liệu

-- update dữ liệu toàn bộ bảng với một trường update
UPDATE dbo.Test SET TienLuong = 1


-- Update dữ liệu toàn bộ bảng bới nhiều trường update
UPDATE dbo.Test SET TienLuong = 1,DiaChi = 'Dia Chi'

-- Update dữ liệu của trường mong muốn
UPDATE dbo.Test SET TienLuong = 9 WHERE Nam = 1

-- Gỡ bảng khỏi DB
DROP TABLE dbo.Test