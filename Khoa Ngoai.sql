CREATE DATABASE Primary_Foreign
GO

USE Primary_Foreign
GO

CREATE TABLE BoMon
(
	MaBM CHAR(10) PRIMARY KEY,
	Name NVARCHAR(100) DEFAULT N'Tên bộ môn'
)
GO

CREATE TABLE Lop
(
	MaLop CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Tên lớp'
	
	PRIMARY KEY(MaLop)
)
GO

-- Điều kiện để tạo khóa ngoại
-- Tham chiếu tới khóa chính
-- Unique, not null
-- Cùng kiểu dữ liệu
-- Cùng số lượng trường có sắp xếp

-- Lợi ích:
-- Đảm bảo toàn vẹn dữ liệu. Không có trường hợp tham chiếu tới dữ liệu không tồn tại

CREATE TABLE GiaoVien
(
	MaGV CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Tên giáo viên',
	DiaChi NVARCHAR(100) DEFAULT N'Địa chỉ giáo viên',
	NgaySinh DATE,
	Sex BIT,
	MaBM CHAR(10), 
	
	-- Tạo khóa ngoại ngay khi tạo bảng
	FOREIGN KEY(MaBM) REFERENCES dbo.BOMON(MaBM)
)
GO

ALTER TABLE dbo.GIAOVIEN ADD PRIMARY KEY(MaGV)

CREATE TABLE HocSinh
(
	MaHS CHAR(10) PRIMARY KEY,
	Name NVARCHAR(100),
	MaLop CHAR(10)
)
GO

-- Tạo khóa ngoại sau khi tạo bảng
ALTER TABLE dbo.HocSinh ADD CONSTRAINT FK_HS FOREIGN KEY(MaLop) REFERENCES dbo.Lop(MaLop)

-- hủy khóa
-- ALTER TABLE dbo.HocSinh DROP CONSTRAINT FK_HS

INSERT INTO dbo.BoMon
        ( MaBM, Name )
VALUES  ( 'BM01', -- MaBM - char(10)
          N'Bộ môn 1'  -- Name - nvarchar(100)
          )
          INSERT INTO dbo.BoMon
        ( MaBM, Name )
VALUES  ( 'BM02', -- MaBM - char(10)
          N'Bộ môn 2'  -- Name - nvarchar(100)
          )
          INSERT INTO dbo.BoMon
        ( MaBM, Name )
VALUES  ( 'BM03', -- MaBM - char(10)
          N'Bộ môn 3'  -- Name - nvarchar(100)
          )
          
 INSERT dbo.GiaoVien
         ( MaGV, Name, DiaChi, NgaySinh, Sex, MaBM )
 VALUES  ( 'GV01', -- MaGV - char(10)
           N'GV 1', -- Name - nvarchar(100)
           N'DC 1', -- DiaChi - nvarchar(100)
           GETDATE(), -- NgaySinh - date
           1, -- Sex - bit
           'BM03'  -- MaBM - char(10)
           )
INSERT dbo.GiaoVien
         ( MaGV, Name, DiaChi, NgaySinh, Sex, MaBM )
 VALUES  ( 'GV02', -- MaGV - char(10)
           N'GV 1', -- Name - nvarchar(100)
           N'DC 1', -- DiaChi - nvarchar(100)
           GETDATE(), -- NgaySinh - date
           1, -- Sex - bit
           'BM01'  -- MaBM - char(10)
           )