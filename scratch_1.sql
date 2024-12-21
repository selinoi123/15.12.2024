7. ?
DELETE from shopping WHERE name like 'Orange'; -- מוחק את כל השורה עם שם "Orenge"
8. ?
UPDATE shopping SET name = 'Bisli' WHERE name LIKE 'Bamba' -- משנה את השם של המוצר ל-"Bisli"
UPDATE shopping SET amount=1 WHERE name LIKE 'Milk'  -- משנה את השם של המוצר ל1
9. ?
ALTER TABLE shopping ADD COLUMN maavar -- הוספת עמודה בשם "maavar"

10. ?
UPDATE shopping SET maavar=6 WHERE id=1;  -- הוספה של כל הנתונים של העמודה החדשה בכל השורות
UPDATE shopping SET maavar=3 WHERE id=2;
UPDATE shopping SET maavar=12 WHERE id=3;
UPDATE shopping SET maavar=8 WHERE id=4;
UPDATE shopping SET maavar=5 WHERE id=5;
11. ?
SELECT * FROM shopping WHERE amount > 1 AND maavar > 5 --  עמודה של הכמות גדולה מ- 1ונעמודה של "maavar" גדולה מ5 מחזיר נתונים שה
SELECT * FROM shopping WHERE maavar BETWEEN 3 AND 5 --מחזיר את הנתונים שהעמודה של 'maavar' הטווח מספרים הוא בין 3 ל-5
12. ?
SELECT * FROM shopping ORDER BY maavar -- מסדר את העמודה "maavar" מהקטן לגדול
SELECT * FROM shopping ORDER BY maavar DESC -- מסדר את העמודה "maavar" מהגדול לקטן
13. ?
CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT); -- יצירה טבלה חדשה בשם "books"
INSERT INTO books VALUES (1, 'SQL PROGRAMMING'); -- הוספה שורה ראשונה לטבלה חדשה עם כל הנתונים
INSERT INTO books VALUES (2, 'CSHARP PROGRAMMING'); -- הוספה שורה שנייה לטבלה חדשה עם כל הנתונים
DELETE FROM books; -- מחיקת כל הנתונים בטבלה אבל לא את הטבלה עצמה
14. ?
SELECT COUNT(*)from shopping -- מסכם כמה שורות יש בסך הכל
SELECT MAX(amount) from shopping -- נותן מהעמודה של הכמות את המספר הכי גדול
SELECT AVG(amount) from shopping -- נותן את הממוצע
SELECT MIN(amount) from shopping -- נותן מהעמודה של הכמות את המספר הכי קטן
15. ?
INSERT INTO shopping VALUES (6, 'Onions', 3, 6); -- הוספת שורה חדשה עם נתון חדש לכל עמודה
INSERT INTO shopping VALUES (7, 'Orio', 1, 8); -- הוספת שורה חדשה עם נתון חדש לכל עמודה
Select maavar, COUNT(*)FROM shopping GROUP BY maavar -- אומר כמה מהעמות יש אותו דבר ועושה צמצום שורות (רק מדפיס הוא לא משנה את הטבלה עצמה)
16. ?
SELECT id AS "SECRET", name, amount, maavar FROM shopping -- שמנה את השם 'id' ל-'SECRET' ומדפיס את העמודות הנוספות שמצויינות