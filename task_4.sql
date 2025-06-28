SHOW FULL COLUMNS FROM alx_book_store.books;


SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE 
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    TABLE_SCHEMA = 'alx_book_store' 
    AND TABLE_NAME = 'Books';


With SQL keywords in uppercase:


SELECT 
becomes SELECT stays the same 
    COLUMN_NAME, 
    COLUMN_TYPE 
FROM becomes FROM is a keyword and will be uppercased to FROM
