USE HowKteam
GO

-- Xuất ra thông tin giáo viên mà tên bắt đầu bằng chữ l
SELECT * FROM dbo.GIAOVIEN
	WHERE HOTEN like 'l%'

-- Xuất ra thông tin giáo viên kết thúc bằng chữ n
SELECT * FROM dbo.GIAOVIEN
	WHERE HOTEN LIKE '%n'

-- Xuất ra thông tin giáo viên có tồn tại chữ n
SELECT * FROM dbo.GIAOVIEN
	WHERE HOTEN LIKE '%n%'

-- Xuất ra thông tin giáo viên bắt đầu bằng ký tự N, kết thúc bằng ký tự n
SELECT * FROM dbo.GIAOVIEN
	WHERE HOTEN LIKE 'N%n'

--Xuất ra thông tin giáo viên mà tên có tồn tại chữ iế và có độ dài ít nhất 4 ký tự
SELECT * FROM dbo.GIAOVIEN
	WHERE HOTEN LIKE N'_%iế%_'

-- Xuất ra thông tin của giáo viên mà tên bắt đầu bằng chữ Tr và kết thúc bằng chữ ng

SELECT * FROM dbo.GIAOVIEN
	WHERE HOTEN LIKE 'Tr%ng'

--Tìm kiếm dữ liêu có ký tự ế ở vị trí cuối cùng thứ 2 thứ hai 
SELECT * FROM dbo.GIAOVIEN
	WHERE HOTEN LIKE N'%ế_'
