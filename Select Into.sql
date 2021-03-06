USE HowKteam
GO

-- Lấy hết dữ liệu của bảngGV đưa vào bảng mới tên là TableA
-- Bảng này có các record tương ứng như bảng GV
SELECT * INTO TableA
FROM dbo.GIAOVIEN

-- Tạo ra một bảng TableB mới. Có một cột dữ liệu là HoTen tương ứng như bảng GV
-- Dữ liệu của bảng TableB lấy từ GV ra
SELECT HoTen INTO TableB
FROM dbo.GIAOVIEN

-- Tạo ra một bảng TableC mới. Có một cột dữ liệu là HoTen tương ứng như bảng GV
-- Với điều kiện lương > 2000
-- Dữ liệu của bảng TableC lấy từ GV ra
SELECT HoTen INTO TableC
FROM dbo.GIAOVIEN
WHERE LUONG > 2000

-- Tạo một bảng mới từ nhiều bảng
SELECT MAGV, HOTEN, TENBM INTO GVBackup
FROM dbo.GIAOVIEN, dbo.BOMON
WHERE BOMON.MABM = GIAOVIEN.MABM

-- Tạo ra một bảng GVBK y chang nhưng không có dữ liệu
SELECT * INTO GVBK
FROM dbo.GIAOVIEN
WHERE 6>9
