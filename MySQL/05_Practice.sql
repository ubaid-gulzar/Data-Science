-- Step 1: Create database
CREATE DATABASE college;

-- Step 2: Use database
USE college;

-- Step 3: Create Teacher table
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    salary INT
);

-- Step 4: Insert data
INSERT INTO teacher VALUES
(23, 'ajay', 'math', 50000),
(47, 'bharat', 'english', 60000),
(18, 'chetan', 'chemistry', 45000),
(9, 'divya', 'physics', 75000);

SELECT * FROM teacher;

-- Step 5: Select teachers whose salary is more than 55K
SELECT * 
FROM teacher
WHERE salary > 55000;

-- Step 6: Rename salary column to ctc
ALTER TABLE teacher
RENAME COLUMN salary TO ctc;

-- Step 7: Update salary (ctc) by increasing 25%
UPDATE teacher
SET ctc = ctc * 1.25;

-- Step 8: Add new column city with default value Gurgaon
ALTER TABLE teacher
ADD COLUMN city VARCHAR(50) DEFAULT 'Gurgaon';

-- Step 9: Delete salary column (now called ctc)
ALTER TABLE teacher
DROP COLUMN ctc;