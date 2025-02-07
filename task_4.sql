-- Use the alx_book_store database
USE alx_book_store;

-- Query the INFORMATION_SCHEMA to get full description of the books table
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    NUMERIC_PRECISION,
    NUMERIC_SCALE,
    IS_NULLABLE,
    COLUMN_DEFAULT
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store'  -- Specify the database name
    AND COLUMN_TYPE", "TABLE_NAME = 'Books'         -- Specify the table name
ORDER BY 
    ORDINAL_POSITION;                -- Order by the column position in the table
