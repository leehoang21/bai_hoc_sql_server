-- Unique: duy nhất -> trong toàn bộ bảng. Trường nào có từ khóa Unique thì không thể có 2 giá trị trùng nhau
-- Not Null: Trường đó không được phép null
-- Default: Giá trị mặc định của trường đó nếu không gán giá trị khi insert

CREATE TABLE TestPrimaryKey1
(
	ID INT PRIMARY KEY,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
)
GO

-- khi đã tạo bảng. Muốn sửa cột thành primary key
ALTER TABLE dbo.TestPrimaryKey1 ADD PRIMARY KEY (ID)

-- Tạo primary key trong bảng không phải ngay khi khai báo
CREATE TABLE TestPrimaryKey2
(
	ID INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
	
	PRIMARY KEY (ID)
)
GO

-- Tạo primary key ngay trong bảng mà đặt tên cho key đó
CREATE TABLE TestPrimaryKey3
(
	ID INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
	
	CONSTRAINT PK_Test3 -- sau này xóa key cho dễ
	PRIMARY KEY (ID)
)
GO

-- Tạo primary key sau khi tạo bảng và đặt tên cho key đó

CREATE TABLE TestPrimaryKey4
(
	ID INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
)
GO

ALTER TABLE dbo.TestPrimaryKey4 
ADD CONSTRAINT PK_Test4 
PRIMARY KEY (ID)

-- khóa chính có 2 trường
CREATE TABLE TestPrimaryKey5
(
	ID1 INT NOT NULL,
	ID2 INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
	
	PRIMARY KEY (ID1, ID2)
)
GO