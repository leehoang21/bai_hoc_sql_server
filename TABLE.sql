--DE DUNG TABLE CAN CO DATABASE
CREATE DATABASE SQLDBQuery
GO

-- sử dụng DB SQLDBQuery
USE SQLDBQuery
GO

-- Tạo bảng Giáo viên có 2 thuộc tính
CREATE TABLE GiaoVien
(
	MaGV NVARCHAR(10),
	Name NVARCHAR(100)
)
GO

CREATE TABLE HocSinh
(
	MaHS NVARCHAR(10),
	Name NVARCHAR(100)
)
go

-- Thêm cột ngày sinh
ALTER TABLE HocSinh ADD NgaySinh DATE
-- sửa bảng
ALTER TABLE dbo.HocSinh
	ALTER COLUMN MAHS CHAR(5) NOT NULL

-- Xóa toàn bộ dữ liệu của bảng
TRUNCATE TABLE HocSinh

-- Gỡ bảng khỏi DB
DROP TABLE HocSinh
GO
