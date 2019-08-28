CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice INTEGER,
	p_description TEXT,
	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitsInStock VARCHAR(20),
	p_condition VARCHAR(20),
	p_fileName VARCHAR(20),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

desc product;

insert into product values('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera', 'Smart Phone', 'Apple', 1000, 'new', 'P1234.png' );
insert into product values('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png' );
insert into product values('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png' );

alter table product change p_name p_name VARCHAR(20);
select * from product;

update product set p_fileName='P1236.jpg' where p_name='Galaxy Tab S';