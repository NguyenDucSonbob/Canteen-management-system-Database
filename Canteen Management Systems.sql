Create table Administrator(
UniqueID int primary key,
Names varchar(50),
Passwords int
);

create table Student (
StudentID int primary key,
Majors VARCHAR (50),
Classes VARCHAR (50),
Mobilenumbers int,
id_Users int ,
foreign key (id_Users) references Users(id_Users)
);

create table Orders (
OrderID varchar(50)primary key,
Orderdate date,
TotalAmount int,
id_Users int, 
foreign key (id_Users) references Users(id_Users)
);


create table Fooditem (
id_FooditemID varchar(50) primary key,
Category VARCHAR (50),
Foodname VARCHAR (50),
Prices int,
id_Users int, 
foreign key (id_Users) references Users(id_Users)
);

create table Product (
id_ProductID VARCHAR (50) primary key,
ProductName VARCHAR (50),
Category VARCHAR (50),
Prices int,
id_Users int ,
foreign key (id_Users) references Users(id_Users)
);

create table Orderdetail (
id_OrderdetailID varchar(50) primary key,
OrderID int,
Quantity int,
Canteennumber VARCHAR (20),
id_FooditemID int,
id_ProductID int,
foreign key (id_FooditemID) REFERENCES Fooditem (id_FooditemID),
foreign key (id_ProductID) REFERENCES Product (id_ProductID),
foreign key (OrderID) REFERENCES Orders(OrderID)
);

create table FavoriteFood (
FavoriteID varchar(50) primary key,
id_FooditemID int,
id_Users int,
foreign key (id_FooditemID) 
REFERENCES Fooditem (id_FooditemID),
foreign key (id_Users) 
references Users(id_Users)
);

create table Inventory (
InventoryID varchar(50) primary key,
Quantity int,
id_ProductID varchar(50),
foreign key (id_ProductID) 
REFERENCES Product (id_ProductID)
);
CREATE TABLE Administrator(
UniqueID int primary key,
Names varchar(50),
Passwords int,
id_Users int,
foreign key (id_Users) REFERENCES Users(id_Users)
);



INSERT INTO Staff (StaffID, Fullname, Positions, Salary, Mobile, Gender,id_Users)VALUES
(1,'Truong Duc Anh', 'Boi ban', 4000000, '0396987542','Male',2003),
(2,'Bui Quang Dong', 'Thu ngan', 4500000, '0349989872','Male',2005),
(3,'Bui Minh Duc', 'Ve sinh', 3500000, '0965387156','Male',2004),
(4,'Nguyen Thi Viet Anh', 'Thu ngan', 4500000, '0752356978','FEMALE',2005),
(5,'Nguyen Thi Hong Ha', 'Boi ban', 4000000, '0369571349','FEMALE',2004),
(6,'Do Manh Hai', 'Boi ban', 4000000, '0999888777','Male',2001),
(7,'Nguyen Mai Phuong', 'Ve sinh', 3500000, '0675169425','FEMALE',2003);

CREATE TABLE Student (
StudentID int primary key,
Student varchar(50),
Majors VARCHAR (50),
Classes VARCHAR (50),
Mobilenumbers int,
id_Users int ,
foreign key (id_Users) references Users(id_Users)
);

-- Chèn dữ liệu cho bảng Student
INSERT INTO Student (StudentID, Student, Majors, Classes,Mobilenumbers) VALUES
(22070022, 'Nguyen Thi Viet Anh', 'FDB', 'FDB2022B', '982455735'),
(22070023, 'Nguyen Ngoc Dung', 'FDB', 'FDB2022B', '362156168'),
(22070036, 'Duong Quoc Anh', 'FDB', 'FDB2022B', '0705154280'),
(22070034, 'Dinh Gia Linh', 'FDB', 'FDB2022B', '936311194'),
(22070055, 'Nguyen Duy Khanh', 'FDB', 'FDB2022B', '0342873956'),
(22070093, 'Nguyen Ngoc Linh', 'FDB', 'FDB2022B', '0858467896'),
(22070097, 'Nguyen Ngoc Khanh', 'FDB', 'FDB2022B', '0838583982'),
(22070130, 'Nguyen Quoc Anh', 'FDB', 'FDB2022B', '923768274'),
(22070141, 'Nguyen Ngoc Mai', 'FDB', 'FDB2022B', '0886642111'),
(22070150, 'Vuong Dinh Chien', 'FDB', 'FDB2022B', '0849223566'),
(22070152, 'Nguyen Nhat Anh', 'FDB', 'FDB2022B', '0399852196'),
(22070159, 'Nguyen Thi Lan Anh', 'FDB', 'FDB2022B', '967129394'),
(22070170, 'Vu Ngoc Anh', 'FDB', 'FDB2022B', '0936350412'),
(22070180, 'Vo Duc Kien', 'FDB', 'FDB2022B', '965517368'),
(22070189, 'Bui Thi Ngoc Anh', 'FDB', 'FDB2022B', '0778237918'),
(22070183, 'Tran Hung', 'FDB', 'FDB2022B', '385783345'),
(22070190, 'Nguyen Tien Dat', 'FDB', 'FDB2022B', '926571876'),
(22070199, 'Tran Dieu Anh', 'FDB', 'FDB2022B', '366259127'),
(22070220, 'Nguyen Phong Lan', 'FDB', 'FDB2022B', '967896534'),
(22070225, 'Nguyen Tien Long', 'FDB', 'FDB2022B', '0965308507'),
(22070216, 'Le Thi Thu Huyen', 'FDB', 'FDB2022B', '328236115'),
(22070233, 'Vu An Ha My', 'FDB', 'FDB2022B', '986335674'),
(22070270, 'Vu Duy Khanh', 'FDB', 'FDB2022B', '983667654'),
(22070256, 'Nguyen Duc Dai', 'FDB', 'FDB2022B', '0963929848'),
(22070254, 'Do Thi Lan Anh', 'FDB', 'FDB2022B', '0975598366'),
(22070264, 'Nguyen Duc Huy', 'FDB', 'FDB2022B', '912210603'),
(22070278, 'Nguyen Van Giang', 'FDB', 'FDB2022B', '384971167'),
(22070297, 'Nguyen Tung Chi', 'FDB', 'FDB2022B', '0374898575'),
(22070314, 'Cu Ngoc Ha Minh', 'FDB', 'FDB2022B', '335194662'),
(22070316, 'Luc Viet Anh', 'FDB', 'FDB2022B', '0383142678'),
(22070344, 'Tran Nhat Minh', 'FDB', 'FDB2022B', '987859580'),
(22070497, 'Nguyen Tung Duong', 'FDB', 'FDB2022B', '947254086'),
(22070713, 'Le Thi Thu Hoai', 'FDB', 'FDB2022B', '817356399'),
(22071001, 'Tran Tue Tam', 'FDB', 'FDB2022B', '388650791'),
(22070013, 'Bui Thu Phuong', 'FDB', 'FDB2022B', '0967313603'),
(22070025, 'Vu Hai Nam', 'FDB', 'FDB2022B', '0869925530'),
(22070030, 'Pham Hieu Ngan', 'FDB', 'FDB2022B', '0386517508'),
(22070086, 'Pham Phuong Ngan', 'FDB', 'FDB2022B', '0818147689'),
(22070122, 'Nguyen Le Thu Tra', 'FDB', 'FDB2022B', '0397244875'),
(22070174, 'Nguyen Le Hoai Thuong', 'FDB', 'FDB2022B', '0936391458'),
(22070121, 'Pham Cao Nguyen', 'FDB', 'FDB2022B', '0366781034'),
(22070155, 'Nguyen Minh Thai', 'FDB', 'FDB2022B', '392821410'),
(22070158, 'Le Gia Tien Vinh', 'FDB', 'FDB2022B', '998672057'),
(22070202, 'Nguyen Dang Truong Son', 'FDB', 'FDB2022B', '977654370'),
(22070163, 'Nguyen Cong Vinh', 'FDB', 'FDB2022B', '394440738'),
(22070179, 'Duong Thi Phuong Ngoc', 'FDB', 'FDB2022B', '0947046438'),
(22070171, 'Nguyen Xuan Sang', 'FDB', 'FDB2022B', '0896413996'),
(22070166, 'Tong Ngoc Tram', 'FDB', 'FDB2022B', '0928519999'),
(22070191, 'Le Minh Son', 'FDB', 'FDB2022B', '976695767'),
(22070205, 'Nguyen Duc Son', 'FDB', 'FDB2022B', '0847257173'),
(22070222, 'Pham Hoang Minh Son', 'FDB', 'FDB2022B', '347405982'),
(22070276, 'Nguyen Pham Quynh Trang', 'FDB', 'FDB2022B', '859181256'),
(22070263, 'Trieu Gia Phong', 'FDB', 'FDB2022B', '816056037'),
(22070284, 'Do Thi Bao Yen', 'FDB', 'FDB2022B', '962316404'),
(22070286, 'Ngo Manh Thu', 'FDB', 'FDB2022B', '978360291'),
(22070317, 'Nguyen Manh Thai', 'FDB', 'FDB2022B', '357871111'),
(22070730, 'Trinh Dai Nghia', 'FDB', 'FDB2022B', '356426676'),
(22071082, 'Pham Hien Thao', 'FDB', 'FDB2022B', '369293223'),
(22070103, 'Nguyen Dang Tuan', 'FDB', 'FDB2022B', '829630036'),
(22070201, 'Truong Tien Thinh', 'FDB', 'FDB2022B', '397975936'),
(22070232, 'Hoang The Gia Bach', 'FDB', 'FDB2022B', '981891734'),
(22070339, 'Ngo Vu Nhat Quang', 'FDB', 'FDB2022B', '965754204'),
(22070347, 'Tran Ngoc Thien Thanh', 'FDB', 'FDB2022B', '982781178'),
(22070219, 'Tran Ngoc Minh', 'FDB', 'FDB2022B', '948810105'),
(22070280, 'Pham Minh Hien', 'FDB', 'FDB2022B', '359860095'),
(22070265, 'Pham Phuong Thao', 'FDB', 'FDB2022B', '356218651'),
(23070996, 'Thai Le Duy', 'IB', 'IB2020B 1', '969561067'),
(23070038, 'Bui Huong Thao', 'IB', 'IB2021D', '911558425'),
(23070227, 'Nguyen Minh Tuan', 'IN', 'IB2020B', '963946616'),
(23070135, 'Nguyen Khanh Linh', 'IB', 'IB2020B', '941237247'),
(23070422, 'Vu Nguyen Yen Binh', 'MKT', 'DUAL-MKT2021A', '814719205'),
(23070100, 'Vu Le Ngoc Linh', 'IB', 'IB2020B 1', '926537635'),
(23070400, 'Nguyen Kim Chi', 'BDA', 'BDA2021C', '376575267'),
(23071271, 'Nguyen Thuy Duong', 'IB', 'IB2020B 1', '857564486'),
(23070061, 'Ho Thanh Binh', 'BDA', 'BDA2021A', '911058657'),
(23070885, 'Nguyen Tran Nguyen Hung', 'IB', 'IB2020F', '962240524'),
(23070475, 'Tran Tien Anh', 'BDA', 'BDA2021A', '944036500'),
(23070276, 'Nguyen Viet Hoang', 'BDA', 'BDA2021C', '325453903'),
(23070208, 'Nguyen Quoc Anh Quan', 'IB', 'IB2020F', '357439179'),
(23070155, 'Do Thanh Thao', 'BDA', 'BDA2021A', '986800532'),
(23070269, 'Luu Khanh Huyen', 'MIS', 'MIS2020A 2', '971113245'),
(23070197, 'Nguyen Manh Quan', 'MIS', 'MIS2020B', '363666435');


Insert into Administrator (UniqueID,Names,Passwords,id_Users) values
(0000," Trum canteen",123456,2000);

INSERT INTO Customer (Mobilenumber, FullName, id_Users) VALUES
('0394514667', 'Nguyen Thi Huong Giang', 2030),
('965168918', 'Nguyen Phuong Thao', 2031),
('0945627003', 'Nguyen Phuong Uyen', 2032),
('0966303041', 'Pham Nguyen Uyen Nhi', 2033),
('0962964066', 'Dao Quynh Trang', 2034),
('0981363965', 'Pham Cao Quynh Chi', 2035),
('0973088557', 'Nguyen Quynh Chi', 2036),
('0967244585', 'Nguyen Thi Quynh Mai', 2037),
('0964875716', 'Dang Thi Huyen Trang', 2038),
('0942800189', 'Mai Khanh Dung', 2039),
('0587373470', 'Tran Thanh Tra', 2040),
('0867700931', 'Vu Truong Anh', 2041),
('0941185323', 'Phuong Thu Huong', 2042),
('0338745908', 'Hoang Thi Thu Hien', 2043),
('0788331889', 'Nguyen Hai Yen', 2044);


INSERT INTO Payments (PaymentID, OrderID, Paymentdate, Amount) VALUES
('PM00000', 'OD000000', '2023-11-03', 1),
('PM00001', 'OD000001', '2023-11-12', 1),
('PM00002', 'OD000002', '2023-11-21', 1),
('PM00003', 'OD000003', '2023-11-28', 1),
('PM00004', 'OD000004', '2023-12-05', 1),
('PM00005', 'OD000005', '2023-12-13', 1),
('PM00006', 'OD000006', '2023-12-20', 1),
('PM00007', 'OD000007', '2023-11-08', 1),
('PM00008', 'OD000008', '2023-11-17', 1),
('PM00009', 'OD000009', '2023-11-27', 1),
('PM00010', 'OD000010', '2023-11-02', 1),
('PM00011', 'OD000011', '2023-12-01', 1),
('PM00012', 'OD000012', '2023-12-08', 1),
('PM00013', 'OD000013', '2023-12-16', 1),
('PM00014', 'OD000014', '2023-11-23', 1),
('PM00015', 'OD000015', '2023-12-04', 1),
('PM00016', 'OD000016', '2023-11-13', 1),
('PM00017', 'OD000017', '2023-12-18', 1),
('PM00018', 'OD000018', '2023-11-30', 1),
('PM00019', 'OD000019', '2023-11-09', 1),
('PM00020', 'OD000020', '2023-11-19', 1),
('PM00021', 'OD000021', '2023-12-14', 1),
('PM00022', 'OD000022', '2023-12-22', 1),
('PM00023', 'OD000023', '2023-11-06', 1),
('PM00024', 'OD000024', '2023-11-15', 1);


INSERT INTO Product (id_ProductID, ProductName, Category, Prices, id_Users) VALUES
('PRD000', 'Cocacola', 'Do uong', 10000, 2012),
('PRD001', 'Dao cao Rau', 'Do ca nhan', 8000, 2013),
('PRD002', 'Lavie', 'Do uong', 8000, 2015),
('PRD003', 'Kem danh rang collgate', 'Do ca nhan', 34000, 2006),
('PRD004', 'Ban chai Oral-B', 'Do ca nhan', 20000, 2007),
('PRD005', 'Sua tam X-Man', 'Do ca nhan', 50000, 2008),
('PRD006', 'Dau goi dau Clear Man', 'Do ca nhan', 50000, 2009),
('PRD007', 'Highland coffee', 'Do uong', 15000, 2010),
('PRD008', 'Giay an Kleenex', 'Do ca nhan', 20000, 2017),
('PRD009', 'Tra O Long', 'Do uong', 12000, 2018),
('PRD010', 'Sua Vinamilk', 'Do uong', 10000, 2019),
('PRD011', 'But An Do', 'Do ca nhan', 6000, 2021),
('PRD012', 'But chi', 'Do ca nhan', 12000, 2010),
('PRD013', 'pepsi', 'Do uong', 10000, 2011),
('PRD014', 'C2', 'Do uong', 10000, 2020),
('PRD015', 'Tra xanh khong do', 'Do uong', 10000, 2008),
('PRD016', 'Lifeboy', 'Do ca nhan', 15000, 2009),
('PRD017', 'Danisa', 'Do uong', 8000, 2010),
('PRD018', 'But chi kim', 'Do ca nhan', 20000, 2014),
('PRD019', 'Thuoc', 'Do ca nhan', 5000, 2017);

INSERT INTO FavoriteFood (FavoriteID, id_FooditemID, id_Users) VALUES
('FAV00000', 'FD000', 2006),
('FAV00001', 'FD001', 2007),
('FAV00002', 'FD002', 2008),
('FAV00003', 'FD003', 2009),
('FAV00004', 'FD004', 2010),
('FAV00005', 'FD005', 2011),
('FAV00006', 'FD006', 2012),
('FAV00007', 'FD007', 2013),
('FAV00008', 'FD008', 2014),
('FAV00009', 'FD009', 2015),
('FAV00010', 'FD010', 2016),
('FAV00011', 'FD011', 2017),
('FAV00012', 'FD012', 2018),
('FAV00013', 'FD013', 2019),
('FAV00014', 'FD014', 2020),
('FAV00015', 'FD015', 2021),
('FAV00016', 'FD016', 2006),
('FAV00017', 'FD017', 2007),
('FAV00018', 'FD018', 2008),
('FAV00019', 'FD019', 2009),
('FAV00020', 'FD020', 2010),
('FAV00021', 'FD021', 2011),
('FAV00022', 'FD022', 2012),
('FAV00023', 'FD023', 2013),
('FAV00024', 'FD024', 2014);

INSERT INTO Inventory (InventoryID, Quantity, id_ProductID) VALUES
('INV00000', 102, 'PRD000'),
('INV00001', 160, 'PRD001'),
('INV00002', 109, 'PRD002'),
('INV00003', 203, 'PRD003'),
('INV00004', 256, 'PRD004'),
('INV00005', 305, 'PRD005'),
('INV00006', 142, 'PRD006'),
('INV00007', 150, 'PRD007'),
('INV00008', 165, 'PRD008'),
('INV00009', 142, 'PRD009'),
('INV00010', 112, 'PRD010'),
('INV00011', 63, 'PRD011'),
('INV00012', 152, 'PRD012'),
('INV00013', 133, 'PRD013'),
('INV00014', 205, 'PRD014'),
('INV00015', 146, 'PRD015'),
('INV00016', 164, 'PRD016'),
('INV00017', 149, 'PRD017'),
('INV00018', 108, 'PRD018'),
('INV00019', 145, 'PRD019'),
('INV00020', 178, 'PRD020'),
('INV00021', 184, 'PRD021'),
('INV00022', 123, 'PRD022'),
('INV00023', 25, 'PRD023'),
('INV00024', 154, 'PRD024');

INSERT INTO Import (ImportID, Quantity, ImportDate, Supplier, id_ProductID) VALUES
('IMP00000', 102, '2023-11-02', 'Trang An', 'PRD000'),
('IMP00001', 160, '2023-11-05', 'Thanh Long', 'PRD001'),
('IMP00002', 109, '2023-11-08', 'An Tiem', 'PRD002'),
('IMP00003', 203, '2023-11-11', 'Hoa Long', 'PRD003'),
('IMP00004', 256, '2023-11-14', 'Trang An', 'PRD004'),
('IMP00005', 305, '2023-11-18', 'Thanh Long', 'PRD005'),
('IMP00006', 142, '2023-11-21', 'An Tiem', 'PRD006'),
('IMP00007', 150, '2023-11-24', 'Hoa Long', 'PRD007'),
('IMP00008', 165, '2023-11-27', 'Trang An', 'PRD008'),
('IMP00009', 142, '2023-12-01', 'Thanh Long', 'PRD009'),
('IMP00010', 112, '2023-12-05', 'An Tiem', 'PRD010'),
('IMP00011', 63, '2023-12-08', 'Hoa Long', 'PRD011'),
('IMP00012', 152, '2023-12-12', 'Trang An', 'PRD012'),
('IMP00013', 133, '2023-12-15', 'Thanh Long', 'PRD013'),
('IMP00014', 205, '2023-12-18', 'An Tiem', 'PRD014'),
('IMP00015', 146, '2023-12-22', 'Hoa Long', 'PRD015'),
('IMP00016', 164, '2023-12-25', 'Trang An', 'PRD016'),
('IMP00017', 149, '2023-12-28', 'Thanh Long', 'PRD017'),
('IMP00018', 108, '2023-11-03', 'An Tiem', 'PRD018'),
('IMP00019', 145, '2023-11-07', 'Hoa Long', 'PRD019'),
('IMP00020', 178, '2023-11-10', 'Trang An', 'PRD020'),
('IMP00021', 184, '2023-11-13', 'Thanh Long', 'PRD021'),
('IMP00022', 123, '2023-11-17', 'An Tiem', 'PRD022'),
('IMP00023', 25, '2023-11-20', 'Hoa Long', 'PRD023'),
('IMP00024', 154, '2023-11-23', 'Thanh Long', 'PRD024');


SELECT Product.id_ProductID,Orderdetail.Quantity,Product.ProductName ,SUM(Quantity) AS "Tong so san pham"
FROM Orderdetail
Join Product on Product.id_ProductID = Orderdetail.id_ProductID 
GROUP BY Product.id_ProductID,Orderdetail.Quantity,Product.ProductName 
ORDER BY "Tong so san pham" DESC
LIMIT 5;

  SELECT sum(Salary) as" tong luong phai tra 1 thang"
  FROM Staff 


