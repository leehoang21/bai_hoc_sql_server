USE HowKteam
GO

-- insert into select -> coppy dữ liệu vào bảng đã tồn tại

SELECT * INTO CLoneGV
FROM dbo.GIAOVIEN
WHERE 1=0

INSERT INTO CloneGV
SELECT * FROM dbo.GIAOVIEN

SELECT * FROM CloneGV

--copy dữ liệu từ các bảng khác nhau
SELECT TENCV,HOTEN INTO Clone
	FROM dbo.GIAOVIEN,dbo.CONGVIEC
	WHERE 1=0

INSERT INTO dbo.Clone
	SELECT TENCV,HOTEN FROM dbo.GIAOVIEN,dbo.CONGVIEC
	
SELECT * FROM dbo.Clone