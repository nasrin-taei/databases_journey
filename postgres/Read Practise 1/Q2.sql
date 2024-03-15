-- تعداد مشتریان مجرد و متاهل را بدست اورید

SELECT  married ,count(*)
FROM customers
group by married;
