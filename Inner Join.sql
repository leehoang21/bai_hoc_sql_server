USE HowKteam
GO

--inner Join Là bảng A giao B
-- inner join -> kiểu cũ -> có thể sau này không còn được hỗ trợ
-- mọi join dều cần điều kiện
SELECT * FROM 
dbo.GIAOVIEN,dbo.BOMON
WHERE BOMON.MABM = GIAOVIEN.MABM

-- inner join kiểu mới. Đúng chuẩn
SELECT * FROM 
dbo.GIAOVIEN INNER JOIN dbo.BOMON 
ON BOMON.MABM = GIAOVIEN.MABM
 
 -- có thể viết tắt INNER JOIN -> JOIN
 SELECT * FROM dbo.KHOA JOIN dbo.BOMON 
 ON BOMON.MAKHOA = KHOA.MAKHOA