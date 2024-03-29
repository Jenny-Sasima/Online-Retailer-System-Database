-- Database Disigned for Online Shopping Vendor

DROP DATABASE IF EXISTS online_retailer;

CREATE DATABASE IF NOT EXISTS online_retailer;

USE online_retailer;

CREATE TABLE IF NOT EXISTS Branch(
	Branch_ID 		VARCHAR(20) 	PRIMARY KEY,
    Branch_Name		VARCHAR(50) NOT NULL,
	Branch_Phone	CHAR(10) NOT NULL
);

INSERT INTO Branch(Branch_ID,Branch_Name,Branch_Phone) VALUES
('15113','Niran Ville 4 (Ram2)','0886270385'),
('04570','Chaloem Phrakiat 48','0886270780'),
('04081','Buathong Parkville','0886269852'),
('14319','Aiyatha Market','0886289451'),
('10165','Ton Mai Khlong 15','0886271354'),
('04853','Bang Luang','0886297131'),
('01520','Piriyalai ','0949933032'),
('16493','Nilubon','0886724822'),
('15640','VillaNova (Bang Phli-Tamru)','0886740874'),
('00781','Pratuchai Phrae','0921177044');

CREATE TABLE IF NOT EXISTS Information_Of_Product(
	Information_No	INT 	PRIMARY KEY,
	How_To_Use		VARCHAR(200),
	Warning			VARCHAR(200) NOT NULL,
	Component_Product	VARCHAR(200) NOT NULL,
	Producer		VARCHAR(50) NOT NULL,
	Logo			VARCHAR(100) NOT NULL,
	Barcode			VARCHAR(100) NOT NULL
);

INSERT INTO Information_Of_Product(Information_No,How_To_Use,Warning,Component_Product,Producer,Logo,Barcode) VALUES
(361714,'Keep in refridgerator ','This product was processed ingredients containing milk, eggs, and wheat.','Flour, Strawberry, Sugar, Egg, Wheat','EZYGO','https://github.com/server/logo/361714.png','https://github.com/server/barcode/361714.png'),
(361716,'Please warm nugget in microwave','This product was processed ingredients containing wheat.','Chicken, Whole wheat flour, Egg','EZYGO','https://github.com/server/logo/361716.png','https://github.com/server/barcode/361716.png'),
(361946,'Keep in refridgerator ','This product was processed ingredients containing wheat, and .egg','Flour, Butter, Sugar, Egg, Wheat','Bow Delicious','https://github.com/server/logo/361946.png','https://github.com/server/barcode/361946.png'),
(361494,NULL,'This product was processed ingredients containing wheat, and egg.','Potato, Rice bran oil, Seasoning','Lay','https://github.com/server/logo/361494.png','https://github.com/server/barcode/361494.png'),
(364974,'Keep in refridgerator ','This product was processed ingredients containing nut.','Cocoa butter, Milk, Cocoa mass, Nut','Nestle','https://github.com/server/logo/364974.png','https://github.com/server/barcode/364974.png'),
(369944,'Keep in refridgerator ','Best if consumed within 1 day after opening.','Soy, Sugar, Konjac jelly','Tofusan','https://github.com/server/logo/369944.png','https://github.com/server/barcode/369944.png'),
(365959,'Keep in refridgerator ','This product was processed ingredients containing milk, eggs, and wheat.','Flour, Egg, Milk, Sugar, Vanilla, Salt','EZYGO','https://github.com/server/logo/365959.png','https://github.com/server/barcode/365959.png'),
(368489,'Keep in refridgerator ','This product was processed ingredients containing milk, eggs, and wheat.','Flour, Egg, Sugar, Straberry, Salt','EZYGO','https://github.com/server/logo/368489.png','https://github.com/server/barcode/368489.png'),
(362212,'-','-','Water','Singha','https://github.com/server/logo/362212.png','https://github.com/server/barcode/362212.png'),
(364647,'Keep in refridgerator ','This product was processed ingredients containing milk, eggs, and wheat.','Milk','EZYGO','https://github.com/server/logo/364647.png','https://github.com/server/barcode/364647.png');

CREATE TABLE IF NOT EXISTS Order_Goods(
	Order_ID 	VARCHAR(50) PRIMARY KEY,
	Payment		VARCHAR(200) NOT NULL,
	Order_Note 	VARCHAR(100),
	Order_Date 	DATE NOT NULL,
	CONSTRAINT Payment_Check CHECK (Payment IN ("Cash", "True money", "Card"))
);

INSERT INTO Order_Goods(Order_ID,Payment,Order_Note,Order_Date) VALUES
('15113211023847536','Cash','Please give me a ketchup','2020-02-01'),
('04570565231315151','True money','Warm in microwave','2021-11-11'),
('04081484416516518','Cash','Please call me when you arrive','2019-02-14'),
('14319261848959634','True money','-','2021-12-08'),
('10165585248484863','Cash','Please give me a plastic spoon','2019-07-19'),
('04081974265189595','Cash','-','2021-08-30'),
('04570841005194849','True money','Please call me when you arrive','2019-10-31'),
('15113898150687895','True money','Please give me a plastic fork','2020-06-17'),
('14319101847858625','Cash','-','2019-01-10'),
('04081956250205486','Cash','Please give me a mayonnaise','2021-03-02'),
('10165520205174856','Cash','-','2019-03-03'),
('04081529620518484','Cash','Warm in microwave','2019-03-26'),
('14319205051859534','True money','-','2020-07-02'),
('04853519848597367','Cash','Please call me when you arrive','2019-05-05'),
('04570260505128495','Cash','Please give me a plastic fork','2020-12-31'),
('15113125128518959','True money','-','2021-05-30'),
('10165595928740299','True money','Please call me when you arrive','2019-07-09'),
('04570548478485010','Cash','Please give me a ketchup','2020-10-30'),
('15113595205184599','Cash','-','2019-11-28'),
('15113592647484586','True money','-','2021-07-26'),
('14319506128956227','True money','Please give me a plastic spoon','2020-11-21'),
('04570205185963628','True money','Please call me when you arrive','2021-12-04'),
('04853059845225269','Cash','Please give me a mayonnaise','2019-01-01'),
('14319958447051955','Cash','-','2020-02-24'),
('04081829129288499','Cash','Please give me a plastic spoon','2021-04-11'),
('04853105051849288','Cash','Please call me when you arrive','2021-10-13'),
('14319292829292484','True money','Warm in microwave','2020-12-13'),
('04570285185487416','Cash','Please give me a plastic fork','2021-03-13'),
('04081928485969127','True money','Please give me a ketchup','2021-06-19'),
('15113529484051258','True money','-','2020-05-18'),
('01520121456875498','Cash','Please give me a plastic fork','2021-08-14'),
('16493126972653192','True money','-','2021-10-17'),
('15640453278415623','Cash','Please call me when you arrive','2020-07-18'),
('00781847625139549','True money','Please give me a ketchup','2021-11-26');

CREATE TABLE IF NOT EXISTS Customer(
	Customer_ID		VARCHAR(20)	PRIMARY KEY,
	Username	VARCHAR(50) NOT NULL,
	Title		VARCHAR(5) NOT NULL,
	Firstname	VARCHAR(50) NOT NULL,
	Lastname	VARCHAR(50) NOT NULL,
	Phone		CHAR(10) NOT NULL,
	Email		VARCHAR(50),
	Date_Of_Birth DATE	NOT NULL,
	Picture_Profile VARCHAR(100),
    Modified_Date	DATE NOT NULL,
    CONSTRAINT 	title	CHECK (Title in ('Miss','Mrs','MR'))		
);

INSERT INTO Customer(Customer_ID,Username,Title,Firstname,Lastname,Phone,Email,Date_Of_Birth,Picture_Profile,Modified_Date) VALUES
('115342','nitnoi97','Mr','Nititas','Noipalee','0954213674','nititas@gmail.com','1997-10-23','https://github.com/server/picture_profile/115342.jpg','2020-07-5'),
('116324','naruponcho','Mr','Narupon','Chokechatree','0845679856','narupon@yahoo.com','1990-02-18','https://github.com/server/picture_profile/116324.jpg','2020-03-23'),
('120031','ballsupachok','Mr','Supachok','Chaichongmee','0836457251','supachook.chai@hotmail.com','2000-07-11','https://github.com/server/picture_profile/120031.png','2020-10-05'),
('125031','0985473210','Mr','Nattapat','Sirilimprapan','0985473210','nattapat@outlook.co.th','1986-09-05','https://github.com/server/picture_profile/125031.png','2020-04-04'),
('137510','bamchotirot89','Mrs','Chotirot','Klinthong','0894718632','chotirot@gmail.com','2002-05-25','https://github.com/server/picture_profile/137510.jpg','2021-06-18'),
('132011','chanakul2002','Miss','Chanakul','Chaliawklang','0812257320','chanakul2002@hotmail.com','2002-05-25','https://github.com/server/picture_profile/132011.jpg','2020-02-01'),
('143002','pon11701','Mr','Pontapan','Polyiam','0957704913','pontapan.pol@yahoo.com','2001-11-07','https://github.com/server/picture_profile/143002.png','2021-05-11'),
('178001','tabanhan9563','Mrs','Wathanya','Tabanhan','0867739563','wathanya.tab@gmail.com','1990-01-02','https://github.com/server/picture_profile/178001.jpg','2021-03-21'),
('179520','AriyaZa','Mr','Ariya','Malai','0985244453','ariya.mai@yahoo.com','1994-06-24','https://github.com/server/picture_profile/179520.png','2021-11-07'),
('204710','nitchamon','Mrs','Nitchamon','Aworn','0899886413','nitchamon2000@hotmail.com','2000-04-12','https://github.com/server/picture_profile/204710.jpg','2021-05-25');

CREATE TABLE IF NOT EXISTS Employee(
	Employee_ID		VARCHAR(20) 	PRIMARY KEY,
    Branch_ID       VARCHAR(20)     NOT NULL,
	Title			VARCHAR(5) NOT NULL,
	Firstname		VARCHAR(50) NOT NULL,
	Lastname		VARCHAR(50) NOT NULL,
	Phone			CHAR(10) NOT NULL,
	Email			VARCHAR(50) NOT NULL,
	Date_Of_Birth	DATE NOT NULL,
	Salary			INT,
	Modified_Date	DATE NOT NULL,
    CONSTRAINT FK_Branch_ID_1 FOREIGN KEY (Branch_ID)
	REFERENCES Branch(Branch_ID),
    CONSTRAINT 	chk_title	CHECK (Title in ('Miss','Mrs','MR'))
);

INSERT INTO Employee(Employee_ID,Branch_ID,Title,Firstname,Lastname,Phone,Email,Date_Of_Birth,Salary,Modified_Date) VALUES
('0633002','15113','Mrs','Kanokwan','Veeraphan','0656456550','kanokvee@gmail.com','1999-12-25',25000,'2021-11-02'),
('0633107','04570','Mr','Chirawat','Boonchai','0932245466','boon12@gmail.com','1997-09-01',20000,'2019-10-31'),
('0633189','04081','Mrs','Nitchamon','Chamsi','0988544544','nitcha24@hotmail.com','2000-04-24',15000,'2020-06-05'),
('0633152','14319','Miss','Marisa','Supasorn','0927919589','marisa.s@hotmail.com','1995-06-24',25000,'2018-05-17'),
('0633166','10165','Mr','Somchai','Panyatip','0929159141','somchai.p@gmail.com','1990-07-13',32000,'2017-07-01'),
('0633257','04853','Mr','Saranya','Meechai','0631455552','saranmee@gmail.com','2001-10-14',15000,'2020-11-25'),
('0633124','15113','Miss','Rattana','Dungphimai','0983716255','ratana97@gmail.com','1997-12-04',18000,'2020-04-18'),
('0633145','04570','Mrs','Alisara','Nonsiri','0925585362','alisa.n9@gmail.com','1999-07-11',35000,'2020-12-25'),
('0633071','04081','Miss','Sasithorn','Phukan','0855422476','sasithorn.p@hotmail.com','2000-06-01',20000,'2019-01-17'),
('0633167','14319','Mrs','Nisachon','Thawieng','0892839079','nisa_chon@hotmail.com','2001-03-28',18000,'2021-02-09'),
('0633095','10165','Mr','Natakorn','Chomphoobut','0981455905','natakorn.c@gmail.com','1998-10-15',27000,'2017-03-07'),
('0633191','04853','Mr','Pakorn','Malai','0924153281','pakorn_ma@gmail.com','2001-08-21',25000,'2020-09-25'),
('0633096','14319','Mrs','Ratha','Sirima','0897425623','ratha.s@hotmail.com','2001-01-01',21000,'2021-11-05'),
('0633187','04853','Mr','Chanon','Siribumrung','0984561474','cha.siri@gmail.com','1997-02-14',17500,'2019-08-19'),
('0633112','15113','Mr','Jirat','Burat','0956523472','jirat95@gmail.com','1995-01-09',30000,'2017-12-01'),
('0633142','10165','Miss','Pimmada',' Jantara','0923565423','pj2001@hotmail.com','2001-05-15',28000,'2021-06-07'),
('0633117','04570','Mrs','Tashita','Poya','0872354986','t_poya@hotmail.com','2000-09-09',22500,'2020-11-09'),
('0633159','01520','Mr','Kontawat','Wisetpaitoon','0947585809','kontawat.wis@gmail.com','2002-04-22',30000,'2021-11-20'),
('0633894','15640','Mr','Vichai','Chaipasit','0923311132','vichai.chi@hotmail.com','1944-04-19',30000,'2021-12-27'),
('0633479','01520','Miss','Titaya','Wisetpaitoon','0863759336','tangmona@gmail.com','2006-04-15',27000,'2020-11-19'),
('0633743','00781','Mr','Danaidech ','Achsamai','0929312311','danaidech.asi@gmail.com','2000-02-05',35000,'2010-12-01'),
('0633794','15640','Miss','Wutichai','Wisetpaitoon','0815834322','wutichai.wis@gmail.com','1972-09-16',30000,'2018-02-05'),
('0633917','15640','Miss','Pratum','Chaiparsit','0947700055','partum.chi@hotmail.com','1949-12-23',40000,'2021-03-09'),
('0633133','01520','Miss','Pitchaya','Teerawongpairoj','0819266322','pitchaya.tee@hotmail.com','2001-12-07',30000,'2021-11-20'),
('0633196','15640','Miss','Sasima','Srijanya','0922482545','sasima.sri@gmail.com','2002-05-25',32000,'2021-06-05'),
('0633964','16493','Mrs','Wimonrat','Teerawongpairoj','0870790055','wimonrat@hotmail.com','1965-05-05',25000,'2020-09-15'),
('0649731','15640','Mrs','Juthamas','Srijanya','0858191464','jutha_@gmail.com','1966-12-23',28000,'2021-01-06'),
('0649171','00781','Mr','Watana ','Teerawongpairoj','0879992933','watana@gmail.com','1967-12-28',35000,'2020-09-07'),
('0694739','00781','Mr','Sorawit','Teerawongpairoj','0819266321','sorawit@yahoo.com','2000-07-27',23000,'2021-09-17'),
('0649173','15640','Miss','Chayanid','Teerawongpairoj','0815734662','chayanid@hotmail.com','1993-11-26',24000,'2020-09-30');					

CREATE TABLE IF NOT EXISTS Call_Center(
	Employee_ID		VARCHAR(20) 	PRIMARY KEY,
	Language_Skill	VARCHAR(50),
	Shift_In		TIME NOT NULL,
	Shift_Out		TIME NOT NULL,
	CONSTRAINT FK_Employee_ID FOREIGN KEY (Employee_ID)
	REFERENCES Employee(Employee_ID)
);

INSERT INTO Call_Center(Employee_ID,Language_Skill,Shift_In,Shift_Out) VALUES
('0633002','Chinese','6:30:00','17:00:00'),
('0633124','English','6:30:00','17:00:00'),
('0633152','Chinese','6:30:00','17:00:00'),
('0633071','','17:00:00','6:30:00'),
('0633167','English','17:00:00','6:30:00'),
('0633095','Chinese','17:00:00','6:30:00'),
('0633159','Japanese','6:30:00','17:00:00'),
('0633894','Chinese','17:00:00','6:30:00'),
('0633479','English','17:00:00','6:30:00'),
('0633743','Japanese','6:30:00','17:00:00');

CREATE TABLE IF NOT EXISTS Location_Branch(
	Branch_ID 	VARCHAR(20) NOT NULL,
	Location_No VARCHAR(20) NOT NULL PRIMARY KEY,
	Road 		VARCHAR(50),
	Sub_District VARCHAR(50) NOT NULL, 
	District 	VARCHAR(50) NOT NULL,
	Province 	VARCHAR(50) NOT NULL,
	Post_Code 	CHAR(5) NOT NULL,
	CONSTRAINT FK_Branch_ID FOREIGN KEY (Branch_ID)
	REFERENCES Branch (Branch_ID)
 );

INSERT INTO Location_Branch(Location_No,Branch_ID,Road,Sub_District,District,Province,Post_Code) VALUES
('00001','15113','Ramkhamhaeng 2','Dokmai','Prawet','Bangkok','10250'),
('00002','04570','Sukhaphibal 1','Dokmai','Prawet','Bangkok','10260'),
('00003','04081','ฺBang Bua Thong','Phimonrat','ฺBangbuathong','Nonthaburi','11110'),
('00004','14319','Khlong Luang Muang Mai','Khlong Song','Khlong Luang','Pathumthani','12120'),
('00005','10165','Nakhon Nayok','Khlong Yai','Ong Karak','Nakhon Nayok','26120'),
('00006','04853','Highway 3351','Bang Luang','Bang Lane','Nakhon Pathom','73190'),
('00007','01520','Ratchapruek','Bang Lamard','Taling Chan','Bangkok','10170'),
('00008','16493','Ratchapruek','Taling Chan','Taling Chan','Bangkok','10170'),
('00009','15640','Paya Wong','Pra Prathom Jedee','Nakhon Pathom','Nakhon Pathom','73000'),
('00010','00781','Kum Pang San','Kum Pang San','Kum Pang San','Nakhon Pathom','73000');	
 
CREATE TABLE IF NOT EXISTS Location_Customer(
	Customer_ID 	VARCHAR(20) NOT NULL,
	Location_No 	VARCHAR(20) PRIMARY KEY,
	House_No 		VARCHAR(50) NOT NULL,
	Village 		VARCHAR(50) NOT NULL,
	Road 			VARCHAR(50),
	Sub_District 	VARCHAR(50) NOT NULL,
	District	 	VARCHAR(50) NOT NULL,
	Province 		VARCHAR(50) NOT NULL,
	Post_Code 		CHAR(5) NOT NULL,
	CONSTRAINT FK_Customer_ID FOREIGN KEY (Customer_ID)
	REFERENCES Customer (Customer_ID)
);

INSERT INTO Location_Customer(Location_No,Customer_ID,House_No,Village,Road,Sub_District,District,Province,Post_Code) VALUES
('00011','115342','71/2','Phrueksa Village','Daothong','Mahasawat','Phuttamonthon','Nakhon Pathom','73170'),
('00012','116324','61/67','Suralai Housing','Bang Kruai - Sai Noi','Bang Yai','Bang Yai','Nonthaburi','11140'),
('00013','120031','21/1','Ban Rim Suan','Yothathikan','Bang Rak Noi','Meuang','Nonthaburi','11000'),
('00014','125031','12/456','Kaeo Villa','Phuttha Monthon Sai 1','Bang Duan','Phasi Chareon','Bangkok','10160'),
('00015','137510','61/264','Butsaba Village','Phuttha Monthon Sai 2','Sala Thammasop','Thawi','Bangkok','10170'),
('00016','132011','56/23','Kawinthip Village','Borommaratchachonnani','Song Khanong','Sam Phran','Nakhon Pathom','73120'),
('00017','143002','653/09','Ladawan','Ratchaphruek','Taling Chan','Taling Chan','Bangkok','10170'),
('00018','178001','666/11','Royal Tier','Ratchaphruek','Taling Chan','Taling Chan','Bangkok','10170'),
('00019','179520','122/21','Parichart','Ratchaphruek','Bang Khu Wat','Mueang','Pathum Thani','12000'),
('00020','204710','666/09','Royal Tier','Ratchaphruek','Taling Chan','Taling Chan','Bangkok','10170');

CREATE TABLE IF NOT EXISTS Location_Employee (
	Employee_ID 	VARCHAR(20) NOT NULL,
	Location_No 	VARCHAR(20) PRIMARY KEY,
	Road 			VARCHAR(50),
	Sub_District 	VARCHAR(50) NOT NULL,
	District	 	VARCHAR(50) NOT NULL,
	Province 		VARCHAR(50) NOT NULL,
	Post_Code 		CHAR(5) NOT NULL,
	CONSTRAINT FK_Employee_ID_2 FOREIGN KEY (Employee_ID)
	REFERENCES Employee (Employee_ID)
);

INSERT INTO Location_Employee (Location_No,Employee_ID,Road,Sub_District,District,Province,Post_Code) VALUES
('10021','0633002','Sukhaphibal 2','Bang Phli Yai','Bang Phli','Samut Prakan','10540'),
('10022','0633107','Sukhumvit','Phra Khanong','Khlong Toei','Bangkok','10110'),
('10023','0633189','Nakhon Chaisi','Thanon Nakhon Chai Si','Dusit','Bangkok','73120'),
('10024','0633152','Yaowarat','Samphanthawong','Samphanthawong','Bangkok','10100'),
('10025','0633166','','Nong Khang Phlu','Nong Khaem','Bangkok','10160'),
('10026','0633257','Rama 3','Bang Phong Phang','Yan Nawa','Bangkok','10120'),
('10027','0633124','Chalermkhet','Pomprap','Pomprap','Bangkok','10100'),
('10028','0633145','Yantrakit Koso','Nai wang','Mueang','Phare','54000'),
('10029','0633071','Ratchauthit','Nai Wiang',' Mueang Phrae','Phrae','54000'),
('10030','0633167','King Kaeo','Bang Phli Yai','Bang Phli','Samut Prakan','10543'),
('10031','0633095','','Prawet','Prawet','Bangkok','10250'),
('10032','0633191','','Den Chai','Den Chai','Phrae','54110'),
('10033','0633096',' Chetsada Bodin Alley','Tha It','Mueang Uttaradit','Uttaradit','53000'),
('10034','0633187','Tang Roadfai','Pattaya City','Bang Lamung','Chon Buri','20150'),
('10035','0633112','Khao Talo','Pattaya City','Bang Lamung','Chon Buri','20150'),
('10036','0633142','Phlu Ta Luang','Phlu Ta Luang','Sattahip','Chon Buri','20180'),
('10037','0633117','Sukuhumvit','Phlu Ta Luang','Sattahip','Chon Buri','20180'),
('10038','0633159','Kanlapaphruek','Nai Mueang','Mueang Khon Kaen','Khon Kaen','40000'),
('10039','0633894','Mittraphap','Nai Mueang','Mueang Khon Kaen','Khon Kaen','40000'),
('10040','0633479','Samlarn','Phra Sing',' Mueang Chiang Mai','Chiang Mai','50200'),
('10041','0633743','Chiang Mai Outer Ring','Pa Bong','Saraphi','Chiang Mai','50140'),
('10042','0633794','','Saphan Sung','Saphan Sung','Bangkok','10240'),
('10043','0633917','','Tak Tok','Ban Tak','Tak ','63120'),
('10044','0633133','Krung Thep Kritha','Saphan Sung','Saphan Sung','Bangkok','10240'),
('10045','0633196','Rama 3','Bang Phong Phang','Yan Nawa','Bangkok','10120'),
('10046','0633964','','Nong Lu','Sangkhla Buri ','Kanchanaburi','71240'),
('10047','0649731','Tewarach','Pha Sing','Mueang Nan','Nan','55000'),
('10048','0649171','King Kaeo','Bang Phli Yai','Bang Phli','Samut Prakan','10543'),
('10049','0694739','Sukhaphibal 2','Bang Phli Yai','Bang Phli','Samut Prakan','10540'),
('10050','0649173','',' Khon San',' Khon San',' Chaiyaphum','36180');

CREATE TABLE IF NOT EXISTS Manager(
	Employee_ID   	VARCHAR(20)  PRIMARY KEY,
	Inagugration_Date 	DATE NOT NULL,
	Resignation_Date 	DATE NOT NULL,
	CONSTRAINT FK_EmpID FOREIGN KEY (Employee_ID)
	REFERENCES Employee (Employee_ID)
); 

INSERT INTO Manager(Employee_ID,Inagugration_Date,Resignation_Date) VALUES
('0633145','2021-11-10','2021-03-01'),
('0633107','2020-12-27','2019-01-31'),
('0633189','2021-02-08','2020-12-24'),
('0633152','2021-06-09','2021-03-21'),
('0633191','2020-08-11','2019-10-05'),
('0633257','2021-03-11','2020-02-08'),
('0633196','2021-07-06','2021-11-20'),
('0633964','2021-03-04','2021-09-20'),
('0649731','2020-09-10','2021-04-07'),
('0649171','2020-01-08','2021-09-03');

CREATE TABLE IF NOT EXISTS Product(
	Product_ID   	VARCHAR(20) PRIMARY KEY,
	Name_Of_Product VARCHAR(50) NOT NULL,
	Member_Point  	INT NOT NULL,
	Price    		DECIMAL(5, 2) NOT NULL,
	Information_No	INT NOT NULL,
	CONSTRAINT FK_InfNo FOREIGN KEY (Information_No)
	REFERENCES Information_Of_Product (Information_No)
);

INSERT INTO Product(Product_ID,Name_Of_Product,Member_Point,Price,Information_No) VALUES
('8891491947194','Pancake with strawberry sause',3,30,361714),
('8851351151253','Chicken nuggets',3.5,35,361716),
('8851362649514','Fluffy pancake',3,30,361946),
('8897461413658','Lay big grab',3,30,361494),
('8894194134907','Kit kat',2.5,25,364974),
('8869461941947','Brown sugar soy milk',2.5,25,369944),
('8864596562626','Eclair',2.5,25,365959),
('8865296563147','Strawberry Mochi',3,30,368489),
('8850999321004','Sing Drinking Water',1,9,362212),
('8816169530314','Yogurt',1.5,15,364647);

CREATE TABLE IF NOT EXISTS Order_Line(
	Order_ID 	VARCHAR(20),
	Product_ID 	VARCHAR(20),
	Amount 		INT NOT NULL,
	Total_Price DECIMAL(5, 2) NOT NULL,
	PRIMARY KEY (Order_ID, Product_ID),
	CONSTRAINT fk_order_id FOREIGN KEY (Order_ID) REFERENCES Order_Goods(Order_ID),
	CONSTRAINT fk_product_id FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

INSERT INTO Order_Line(Order_ID,Product_ID,Amount,Total_Price) VALUES
('15113211023847536','8897461413658',3,90),
('04570565231315151','8851351151253',1,35),
('04081484416516518','8869461941947',3,75),
('04081484416516518','8851362649514',3,90),
('04081484416516518','8891491947194',2,60),
('04081484416516518','8851351151253',1,30),
('14319261848959634','8851362649514',2,60),
('10165585248484863','8891491947194',3,90),
('10165585248484863','8894194134907',1,30),
('10165585248484863','8851362649514',2,70),
('04081974265189595','8891491947194',1,30),
('04081974265189595','8851362649514',3,105),
('04570841005194849','8869461941947',3,75),
('04570841005194849','8894194134907',3,75),
('15113898150687895','8851362649514',1,30),
('15113898150687895','8894194134907',3,90),
('15113898150687895','8891491947194',2,60),
('15113898150687895','8851351151253',3,90),
('14319101847858625','8869461941947',2,50),
('14319101847858625','8851351151253',1,35),
('04081956250205486','8894194134907',1,25),
('04081956250205486','8897461413658',2,60),
('10165520205174856','8891491947194',3,90),
('04081529620518484','8891491947194',1,30),
('14319205051859534','8894194134907',2,50),
('14319205051859534','8851362649514',2,60),
('14319205051859534','8851351151253',3,105),
('04853519848597367','8894194134907',2,50),
('04570260505128495','8869461941947',2,50),
('04570260505128495','8897461413658',3,90),
('15113125128518959','8851351151253',1,35),
('15113125128518959','8891491947194',1,30),
('15113125128518959','8869461941947',2,60),
('15113125128518959','8894194134907',3,90),
('10165595928740299','8851362649514',3,90),
('10165595928740299','8869461941947',1,25),
('10165595928740299','8891491947194',2,60),
('10165595928740299','8851351151253',2,60),
('04570548478485010','8851362649514',2,60),
('04570548478485010','8897461413658',3,90),
('04570548478485010','8851351151253',2,70),
('15113595205184599','8891491947194',2,60),
('15113592647484586','8851362649514',1,30),
('15113592647484586','8851351151253',2,70),
('15113592647484586','8894194134907',2,60),
('14319506128956227','8851362649514',3,90),
('14319506128956227','8869461941947',1,25),
('04570205185963628','8851362649514',3,90),
('04570205185963628','8869461941947',3,75),
('04570205185963628','8894194134907',1,30),
('04853059845225269','8897461413658',2,60),
('04853059845225269','8851351151253',1,35),
('14319958447051955','8891491947194',1,30),
('04081829129288499','8851362649514',3,90),
('04081829129288499','8894194134907',2,60),
('04081829129288499','8891491947194',1,30),
('04853105051849288','8894194134907',3,75),
('04853105051849288','8851351151253',3,105),
('14319292829292484','8891491947194',2,60),
('14319292829292484','8897461413658',1,30),
('04570285185487416','8897461413658',3,90),
('04570285185487416','8894194134907',2,60),
('04570285185487416','8869461941947',2,60),
('04081928485969127','8891491947194',1,30),
('15113529484051258','8851351151253',3,105),
('15113529484051258','8897461413658',1,30),
('15113529484051258','8851362649514',2,70),
('01520121456875498','8864596562626',2,50),
('01520121456875498','8865296563147',1,30),
('16493126972653192','8850999321004',3,27),
('15640453278415623','8816169530314',2,30),
('15640453278415623','8891491947194',1,30),
('15640453278415623','8851351151253',1,35),
('00781847625139549','8851362649514',2,60),
('00781847625139549','8894194134907',1,25);

CREATE TABLE IF NOT EXISTS Sender(
	Employee_ID   	VARCHAR(20)   PRIMARY KEY,
	Licence_Plate  	VARCHAR(10) NOT NULL,
	CONSTRAINT FK_EmpID_2 FOREIGN KEY (Employee_ID)
	REFERENCES Employee (Employee_ID)
);

INSERT INTO Sender(Employee_ID,Licence_Plate) VALUES
('0633095','สสส 797'),
('0633191','ลมม 7'),
('0633096','อพท 99'),
('0633187','ยมพ 245'),
('0633112','สตร 168'),
('0633142','กกก 147'),
('0633117','อพว 1'),
('0633159','หบพ 03'),
('0633894','สวป 68'),
('0633479','งฟห 762');

CREATE TABLE IF NOT EXISTS Stock(
	Branch_ID			VARCHAR(20),
	Product_ID			VARCHAR(20),
	Remaining_Amount	INT		NOT NULL,
    Lot_Date			DATE	NOT NULL,
    PRIMARY KEY (Branch_ID, Product_ID,Lot_Date), 
    CONSTRAINT FK_BraID_2 FOREIGN KEY (Branch_ID)
	REFERENCES Branch (Branch_ID),
    CONSTRAINT FK_ProID FOREIGN KEY (Product_ID)
	REFERENCES Product (Product_ID)
);

INSERT INTO Stock(Branch_ID,Product_ID,Remaining_Amount,Lot_Date) VALUES
('15113','8891491947194',175,'2020-01-18'),
('04570','8891491947194',220,'2021-04-23'),
('04081','8891491947194',181,'2020-12-24'),
('14319','8891491947194',350,'2021-05-25'),
('10165','8891491947194',245,'2021-08-14'),
('04853','8891491947194',117,'2020-11-07'),
('15113','8851351151253',205,'2021-02-18'),
('04081','8851351151253',168,'2021-06-03'),
('10165','8851351151253',347,'2021-10-31'),
('01520','8851351151253',258,'2021-09-16'),
('15640','8851351151253',98,'2020-12-25'),
('00781','8851351151253',116,'2021-06-02'),
('15113','8851362649514',26,'2021-07-14'),
('04570','8851362649514',249,'2021-05-03'),
('04081','8851362649514',82,'2021-10-30'),
('14319','8851362649514',257,'2021-08-26'),
('10165','8851362649514',164,'2021-10-30'),
('04853','8851362649514',47,'2021-04-12'),
('01520','8851362649514',169,'2021-07-07'),
('16493','8851362649514',18,'2021-12-04'),
('15640','8851362649514',198,'2021-01-19'),
('00781','8851362649514',364,'2021-03-21'),
('10165','8897461413658',74,'2021-09-26'),
('04853','8897461413658',275,'2021-07-24'),
('01520','8897461413658',372,'2021-12-15'),
('16493','8897461413658',73,'2021-11-10'),
('15640','8897461413658',250,'2021-08-26'),
('00781','8897461413658',77,'2020-12-31'),
('15113','8894194134907',128,'2021-01-15'),
('04570','8894194134907',365,'2020-07-19'),
('01520','8894194134907',123,'2021-07-09'),
('16493','8894194134907',222,'2021-06-19'),
('15640','8894194134907',169,'2021-09-20'),
('00781','8894194134907',231,'2020-08-03'),
('15113','8869461941947',14,'2020-12-09'),
('04081','8869461941947',27,'2021-07-16'),
('10165','8869461941947',185,'2021-06-14'),
('00781','8869461941947',8,'2021-03-26'),
('15113','8864596562626',274,'2021-02-19'),
('04081','8864596562626',362,'2020-01-25'),
('10165','8864596562626',132,'2021-11-03'),
('01520','8864596562626',147,'2020-09-16'),
('15640','8864596562626',160,'2021-06-13'),
('00781','8864596562626',312,'2020-10-30'),
('15113','8864596562626',190,'2021-02-14'),
('04081','8864596562626',139,'2021-11-06'),
('15113','8865296563147',370,'2020-12-31'),
('01520','8865296563147',120,'2021-08-14'),
('15640','8865296563147',160,'2020-08-16'),
('15113','8850999321004',134,'2021-09-06'),
('04570','8850999321004',73,'2021-12-09'),
('04081','8850999321004',5,'2020-05-15'),
('14319','8850999321004',113,'2021-11-30'),
('10165','8850999321004',133,'2021-12-30'),
('04853','8816169530314',154,'2021-11-25'),
('01520','8816169530314',196,'2021-11-10'),
('16493','8816169530314',203,'2021-11-06'),
('15640','8816169530314',46,'2021-11-14'),
('00781','8816169530314',44,'2021-11-23');

CREATE TABLE IF NOT EXISTS Call_History(
	History_No			INT          PRIMARY KEY,
	Employee_ID   		VARCHAR(20),
	Customer_ID   		VARCHAR(20),
	Problem_Topic  		VARCHAR(50)  NOT NULL,
	Call_Description 	VARCHAR(200) NOT NULL,
	CONSTRAINT FK_EmpID_3 FOREIGN KEY (Employee_ID)
	REFERENCES Employee (Employee_ID),
	CONSTRAINT FK_CusID FOREIGN KEY (Customer_ID)
	REFERENCES Customer (Customer_ID)
);
    
INSERT INTO Call_History(History_No, Employee_ID,Customer_ID,Problem_Topic,Call_Description) VALUES
(1,'0633743','125031','Refund','Give a refund to customer'),
(2,'0633794','137510','Return','Return the products'),
(3,'0633917','132011','App error','Cannot access to 7-Eleven application'),
(4,'0633133','143002','Return','Return the products'),
(5,'0633196','178001','Slow delivery','The sender always sends late'),
(6,'0633964','179520','Refund','Give a refund to customer'),
(7,'0649731','132011','App error','Cannot access to 7-Eleven application'),
(8,'0649171','143002','Return','Return the products'),
(9,'0694739','178001','Refund','Give a refund to customer'),
(10,'0649173','179520','Slow delivery','The sender always sends late'),
(11,'0633794','137510','App error','Cannot change an email'),
(12,'0649731','179520','App error','Payment process error'),
(13,'0633794','125031','Refund','Give a refund to customer'),
(14,'0633964','143002','App error','Payment process error'),
(15,'0633196','178001','Slow delivery','The sender always sends late'),
(16,'0633794','179520','Return','Return the products'),
(17,'0649731','143002','Refund','Give a refund to customer'),
(18,'0649731','132011','Return','Return the products'),
(19,'0633964','137510','App error','Cannot access to 7-Eleven application'),
(20,'0649173','179520','Slow delivery','The sender always sends late'),
(21,'0633794','137510','Return','Return the products'),
(22,'0633794','125031','Return','Return the products'),
(23,'0649731','204710','Forget username','The customer forgot an username'),
(24,'0633964','115342','Slow delivery','The sender always sends late'),
(25,'0649731','116324','Refund','Return the products'),
(26,'0633794','204710','Forgot username','The customer forgot an username'),
(27,'0649173','116324','Refund','Give a refund to customer'),
(28,'0633794','179520','App error','Payment process error'),
(29,'0649173','204710','Slow delivery','The sender always sends late'),
(30,'0649731','178001','Return','Return the products');