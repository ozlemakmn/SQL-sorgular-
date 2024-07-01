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