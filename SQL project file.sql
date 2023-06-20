SELECT * FROM computer.presentationdata;

SELECT model, speed, hd
FROM computer.presentationdata
where cd in ('12x' , '24x') AND price < 600;

SELECT code, model, price, ram AS maximum_ram
FROM computer.presentationdata
WHERE price = (SELECT MIN(price) FROM computer.presentationdata)
AND ram = (SELECT MAX(ram) FROM computer.presentationdata WHERE price = (SELECT MIN(price) FROM computer.presentationdata));

SELECT model, speed, hd,
FROM computer.presentationdata
WHERE hd >= 10

SELECT hd
FROM computer.presentationdata
GROUP BY hd
HAVING count(*) >= 2