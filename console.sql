create table customer
(
    id         int primary key,
    first_name varchar(100) not null,
    last_name  varchar(100) not null,
    city       varchar(100),
    country    varchar(100),
    phone      varchar(100)
);
create table supplier
(
    id            int primary key,
    company_name  varchar(100) not null,
    contact_name  varchar(100),
    contact_title varchar(100),
    city          varchar(100),
    country       varchar(100),
    phone         varchar(100),
    fax           varchar(100)
);
create table product
(
    id              int primary key,
    product_name    varchar(100)                 not null,
    unit_price      decimal(12, 2) default 0,
    package         varchar(100),
    is_discontinued boolean        default false,
    supplier_id     int references supplier (id) not null
);
create table orders
(
    id           int primary key,
    order_date   timestamp      default now(),
    order_number varchar(100),
    total_amount decimal(12, 2) default 0,
    customer_id  int references customer (id) not null
);
create table order_item
(
    id         int primary key,
    unit_price decimal(12, 2) default 0,
    quantity   int            default 1,
    order_id   int references orders (id)  not null,
    product_id int references product (id) not null
);
select *
from supplier;
select *
from product;
select *
from orders;
select *
from order_item;
select *
from customer;


insert into orders (id, order_date, order_number, total_amount, customer_id) values (1, '2020-02-12', 52, 32.46, 24);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (2, '2014-01-25', 30, 34.04, 42);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (3, '2015-03-01', 6, 26.69, 89);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (4, '2018-06-27', 73, 27.17, 92);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (5, '2017-10-18', 41, 71.16, 62);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (6, '2022-03-08', 25, 83.23, 45);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (7, '2015-12-20', 18, 53.5, 39);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (8, '2015-09-05', 46, 74.36, 12);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (9, '2017-01-14', 81, 25.46, 21);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (10, '2020-10-14', 9, 23.05, 67);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (11, '2017-09-18', 16, 77.7, 83);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (12, '2018-09-07', 5, 86.62, 85);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (13, '2019-02-04', 54, 57.75, 16);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (14, '2013-07-04', 95, 27.28, 1);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (15, '2012-07-05', 36, 71.8, 84);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (16, '2013-09-22', 88, 15.72, 11);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (17, '2017-06-14', 55, 8.31, 69);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (18, '2012-11-15', 34, 80.56, 17);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (19, '2012-11-28', 63, 35.71, 3);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (20, '2019-05-27', 99, 20.2, 3);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (21, '2017-08-27', 81, 86.88, 9);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (22, '2020-10-18', 91, 16.71, 66);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (23, '2022-02-23', 77, 70.81, 81);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (24, '2018-12-25', 19, 32.32, 74);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (25, '2012-04-25', 21, 72.35, 39);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (26, '2016-06-27', 45, 99.01, 40);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (27, '2015-05-14', 18, 73.89, 58);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (28, '2017-03-11', 64, 26.86, 57);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (29, '2015-04-30', 64, 29.26, 4);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (30, '2016-07-19', 96, 95.9, 27);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (31, '2020-05-12', 18, 55.57, 79);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (32, '2017-02-14', 91, 91.07, 67);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (33, '2016-04-24', 61, 60.51, 64);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (34, '2021-02-03', 34, 33.27, 42);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (35, '2021-06-25', 75, 43.67, 89);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (36, '2016-06-19', 20, 14.46, 76);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (37, '2013-09-24', 50, 61.29, 50);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (38, '2020-08-22', 73, 91.63, 41);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (39, '2017-02-25', 20, 68.8, 59);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (40, '2012-07-01', 66, 21.79, 26);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (41, '2012-11-21', 43, 5.14, 62);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (42, '2020-03-03', 84, 82.19, 81);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (43, '2016-02-10', 35, 18.17, 25);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (44, '2016-01-10', 61, 42.56, 84);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (45, '2015-07-31', 95, 36.68, 65);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (46, '2018-08-25', 8, 47.69, 93);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (47, '2012-05-23', 47, 43.32, 37);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (48, '2019-03-20', 77, 60.99, 2);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (49, '2016-06-14', 66, 81.13, 72);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (50, '2013-03-08', 45, 73.89, 87);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (51, '2017-03-26', 10, 53.08, 10);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (52, '2019-11-29', 85, 62.31, 60);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (53, '2017-05-15', 50, 19.53, 85);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (54, '2013-08-04', 10, 66.27, 64);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (55, '2016-05-08', 3, 11.49, 98);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (56, '2018-03-01', 15, 5.13, 16);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (57, '2013-03-07', 98, 64.55, 54);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (58, '2017-10-25', 83, 18.94, 17);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (59, '2018-10-08', 85, 34.52, 100);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (60, '2012-05-03', 2, 70.35, 54);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (61, '2015-06-26', 46, 15.12, 24);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (62, '2020-06-26', 42, 2.62, 72);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (63, '2017-12-10', 46, 34.41, 83);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (64, '2014-01-01', 21, 13.5, 34);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (65, '2013-12-05', 39, 11.04, 12);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (66, '2021-05-21', 21, 85.77, 66);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (67, '2013-09-06', 18, 57.59, 81);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (68, '2014-07-21', 10, 35.46, 69);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (69, '2019-07-22', 96, 14.82, 93);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (70, '2019-10-16', 23, 71.1, 6);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (71, '2014-01-11', 81, 18.72, 43);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (72, '2015-06-22', 13, 37.55, 95);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (73, '2013-10-30', 2, 78.24, 46);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (74, '2015-11-29', 63, 20.19, 80);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (75, '2014-06-19', 33, 91.33, 46);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (76, '2014-06-12', 33, 39.3, 33);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (77, '2020-01-26', 96, 92.06, 61);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (78, '2015-08-25', 2, 1.01, 45);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (79, '2020-12-22', 78, 81.53, 33);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (80, '2018-07-18', 80, 53.73, 87);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (81, '2016-02-13', 47, 48.96, 46);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (82, '2014-09-12', 94, 46.63, 37);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (83, '2013-06-08', 90, 29.58, 38);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (84, '2012-05-31', 24, 65.92, 66);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (85, '2017-01-18', 37, 12.43, 82);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (86, '2015-10-24', 51, 30.48, 96);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (87, '2017-08-30', 78, 98.46, 20);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (88, '2018-01-23', 28, 76.21, 62);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (89, '2017-06-30', 37, 32.9, 39);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (90, '2018-01-09', 31, 49.53, 46);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (91, '2016-01-16', 66, 14.77, 11);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (92, '2021-06-03', 89, 82.97, 59);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (93, '2021-09-10', 35, 23.09, 74);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (94, '2014-06-15', 35, 45.92, 50);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (95, '2021-03-05', 36, 62.22, 30);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (96, '2021-08-02', 70, 3.3, 21);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (97, '2013-01-05', 31, 33.05, 27);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (98, '2018-01-09', 90, 54.11, 64);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (99, '2015-08-01', 50, 79.8, 99);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (100, '2020-01-07', 7, 83.35, 35);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (101, '2012-11-05', 65, 47.41, 92);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (102, '2014-02-01', 28, 29.86, 33);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (103, '2014-07-07', 47, 18.74, 88);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (104, '2021-03-09', 67, 33.96, 20);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (105, '2020-01-28', 40, 98.37, 58);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (106, '2019-01-14', 85, 15.26, 91);
insert into orders (id, order_date, order_number, total_amount, customer_id) values (107, '2015-05-15', 3, 44.22, 71);


insert into customer (id, first_name, last_name, city, country, phone) values (1, 'Redd', 'Wandless', 'Boljevci', 'Serbia', '642-485-2883');
insert into customer (id, first_name, last_name, city, country, phone) values (2, 'Winfred', 'Lettsom', 'Vilela', 'Portugal', '983-861-2634');
insert into customer (id, first_name, last_name, city, country, phone) values (3, 'Bertrando', 'Croci', 'Tongmuluo', 'China', '710-235-3859');
insert into customer (id, first_name, last_name, city, country, phone) values (4, 'Dall', 'Lynthal', 'Lipa City', 'Philippines', '399-597-0984');
insert into customer (id, first_name, last_name, city, country, phone) values (5, 'Wynnie', 'Warde', 'Vol’no-Nadezhdinskoye', 'Russia', '916-169-1063');
insert into customer (id, first_name, last_name, city, country, phone) values (6, 'Leonelle', 'Girk', 'Xinzhou', 'China', '126-897-1918');
insert into customer (id, first_name, last_name, city, country, phone) values (7, 'Angeli', 'Hurren', 'Ketapang', 'Indonesia', '173-633-2679');
insert into customer (id, first_name, last_name, city, country, phone) values (8, 'Carlin', 'Leeburne', 'Banatski Dvor', 'Serbia', '638-829-5463');
insert into customer (id, first_name, last_name, city, country, phone) values (9, 'Giulia', 'Schultz', 'San Antonio', 'Peru', '293-319-2421');
insert into customer (id, first_name, last_name, city, country, phone) values (10, 'Anna-diana', 'Zorzoni', 'Shakhta', 'Russia', '110-664-4410');
insert into customer (id, first_name, last_name, city, country, phone) values (11, 'Ernestus', 'Adamowitz', 'Mirovice', 'Czech Republic', '847-787-7062');
insert into customer (id, first_name, last_name, city, country, phone) values (12, 'Daryl', 'Piel', 'Rajsko', 'Poland', '883-644-8709');
insert into customer (id, first_name, last_name, city, country, phone) values (13, 'Melodee', 'Gordge', 'Huaquirca', 'Peru', '883-217-6575');
insert into customer (id, first_name, last_name, city, country, phone) values (14, 'Maurise', 'Tindley', 'Dagar', 'China', '296-999-5874');
insert into customer (id, first_name, last_name, city, country, phone) values (15, 'Irita', 'Woolston', 'Orissaare', 'Estonia', '806-864-1925');
insert into customer (id, first_name, last_name, city, country, phone) values (16, 'Tish', 'Tunnadine', 'Tála', 'Cyprus', '702-736-6384');
insert into customer (id, first_name, last_name, city, country, phone) values (17, 'Dewitt', 'Staite', 'Bradford', 'United Kingdom', '539-714-2966');
insert into customer (id, first_name, last_name, city, country, phone) values (18, 'Lisetta', 'Baversor', 'Falun', 'Sweden', '984-860-9223');
insert into customer (id, first_name, last_name, city, country, phone) values (19, 'Geoffrey', 'Nenci', 'Alquerubim', 'Portugal', '347-129-0824');
insert into customer (id, first_name, last_name, city, country, phone) values (20, 'Adelice', 'Duiguid', 'Kokoshkino', 'Russia', '913-542-1747');
insert into customer (id, first_name, last_name, city, country, phone) values (21, 'Willy', 'Traher', 'Portland', 'United States', '971-284-7878');
insert into customer (id, first_name, last_name, city, country, phone) values (22, 'Ingrid', 'Abbate', 'Xushangqiao', 'China', '642-396-3478');
insert into customer (id, first_name, last_name, city, country, phone) values (23, 'Berna', 'Ishchenko', 'Dzhubga', 'Russia', '170-375-7584');
insert into customer (id, first_name, last_name, city, country, phone) values (24, 'Nolie', 'Akroyd', 'Laocheng', 'China', '629-941-4296');
insert into customer (id, first_name, last_name, city, country, phone) values (25, 'Hayley', 'Magee', 'Dieppe', 'France', '853-603-2369');
insert into customer (id, first_name, last_name, city, country, phone) values (26, 'Wolfgang', 'Wagner', 'Datian', 'China', '675-824-2182');
insert into customer (id, first_name, last_name, city, country, phone) values (27, 'Dore', 'Gillise', 'Sa''dah', 'Yemen', '106-709-6701');
insert into customer (id, first_name, last_name, city, country, phone) values (28, 'Ilaire', 'Fleay', 'Martin', 'Croatia', '348-971-4256');
insert into customer (id, first_name, last_name, city, country, phone) values (29, 'Mikael', 'Tartt', 'Santa Magdalena', 'Philippines', '142-264-2340');
insert into customer (id, first_name, last_name, city, country, phone) values (30, 'Morgan', 'Pledger', 'Tessaoua', 'Niger', '202-769-1442');
insert into customer (id, first_name, last_name, city, country, phone) values (31, 'Anne-corinne', 'de Bullion', 'Tsotsin-Yurt', 'Russia', '127-536-3150');
insert into customer (id, first_name, last_name, city, country, phone) values (32, 'Barrett', 'Pursglove', 'Liudong', 'China', '532-943-5187');
insert into customer (id, first_name, last_name, city, country, phone) values (33, 'Delano', 'Lotterington', 'Sharan', 'Russia', '925-772-5916');
insert into customer (id, first_name, last_name, city, country, phone) values (34, 'Ban', 'Coley', 'Menol', 'Indonesia', '916-110-5322');
insert into customer (id, first_name, last_name, city, country, phone) values (35, 'Mozes', 'Haffner', 'Jiangluo', 'China', '936-260-4258');
insert into customer (id, first_name, last_name, city, country, phone) values (36, 'Burk', 'Darlow', 'Lingmen', 'China', '205-732-5717');
insert into customer (id, first_name, last_name, city, country, phone) values (37, 'Stillmann', 'Antyshev', 'Pravda', 'Russia', '756-675-4229');
insert into customer (id, first_name, last_name, city, country, phone) values (38, 'Harwell', 'Caldicott', 'Ferraz de Vasconcelos', 'Brazil', '665-197-2228');
insert into customer (id, first_name, last_name, city, country, phone) values (39, 'Kristy', 'Cottesford', 'Longtan', 'China', '218-629-0000');
insert into customer (id, first_name, last_name, city, country, phone) values (40, 'Merv', 'Macia', 'Kryevidh', 'Albania', '383-538-5890');
insert into customer (id, first_name, last_name, city, country, phone) values (41, 'Urson', 'Klimov', 'Brumadinho', 'Brazil', '306-342-1336');
insert into customer (id, first_name, last_name, city, country, phone) values (42, 'Nels', 'Jessopp', 'Brongkah', 'Indonesia', '209-689-6062');
insert into customer (id, first_name, last_name, city, country, phone) values (43, 'Vivienne', 'Crasswell', 'Talpe', 'Sri Lanka', '469-759-1689');
insert into customer (id, first_name, last_name, city, country, phone) values (44, 'Cybill', 'Bernaldo', 'At Tāj', 'Libya', '556-462-9238');
insert into customer (id, first_name, last_name, city, country, phone) values (45, 'Immanuel', 'Buckler', 'Toronto', 'Canada', '664-297-3757');
insert into customer (id, first_name, last_name, city, country, phone) values (46, 'Meggy', 'Drynan', 'Xihuaiba', 'China', '549-555-6841');
insert into customer (id, first_name, last_name, city, country, phone) values (47, 'Morie', 'Uman', 'Payao', 'Philippines', '298-457-1354');
insert into customer (id, first_name, last_name, city, country, phone) values (48, 'Fraze', 'MacMickan', 'Kayapa', 'Philippines', '721-858-6942');
insert into customer (id, first_name, last_name, city, country, phone) values (49, 'Tremayne', 'Terzi', 'Balta', 'Ukraine', '547-268-9380');
insert into customer (id, first_name, last_name, city, country, phone) values (50, 'Leonie', 'Sail', 'Banzão', 'Portugal', '571-425-8977');
insert into customer (id, first_name, last_name, city, country, phone) values (51, 'Anallise', 'Michallat', 'Joaquín V. González', 'Argentina', '713-397-1838');
insert into customer (id, first_name, last_name, city, country, phone) values (52, 'Paten', 'Ragbourn', 'Ermelo', 'South Africa', '282-727-2870');
insert into customer (id, first_name, last_name, city, country, phone) values (53, 'Godiva', 'Wickmann', 'San Vicente', 'Philippines', '191-453-2220');
insert into customer (id, first_name, last_name, city, country, phone) values (54, 'Ariana', 'Checchetelli', 'Murcia', 'Philippines', '309-243-0611');
insert into customer (id, first_name, last_name, city, country, phone) values (55, 'Jesse', 'Greenard', 'Taipingxu', 'China', '883-408-1866');
insert into customer (id, first_name, last_name, city, country, phone) values (56, 'Isabeau', 'Gravatt', 'Surin', 'Thailand', '499-466-0175');
insert into customer (id, first_name, last_name, city, country, phone) values (57, 'Drud', 'Surpliss', 'Cilampuyang', 'Indonesia', '873-736-5082');
insert into customer (id, first_name, last_name, city, country, phone) values (58, 'Benn', 'Breyt', 'Banyubang', 'Indonesia', '109-645-2824');
insert into customer (id, first_name, last_name, city, country, phone) values (59, 'Jessika', 'McPike', 'Bayt Adhāqah', 'Yemen', '508-577-9231');
insert into customer (id, first_name, last_name, city, country, phone) values (60, 'Hamlen', 'Turone', 'Ajaccio', 'France', '335-756-4630');
insert into customer (id, first_name, last_name, city, country, phone) values (61, 'Tiena', 'Avrahamoff', 'Zmiennica', 'Poland', '259-909-8536');
insert into customer (id, first_name, last_name, city, country, phone) values (62, 'Seymour', 'O''Cleary', 'Agoo', 'Philippines', '158-604-5942');
insert into customer (id, first_name, last_name, city, country, phone) values (63, 'Meier', 'McAlister', 'Serzedo', 'Portugal', '273-441-4411');
insert into customer (id, first_name, last_name, city, country, phone) values (64, 'Dwayne', 'Busst', 'Honolulu', 'United States', '808-563-9144');
insert into customer (id, first_name, last_name, city, country, phone) values (65, 'Carlynn', 'Gilbanks', 'Kristianstad', 'Sweden', '554-411-7485');
insert into customer (id, first_name, last_name, city, country, phone) values (66, 'Dyana', 'Rubinovici', 'Yahil’nytsya', 'Ukraine', '191-582-1709');
insert into customer (id, first_name, last_name, city, country, phone) values (67, 'Cahra', 'MacAne', 'Iturama', 'Brazil', '577-361-2268');
insert into customer (id, first_name, last_name, city, country, phone) values (68, 'Kristel', 'Oleszkiewicz', 'Muang Phôn-Hông', 'Laos', '225-651-8427');
insert into customer (id, first_name, last_name, city, country, phone) values (69, 'Jaimie', 'Dansken', 'Pu’an', 'China', '669-404-9721');
insert into customer (id, first_name, last_name, city, country, phone) values (70, 'Dominic', 'Cisec', 'Mananjary', 'Madagascar', '217-375-1329');
insert into customer (id, first_name, last_name, city, country, phone) values (71, 'Josie', 'Kitchingham', 'Kabasalan', 'Philippines', '387-515-0474');
insert into customer (id, first_name, last_name, city, country, phone) values (72, 'Harlie', 'Dearl', 'Shiojiri', 'Japan', '906-404-1842');
insert into customer (id, first_name, last_name, city, country, phone) values (73, 'Alexa', 'Mc Corley', 'Gueset', 'Philippines', '453-490-5713');
insert into customer (id, first_name, last_name, city, country, phone) values (74, 'Zilvia', 'Dickman', 'Huating', 'China', '966-891-9076');
insert into customer (id, first_name, last_name, city, country, phone) values (75, 'Yard', 'Baglan', 'Youxi', 'China', '816-474-6135');
insert into customer (id, first_name, last_name, city, country, phone) values (76, 'Heather', 'Buzin', 'Bigaan', 'Philippines', '853-113-4559');
insert into customer (id, first_name, last_name, city, country, phone) values (77, 'Veda', 'Giacomelli', 'Angus', 'Canada', '692-356-4322');
insert into customer (id, first_name, last_name, city, country, phone) values (78, 'Cathleen', 'Cornes', 'Mempawah', 'Indonesia', '370-654-2668');
insert into customer (id, first_name, last_name, city, country, phone) values (79, 'Andrei', 'Klaus', 'Winton', 'New Zealand', '582-763-2564');
insert into customer (id, first_name, last_name, city, country, phone) values (80, 'Effie', 'Jerke', 'Nanfeng', 'China', '820-122-3650');
insert into customer (id, first_name, last_name, city, country, phone) values (81, 'Lynett', 'Tossell', 'Mbala', 'Zambia', '739-464-0225');
insert into customer (id, first_name, last_name, city, country, phone) values (82, 'Leeann', 'Beatens', 'La Libertad', 'Philippines', '272-222-0256');
insert into customer (id, first_name, last_name, city, country, phone) values (83, 'Durand', 'Scanderet', 'Mandalay', 'Myanmar', '263-600-1469');
insert into customer (id, first_name, last_name, city, country, phone) values (84, 'Carol-jean', 'Digby', 'Beaumont', 'Ireland', '681-700-2322');
insert into customer (id, first_name, last_name, city, country, phone) values (85, 'Ivy', 'Altoft', 'Los Andes', 'Chile', '262-757-0492');
insert into customer (id, first_name, last_name, city, country, phone) values (86, 'Niles', 'Savins', 'Zlynka', 'Ukraine', '731-182-2225');
insert into customer (id, first_name, last_name, city, country, phone) values (87, 'Cece', 'Fryman', 'Arari', 'Brazil', '359-685-7448');
insert into customer (id, first_name, last_name, city, country, phone) values (88, 'Livvyy', 'Greeson', 'Chiţcani', 'Moldova', '447-638-4202');
insert into customer (id, first_name, last_name, city, country, phone) values (89, 'Stacie', 'Bondley', 'La Puerta de San José', 'Argentina', '920-550-4185');
insert into customer (id, first_name, last_name, city, country, phone) values (90, 'Kaye', 'Marklow', 'Tinaco', 'Venezuela', '471-785-6133');
insert into customer (id, first_name, last_name, city, country, phone) values (91, 'Rod', 'St. Hill', 'Saposoa', 'Peru', '728-471-4940');
insert into customer (id, first_name, last_name, city, country, phone) values (92, 'Alaster', 'Dilleston', 'Kalamangog', 'Philippines', '134-609-5815');
insert into customer (id, first_name, last_name, city, country, phone) values (93, 'Vance', 'Tunuy', 'Cabrero', 'Chile', '384-577-2882');
insert into customer (id, first_name, last_name, city, country, phone) values (94, 'Ado', 'Glayzer', 'Tando Jām', 'Pakistan', '485-417-5473');
insert into customer (id, first_name, last_name, city, country, phone) values (95, 'Dorothea', 'Jerrams', 'Chignayhua', 'Peru', '520-517-3684');
insert into customer (id, first_name, last_name, city, country, phone) values (96, 'Yetty', 'Blasdale', 'Béziers', 'France', '406-800-9989');
insert into customer (id, first_name, last_name, city, country, phone) values (97, 'Emmey', 'Plaister', 'Phan Thong', 'Thailand', '659-127-7189');
insert into customer (id, first_name, last_name, city, country, phone) values (98, 'Elvin', 'Towll', 'Padangguci', 'Indonesia', '448-381-5066');
insert into customer (id, first_name, last_name, city, country, phone) values (99, 'Wylie', 'Balsom', 'Sukkozero', 'Russia', '159-466-1513');
insert into customer (id, first_name, last_name, city, country, phone) values (100, 'Allys', 'Issacov', 'Zhongcheng', 'China', '496-536-6510');

insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (1, 'Linkbuzz', 'Alta Blei', 'Pappádos', 'Greece', '903-724-2989', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (2, 'Browsezoom', 'Cherrita Leeb', 'Neftegorsk', 'Russia', '341-298-9178', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (3, 'Centidel', 'Karlan Varns', 'Ayabe', 'Japan', '401-217-0135', '657-487-1812');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (4, 'Zoonoodle', 'Lorelle Basten', 'Sivaki', 'Russia', '445-722-9749', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (5, 'Pixonyx', 'Gibb Petyanin', 'Arlington', 'United States', '571-495-9564', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (6, 'Twinder', 'Bethina Entissle', 'Aguasay', 'Venezuela', '755-559-7451', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (7, 'Dynabox', 'Odelinda Thorneloe', 'Shināş', 'Oman', '932-987-3625', '530-396-8192');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (8, 'Thoughtstorm', 'Denice Jiru', 'Dolany', 'Czech Republic', '390-722-9940', '458-896-9319');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (9, 'Katz', 'Byrann Corselles', 'Dukuhpicung', 'Indonesia', '824-635-3240', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (10, 'Quatz', 'Van Romans', 'Ahar', 'Iran', '446-356-8101', '516-859-6617');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (11, 'Realcube', 'Selestina Wyvill', 'Loudun', 'France', '296-143-4015', '347-995-0862');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (12, 'Mybuzz', 'Euell Trail', 'Peruc', 'Czech Republic', '508-256-5742', '511-498-9584');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (13, 'Kazu', 'Vanessa Sellor', 'San José de Cusmapa', 'Nicaragua', '418-346-9293', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (14, 'Babbleblab', 'Calli Sacker', 'San Antonio', 'United States', '210-764-8131', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (15, 'Gigazoom', 'Caron Rulton', 'Del Pilar', 'Philippines', '521-509-3599', '383-591-5236');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (16, 'Trilith', 'Jenilee Bickerstasse', 'Strzelce Krajeńskie', 'Poland', '449-155-1896', '542-408-5114');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (17, 'Yodel', 'Wye Caller', 'Velká Polom', 'Czech Republic', '736-117-9244', '736-869-7407');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (18, 'Eare', 'Kahaleel Bloom', 'Ust’-Omchug', 'Russia', '589-526-2156', '736-729-6359');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (19, 'Oyondu', 'Bonnee Rraundl', 'Leipsoí', 'Greece', '530-396-0541', '287-824-3516');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (20, 'Meejo', 'Clara Austick', 'Leiguan', 'China', '688-130-7062', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (21, 'Twimbo', 'Ambrose Benterman', 'Tangfang', 'China', '820-385-1167', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (22, 'Realfire', 'Lorinda Trowbridge', 'Kilim', 'Philippines', '479-806-2781', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (23, 'Dynazzy', 'Jaynell Hawson', 'Nova Petrópolis', 'Brazil', '689-437-7688', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (24, 'Tagchat', 'Spike Gaul', 'Morong', 'Philippines', '862-469-6475', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (25, 'Youspan', 'Marena Brocklesby', 'Tendō', 'Japan', '444-258-2982', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (26, 'Youbridge', 'Linnie Saddleton', 'Zhangjiang', 'China', '649-563-5934', '287-596-1602');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (27, 'Jetwire', 'Jaymee Shimmin', 'Puncakwangi', 'Indonesia', '400-391-4343', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (28, 'Fivechat', 'Talyah Creed', 'Novotroitskaya', 'Russia', '339-702-1989', '566-439-7436');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (29, 'Bubblemix', 'Jeanette Clooney', 'Bandera', 'Argentina', '120-880-5889', '697-157-3629');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (30, 'Gigashots', 'Annamaria Heisler', 'Alavus', 'Finland', '909-993-1589', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (31, 'Skinder', 'Sawyer Klaaasen', 'Handan', 'China', '818-477-9901', '560-941-9841');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (32, 'Realbridge', 'Vonny Vicker', 'Minzheng', 'China', '255-566-6943', null);
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (33, 'Ntag', 'Tawsha Jory', 'Santa Rosa', 'Brazil', '602-371-6610', '780-682-5366');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (34, 'Dynazzy', 'Muriel Cuppitt', 'Cikuray', 'Indonesia', '645-677-6902', '889-603-7272');
insert into supplier (id, company_name, contact_name, city, country, phone, fax) values (35, 'Thoughtmix', 'Flin Ohrt', 'San Martin', 'Mexico', '310-276-4116', null);


insert into order_item (id, unit_price, quantity, order_id, product_id) values (1, 37.95, 17, 15, 41);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (2, 25.89, 3, 753, 18);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (3, 35.26, 47, 538, 33);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (4, 46.17, 19, 352, 95);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (5, 45.03, 37, 133, 38);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (6, 18.43, 41, 633, 22);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (7, 21.1, 36, 602, 18);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (8, 28.89, 38, 797, 43);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (9, 19.95, 39, 104, 97);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (10, 42.46, 38, 78, 93);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (11, 40.49, 27, 455, 45);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (12, 37.95, 26, 166, 80);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (13, 37.52, 47, 769, 69);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (14, 13.68, 6, 323, 89);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (15, 15.42, 21, 136, 57);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (16, 32.31, 34, 130, 98);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (17, 36.05, 48, 69, 49);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (18, 37.39, 3, 635, 86);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (19, 26.55, 13, 280, 77);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (20, 32.82, 20, 716, 85);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (21, 29.83, 27, 450, 33);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (22, 32.08, 11, 562, 92);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (23, 16.69, 43, 258, 56);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (24, 30.48, 2, 75, 47);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (25, 49.02, 6, 264, 99);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (26, 36.6, 5, 616, 35);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (27, 36.92, 34, 395, 56);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (28, 49.14, 41, 123, 52);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (29, 38.4, 1, 271, 10);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (30, 25.54, 50, 210, 2);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (31, 19.74, 34, 83, 4);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (32, 15.46, 47, 296, 56);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (33, 37.71, 25, 537, 11);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (34, 38.59, 18, 84, 29);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (35, 22.72, 20, 152, 46);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (36, 38.52, 34, 116, 75);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (37, 10.75, 11, 471, 42);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (38, 16.9, 24, 45, 98);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (39, 41.12, 4, 504, 92);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (40, 34.24, 48, 137, 25);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (41, 28.58, 3, 683, 39);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (42, 35.6, 31, 607, 92);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (43, 23.15, 17, 609, 59);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (44, 23.57, 38, 649, 14);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (45, 11.89, 11, 753, 35);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (46, 47.2, 36, 341, 35);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (47, 35.68, 44, 457, 33);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (48, 39.75, 3, 316, 85);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (49, 20.57, 20, 605, 14);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (50, 26.75, 30, 414, 2);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (51, 13.26, 50, 324, 13);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (52, 18.13, 29, 556, 31);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (53, 25.66, 24, 559, 43);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (54, 17.31, 31, 620, 85);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (55, 13.97, 21, 191, 44);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (56, 49.58, 38, 164, 55);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (57, 13.91, 18, 252, 86);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (58, 10.87, 29, 727, 14);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (59, 11.53, 31, 501, 36);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (60, 42.82, 46, 45, 90);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (61, 10.71, 12, 532, 89);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (62, 38.1, 19, 17, 22);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (63, 47.78, 48, 88, 36);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (64, 45.37, 4, 22, 5);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (65, 24.46, 9, 461, 62);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (66, 32.42, 25, 330, 89);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (67, 44.59, 22, 653, 1);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (68, 17.61, 11, 424, 12);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (69, 43.5, 7, 665, 22);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (70, 20.09, 15, 620, 77);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (71, 43.45, 43, 741, 96);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (72, 29.9, 45, 766, 92);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (73, 43.97, 8, 532, 42);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (74, 13.3, 16, 142, 94);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (75, 40.6, 39, 690, 34);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (76, 19.6, 6, 596, 26);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (77, 13.82, 1, 46, 18);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (78, 33.12, 25, 208, 29);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (79, 25.95, 16, 689, 87);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (80, 14.25, 18, 679, 20);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (81, 38.92, 37, 46, 83);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (82, 23.88, 43, 150, 71);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (83, 32.96, 23, 605, 90);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (84, 23.51, 50, 504, 93);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (85, 35.19, 28, 237, 62);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (86, 20.19, 36, 663, 37);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (87, 34.9, 34, 26, 67);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (88, 36.7, 26, 89, 40);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (89, 25.97, 1, 785, 31);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (90, 31.26, 23, 60, 78);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (91, 21.2, 39, 700, 30);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (92, 22.76, 32, 454, 20);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (93, 21.49, 45, 66, 54);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (94, 36.44, 13, 610, 29);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (95, 37.92, 41, 29, 87);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (96, 15.46, 29, 20, 10);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (97, 36.03, 38, 429, 12);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (98, 12.17, 23, 687, 73);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (99, 29.14, 50, 486, 15);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (100, 25.25, 2, 665, 17);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (101, 19.56, 39, 750, 74);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (102, 16.25, 26, 629, 84);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (103, 49.81, 35, 575, 24);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (104, 11.18, 18, 459, 41);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (105, 31.14, 13, 683, 79);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (106, 42.74, 1, 161, 33);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (107, 39.02, 43, 512, 45);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (108, 18.68, 13, 607, 95);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (109, 15.94, 43, 536, 34);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (110, 34.62, 19, 543, 19);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (111, 20.6, 27, 450, 30);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (112, 49.96, 20, 235, 23);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (113, 32.51, 13, 33, 66);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (114, 41.86, 18, 713, 66);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (115, 49.52, 43, 790, 36);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (116, 15.68, 46, 83, 61);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (117, 34.55, 16, 268, 67);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (118, 21.28, 50, 738, 19);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (119, 25.98, 46, 338, 50);
insert into order_item (id, unit_price, quantity, order_id, product_id) values (120, 49.55, 6, 92, 43);

insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (1, 'Olives - Kalamata', 27, 55.18, 1.3, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (2, 'Oil - Coconut', 14, 224.6, 2.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (3, 'Nantucket Apple Juice', 20, 379.34, 1.8, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (4, 'Bread - Raisin Walnut Oval', 8, 461.22, 2.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (5, 'Compound - Rum', 14, 20.79, 3.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (6, 'Onions - Cooking', 17, 304.26, 2.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (7, 'Pepper - Cayenne', 33, 473.55, 1.2, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (8, 'Bread - Crumbs, Bulk', 11, 401.56, 1.6, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (9, 'Carrots - Mini, Stem On', 31, 207.88, 2.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (10, 'Danishes - Mini Cheese', 15, 429.06, 1.8, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (11, 'Bacardi Breezer - Strawberry', 5, 421.96, 2.2, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (12, 'Juice - Prune', 14, 156.05, 1.0, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (13, 'Squid - Breaded', 4, 135.01, 2.3, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (14, 'Soup Campbells - Tomato Bisque', 29, 137.73, 1.1, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (15, 'Carbonated Water - Orange', 12, 353.35, 1.3, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (16, 'Spinach - Spinach Leaf', 5, 159.03, 1.1, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (17, 'Veal - Eye Of Round', 32, 382.6, 2.7, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (18, 'Veal - Inside', 29, 229.92, 1.8, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (19, 'Sauce - Hp', 1, 498.05, 2.4, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (20, 'Black Currants', 13, 218.19, 2.4, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (21, 'Mustard - Dry, Powder', 18, 80.93, 1.9, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (22, 'C - Plus, Orange', 23, 93.84, 1.6, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (23, 'Napkin White - Starched', 26, 477.44, 2.6, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (24, 'Vermouth - Sweet, Cinzano', 8, 446.2, 1.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (25, 'Food Colouring - Orange', 7, 212.47, 3.0, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (26, 'Flavouring - Orange', 30, 53.71, 1.7, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (27, 'Mousse - Mango', 19, 456.67, 2.1, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (28, 'Nut - Chestnuts, Whole', 23, 375.24, 1.3, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (29, 'Wine - Red, Pinot Noir, Chateau', 18, 109.03, 2.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (30, 'Cookie Dough - Double', 14, 286.74, 1.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (31, 'Mushroom - King Eryingii', 12, 457.28, 1.5, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (32, 'Trout - Rainbow, Frozen', 27, 351.85, 2.3, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (33, 'Lamb - Leg, Diced', 35, 121.23, 2.6, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (34, 'Lobak', 19, 492.24, 2.9, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (35, 'Coffee - Hazelnut Cream', 8, 336.73, 2.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (36, 'Pike - Frozen Fillet', 21, 448.04, 2.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (37, 'Pasta - Detalini, White, Fresh', 31, 444.8, 1.4, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (38, 'Beer - Blue', 14, 11.18, 1.7, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (39, 'Pear - Asian', 16, 428.52, 1.9, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (40, 'Onions - Vidalia', 15, 400.16, 1.1, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (41, 'Water - San Pellegrino', 21, 350.95, 2.8, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (42, 'Beef - Cooked, Corned', 17, 385.05, 2.2, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (43, 'Scallops 60/80 Iqf', 18, 158.9, 2.9, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (44, 'Wine - Sauvignon Blanc', 26, 370.2, 2.1, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (45, 'Beer - Mill St Organic', 29, 481.35, 1.3, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (46, 'Sauce - Soya, Light', 30, 227.84, 3.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (47, 'Cookies Oatmeal Raisin', 34, 47.99, 2.3, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (48, 'Basil - Seedlings Cookstown', 10, 212.34, 1.8, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (49, 'Chinese Lemon Pork', 13, 468.07, 2.7, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (50, 'Mushroom - Enoki, Dry', 18, 163.5, 1.5, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (51, 'Sweet Pea Sprouts', 15, 201.44, 1.6, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (52, 'Seedlings - Buckwheat, Organic', 27, 311.19, 1.5, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (53, 'The Pop Shoppe - Cream Soda', 5, 211.19, 1.6, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (54, 'Sauce - Cranberry', 23, 115.95, 1.3, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (55, 'Lemonade - Natural, 591 Ml', 19, 366.64, 2.6, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (56, 'Danishes - Mini Cheese', 3, 490.85, 1.9, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (57, 'Scallop - St. Jaques', 27, 478.42, 1.2, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (58, 'Tea - Darjeeling, Azzura', 25, 414.11, 2.3, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (59, 'Bread - Pita', 33, 144.99, 1.7, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (60, 'Ice Cream Bar - Oreo Sandwich', 22, 62.09, 3.0, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (61, 'True - Vue Containers', 34, 196.27, 2.9, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (62, 'Squid Ink', 13, 33.54, 2.5, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (63, 'Chef Hat 20cm', 35, 447.91, 1.9, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (64, 'Jack Daniels', 18, 274.93, 2.5, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (65, 'Artichoke - Fresh', 9, 22.56, 3.0, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (66, 'Bread - Bagels, Plain', 8, 217.0, 1.5, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (67, 'Pastry - Choclate Baked', 8, 434.48, 2.2, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (68, 'Tart - Raisin And Pecan', 30, 423.41, 2.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (69, 'Pails With Lids', 25, 258.83, 2.2, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (70, 'Table Cloth 81x81 White', 13, 349.04, 1.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (71, 'Wine - Manischewitz Concord', 8, 351.03, 2.1, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (72, 'Wine - Valpolicella Masi', 11, 133.04, 2.6, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (73, 'Mushroom - Shitake, Dry', 14, 83.66, 3.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (74, 'Eggplant - Baby', 32, 248.13, 2.4, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (75, 'Squid Ink', 20, 242.2, 2.4, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (76, 'Tomatoes Tear Drop', 14, 169.19, 1.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (77, 'Beef - Ox Tongue', 11, 132.5, 3.0, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (78, 'Spice - Montreal Steak Spice', 11, 14.75, 1.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (79, 'Pepper - Orange', 31, 69.24, 2.6, false);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (80, 'Everfresh Products', 6, 87.23, 1.9, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (81, 'Tuna - Salad Premix', 17, 316.46, 1.4, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (82, 'Chervil - Fresh', 13, 289.54, 2.0, true);
insert into product (id, product_name, supplier_id, unit_price, package, is_discontinued) values (83, 'Duck - Breast', 32, 275.52, 2.3, true);




--#1--
select * from customer where country = 'Canada';

--#2--
select distinct country from customer;

--#3--
select count(id) from orders;

--#4--
select max(unit_price) from order_item;

--#5--
select sum(total_amount) from orders;

--#6--
select sum(total_amount) from orders where (select extract(year from order_date) ='2014');

--#7--
select avg(unit_price) from order_item;

--#8--
select avg(total_amount), customer_id from orders group by customer_id;

--#9--
select * from customer where country ilike 'Brazil' or country ilike 'Spain';

--#10--
select * from orders where (select extract(year from order_date) between '2013' and '2014') and total_amount<'100.00';

--#11--
select * from customer where country = 'Spain' or country = 'Italy' or country = 'Germany' or country = 'France' order by country;

--#12--
select  c.country from customer join supplier c on customer.country = c.country group by c.country;

--#13--
select * from customer where first_name ilike 'Jo%';

--#14-- Н
select * from customer where first_name ilike '___a';

--#15--
select country,count(id)  from customer group by country;

--#16--
select country,count(id)  from customer group by country order by count(id) desc;

--#17--
select sum(total_amount), count(*), orders.customer_id from orders join customer c on c.id = orders.customer_id group by customer_id
order by sum(total_amount) desc;

--#18--
select sum(total_amount), count(*), customer_id, quantity from orders join order_item oi on orders.id = oi.order_id
where quantity > 20 group by quantity, customer_id;

