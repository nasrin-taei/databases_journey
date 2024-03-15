--۱۱- مجموع ارزش هر دسته بندی محصول را محاسبه کنید.


SELECT product_category, sum(total)
FROM (SELECT product_category, count * unit_price "total"
      FROM products) S
group by product_category;