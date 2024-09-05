/*1.film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.*/

select title , description from film

/*2.film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.*/

SELECT * FROM film WHERE length > 60 AND length < 75;

/*3.film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE rental_rate 0.99 VEYA 28.99 olma koşullarıyla sıralayınız.*/
select * from film where rental_rate = 0.99 and rental_rate 0.99 or 28.99

/*4.customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?*/

select last_name from customer where first_name='Mary'

/*5.film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.*/

select * from film where length <=50 and (rental_rate not between 2.99 or 4.99 )

/*6.film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)*/

select * from film where replacement_cost >=12.99 and replacement_cost <=16.99

/*7.actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)*/

select first_name,last_name from actor where first_name IN ('Penelope', 'Nick', 'Ed')

/*8.film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)*/

select * from film where rental_rate IN ('0.99', '2.99', '4.99') AND replacement_cost IN ('12.99','15.99','28.99')

/*9.country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.*/
select  from country where country Like 'A%a'

/*10.country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.*/
select * from country where country length(country) >=6 and country Like '%n'

/*11.film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.*/
select TOP 4 * from film where title ILIKE '%T%'
/*12.film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.*/
select from film where title like 'C%'and length(title) >90 and title where rental_rate = 2.99 

--13.film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
select  distinct replacement_cost from film

--14.film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
select Count (distinct replacement_cost) from film

--15.film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
select count(*) from film like 'T%' and rating like ='G'

--16.country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
select count(*) from country where length (name ) =5

--17.city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
select count(*) from city where city like '%R' or city like '%r' 

--18.film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
select * from film where title like'%n' order by length desc limit=5
--19.film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
select * from film where title like'%n' order by length desc offset 5 limit=5
--20.customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
select * from customer where store_id='1' order by last_name desc limit=4

--21.film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
select AVG(rental_rate) from film
--22.film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
select Count(*) from film where title like 'C%'
--23.film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
select max(length) from film where rental_rate = 0.99 
--24.film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT count(distinct replacement_cost) FROM film WHERE length > 150;
--25.film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
select rating Count(*) from film where 
GROUP BY rating;

--26.film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
select replacement_cost count(*) from film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY replacement_cost ASC;
--27. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
select store_id count(*) from customer
GROUP BY store_id;

--28.city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
select country_id, COUNT(*) as sehirsayisi FROM city
GROUP BY country_id 
ORDER BY sehirsayisi DESC 
LIMIT 1;

