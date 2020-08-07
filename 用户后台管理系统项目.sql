-- 产品
DROP TABLE product;
SELECT * FROM product;
CREATE TABLE product(   id INT PRIMARY KEY AUTO_INCREMENT,  
			productNum VARCHAR(50) NOT NULL,  
			productName VARCHAR(50),  
			cityName VARCHAR(50),  
			DepartureTime TIMESTAMP,  
			productPrice DOUBLE,  
			productDesc VARCHAR(500),  
			productStatus INT,  
			CONSTRAINT product UNIQUE (id, productNum) );			
INSERT INTO PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus) 
	    VALUES (1, 'itcast-002', '北京三日游', '北京', '2018-10-10 10:10:00.000000', 1200, '不错的旅行', 1); 	    
INSERT INTO PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus) 
	    VALUES (2, 'itcast-003', '上海五日游', '上海', '2018-2-12 14:30:00.000000', 1800, '魔都我来了', 0);     
INSERT INTO PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus) 
	    VALUES (3, 'itcast-001', '北京三日游', '北京', '2018-11-12 10:10:00.000000', 1200, '不错的旅行', 1);
   
-- 订单
DROP TABLE orders;
SELECT * FROM orders;
CREATE TABLE orders(
  id INT AUTO_INCREMENT PRIMARY KEY,
  orderNum VARCHAR(20) NOT NULL UNIQUE,
  orderTime TIMESTAMP,
  peopleCount INT,
  orderDesc VARCHAR(500),
  payType INT,
  orderStatus INT,
  productId INT,
  memberId INT,
  FOREIGN KEY (productId) REFERENCES product(id),
  FOREIGN KEY (memberId) REFERENCES member(id)
);

INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '12345', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 1, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '54321', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 1, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '67890', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 2, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '98765', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 2, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '11111', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 2, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '22222', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 2, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '33333', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 3, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '44444', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 3, 1);
INSERT INTO ORDERS ( ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
VALUES ( '55555', '2018-02-03 12:00:00.000000', 2, '没什么', 0, 1, 3, 1);


-- 会员
DROP TABLE member;
SELECT * FROM member;
CREATE TABLE member(
       id INT AUTO_INCREMENT PRIMARY KEY,
       NAME VARCHAR(20),
       nickname VARCHAR(20),
       phoneNum VARCHAR(20),
       email VARCHAR(20) 
);
INSERT INTO MEMBER ( NAME, nickname, phonenum, email)
VALUES ('张三', '小三', '18888888888', 'zs@163.com');


-- 旅客
DROP TABLE traveller;
SELECT * FROM traveller;
CREATE TABLE traveller(
  id INT AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(20),
  sex VARCHAR(20),
  phoneNum VARCHAR(20),
  credentialsType INT,
  credentialsNum VARCHAR(50),
  travellerType INT
);
INSERT INTO TRAVELLER ( NAME, sex, phonenum, credentialstype, credentialsnum, travellertype)
VALUES ( '张龙', '男', '13333333333', 0, '123456789009876543', 0);
INSERT INTO TRAVELLER ( NAME, sex, phonenum, credentialstype, credentialsnum, travellertype)
VALUES ( '张小龙', '男', '15555555555', 0, '987654321123456789', 1);


-- 订单与旅客中间表
DROP TABLE order_traveller;
SELECT * FROM order_traveller;
CREATE TABLE order_traveller(
  orderId INT,
  travellerId INT,
  FOREIGN KEY (orderId) REFERENCES orders(id),
  FOREIGN KEY (travellerId) REFERENCES traveller(id)
);

INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(1,1);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(3,1);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(9,2);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(7,2);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(2,1);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(6,2);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(4,1);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(8,2);
INSERT INTO ORDER_TRAVELLER(orderId,travellerid) VALUES(5,2);

