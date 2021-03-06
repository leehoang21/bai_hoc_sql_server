USE HowKteam
GO

-- Outer join chính là bảng A hợp B
-- Gom 2 bảng lại. theo điều kiện. Bên nào không có dữ liệu thì đẻ null
SELECT * FROM dbo.BOMON FULL OUTER JOIN dbo.GIAOVIEN
ON BOMON.MABM = GIAOVIEN.MABM

-- Cross join là tổ hợp mỗi record của bảng A với all record của bảng B
SELECT * FROM dbo.GIAOVIEN CROSS JOIN dbo.BOMON

--Để hiểu rõ hơn về FULL OUTER JOIN cũng như trường hợp truy vấn nào nên sử dụng Full Outer Join.
--	Chúng ta cùng thao tác một số ví dụ sau trên Database HowKteam ở đầu bài.
--Ví dụ 1:  Nhu cầu đặt ra khi bạn muốn chọn một giáo viên chưa chủ nhiệm đề tài nào để chủ nhiệm cho 
--	đề tài mới mà vẫn cần xem qua tất cả giáo viên và đề tài đã có chủ nhiệm.
--Vậy cần xuất ra danh sách giáo viên nào đã chủ nhiệm đề tài,
--	giáo viên nào chưa chủ nhiệm đề tài để có cái nhìn tổng quan nhất.
--Ở đây ta chỉ chọn những thông tin chính cần thiết đáp ứng nhu cầu truy vấn
--Hiển thị các GV chủ nhiệm đề tài & chưa chủ nhiệm đề tài

SELECT GV.MAGV, GV.HOTEN, DT.MADT,DT.TENDT
FROM dbo.GIAOVIEN AS GV
FULL OUTER JOIN dbo.DETAI AS DT ON DT.GVCNDT = GV.MAGV

--Kết quả trả về như sau giúp ta dễ dàng thấy được:
--Giáo viên nào đã có chủ nhiệm đề tài? đó là đề tài gì?
--Giáo viên nào chưa chủ nhiệm đề tài?