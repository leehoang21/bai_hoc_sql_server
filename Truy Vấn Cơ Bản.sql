-- Lưu ý. Chạy script Query trước khi chạy thử script này

USE HowKteam
GO

-- cấu trúc truy vấn
SELECT * FROM dbo.BOMON				-- lấy hêt các dữ liệu trong bảng bộ môn ra
SELECT DISTINCT * FROM dbo.BoMon	-- lấy hêt các dữ liệu ko trùng lặp trong bảng bộ môn ra
SELECT TOP 50 PERCENT MaBM FROM dbo.BOMON -- truy van theo phan tram
SELECT TOP (100) *  FROM dbo.BOMON  -- lấy hêt các dữ liệu từ 100 hàng đầu trong bảng bộ môn ra

SELECT COUNT (DISTINCT MABM) FROM dbo.BOMON -- số lượng của một dữ liệu mong muốn ma ko trung lap

-- Lấy Mã đề tại + tên đề tài trong bảng bộ môn
SELECT MABM, TENBM FROM dbo.BOMON

-- Đổi tên cột hiển thị
SELECT MABM AS 'HowKteam.com', TENBM AS N'Giáo dục' FROM dbo.BOMON

-- Xuất ra mã giáo viên + Tên + Tên bộ môn giáo viên đó dạy
SELECT GV.MAGV, GV.HOTEN, BM.TENBM 
FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM

SELECT * FROM dbo.Khoa

-- BÀI TẬP:
-- 1. Truy xuất thông tin của bảng Tham gia đề tài
SELECT * FROM dbo.THAMGIADT

-- 2. Lấy ra Mã khoa và tên khoa tương ứng
SELECT MAKHOA, TENKHOA FROM dbo.KHOA

-- 3. Lấy ra Mã GV, tên GV và họ tên người thân tương ứng
SELECT GIAOVIEN.MAGV,HOTEN,TEN AS N'tên ngoừi thân' FROM dbo.GIAOVIEN,dbo.NGUOITHAN WHERE GIAOVIEN.MAGV= NGUOITHAN.MAGV

-- 4. Lấy ra Mã GV, Tên GV và Tên khoa của giáo viên đó làm việc. Gơi ý: Bộ môn nằm trong khoa
SELECT MAGV,HOTEN,TENKHOA FROM dbo.GIAOVIEN,dbo.KHOA,dbo.BOMON WHERE BOMON.MABM = GIAOVIEN.MABM AND BOMON.MAKHOA = KHOA.MAKHOA