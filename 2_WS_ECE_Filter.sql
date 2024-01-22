-- DEMO FILTER
DECLARE @tensanpham NVARCHAR(MAX) = NULL;
DECLARE @danhmuc NVARCHAR(MAX) = NULL;
DECLARE @mat_hang NVARCHAR(MAX) = NULL;
DECLARE @mo_ta NVARCHAR(MAX) = NULL;
DECLARE @chat_lieu NVARCHAR(MAX) = NULL;

SELECT *
FROM san_pham
WHERE
    (ten_san_pham LIKE '%' + @SearchTerm_tensanpham + '%' OR @SearchTerm_tensanpham IS NULL)
    AND (danh_muc LIKE '%' + @SearchTerm_danhmuc + '%' OR @SearchTerm_danhmuc IS NULL)
    AND (mat_hang LIKE '%' + @SearchTerm_mat_hang + '%' OR @SearchTerm_mat_hang IS NULL)
    AND (mo_ta LIKE '%' + @SearchTerm_mo_ta + '%' OR @SearchTerm_mo_ta IS NULL)
    AND (chat_lieu LIKE '%' + @SearchTerm_chat_lieu + '%' OR @SearchTerm_chat_lieu IS NULL);
