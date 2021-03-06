USE HowKteam
GO

--A giao B hợp A hiệu B

-- Left join
SELECT * FROM dbo.BOMON JOIN dbo.GIAOVIEN
ON BOMON.MABM = GIAOVIEN.MABM

-- Bảng bên phải nhập vào bảng bên trái
-- Record nào bảng phải không có thì để null
-- Record nào bảng trái không có thì không điền vào
SELECT * FROM dbo.BOMON LEFT JOIN dbo.GIAOVIEN
ON BOMON.MABM = GIAOVIEN.MABM

-- right join
SELECT * FROM dbo.BOMON RIGHT JOIN dbo.GIAOVIEN
ON BOMON.MABM = GIAOVIEN.MABM

-- Xuất ra danh sách giáo viên chủ nhiệm hoặc chưa chủ nhiệm đề tài. Ở đây ta chỉ chọn những thông tin chính cần thiết đáp ứng nhu cầu truy vấn
SELECT GV.MAGV, GV.HOTEN, DT.MADT,DT.TENDT
	FROM dbo.GIAOVIEN AS GV
	LEFT JOIN dbo.DETAI AS DT ON DT.GVCNDT = GV.MAGV
--or
SELECT GV.MAGV, GV.HOTEN, DT.MADT,DT.TENDT
	FROM dbo.DETAI AS DT
	RIGHT JOIN dbo.GIAOVIEN AS GV ON GV.MAGV = DT.GVCNDT
--Kết quả trả về như sau giúp ta dễ dàng thấy được tổng quan:
--Dữ liệu chung tồn tại ở hai bảng GiaoVien va DeTai
--Dữ liệu riêng chỉ tồn tại ở bảng GiaoVien, không tồn tại ở bảng DeTai nên các trường ở bảng DeTai hiển thị NULL
--Không hiện thị các dữ liệu chỉ tồn tại ở bảng DeTai mà không tồn tại ở bảng GiaoVien.
--(Hiện tại trong Database không có dữ liệu cho trường hợp này, bạn có thể thêm dữ liệu để tự kiểm tra kết quả của câu truy vấn).

--Ví dụ 3.1: Xuất ra danh sách giáo viên làm trưởng bộ môn hoặc không làm trưởng bộ môn
SELECT GV.MAGV, GV.HOTEN, BM.MABM, BM.TENBM
	FROM dbo.BOMON AS BM
	RIGHT JOIN dbo.GIAOVIEN AS GV ON GV.MAGV = BM.TRUONGBM
--Ví dụ 3.2: Xuất ra danh sách bộ môn có trưởng bộ môn hoặc chưa có trưởng bộ môn
SELECT GV.MAGV, GV.HOTEN, BM.MABM, BM.TENBM
	FROM dbo.GIAOVIEN AS GV
	RIGHT JOIN dbo.BOMON AS BM ON GV.MAGV = BM.TRUONGBM

--Ví dụ 3.1 và 3.2 trả về cùng sử dụng hai bảng giống nhau và cùng trả về các trường thuộc tính như nhau. 
--Tuy nhiên, kết quả truy vấn nhằm đáp ứng hai nhu cầu khác nhau và thể hiện tính không đối xứng của Half Outer Join.
