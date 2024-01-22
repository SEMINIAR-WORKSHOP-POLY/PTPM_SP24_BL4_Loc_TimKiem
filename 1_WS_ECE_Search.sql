-- DEMO SEARCH (Tìm kiếm một từ) 
DECLARE @input NVARCHAR(MAX) = '%ce%'

SELECT * FROM san_pham
	WHERE ten_san_pham LIKE @input
		OR danh_muc LIKE @input
		OR mat_hang LIKE @input
		OR phan_loai LIKE @input
		OR mo_ta LIKE @input
		OR chat_lieu LIKE @input
		OR don_gia LIKE @input
		OR so_luong LIKE @input