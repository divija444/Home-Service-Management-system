INSERT INTO CATEGORY 
VALUES (1,'Plumbing'),(2,'Electrical'),(3,'Carpentry'),(4,'Home Deep Cleaning'),(5,'Sofa Cleaning'),(6,'Bathroom Deep Cleaning'),(7,'Carpet Cleaning'),(8,'Kitchen Deep Cleaning'),(9,'Pest Control'),(10,'Car Cleaning'),(11,'AC Service and Repair'),(12,'RO or Water Purifier Repair'),(13,'Washing Machine Repair'),(14,'Refrigerator Repair'),(15,'Microwave Repair'),(16,'TV Repair and Installation'),(17,'Mobile Repair'),(18,'Laptop Repair'),(19,'iPhone, iPad, Mac Repair'),(20,'Computer Repair'),(21,'Geyser/Water Heater Repair'),(22,'House Painters'),(23,'Interiors'),(24,'Furniture and Wood work'),(25,'Modular Kitchens'),(26,'Renovation'),(27,'Architect'),(28,'Bathroom Renovation'),(29,'Plans and Designs'),(30,'Vastu Shastra Consultants');

INSERT INTO CITY VALUES
(1,'Bangalore','Karnataka'),
(2,'Hyderabad','Telangana'),
(3,'Chennai','Tamil Nadu'),
(4,'Mumbai','Maharashtra'),
(5,'Kolkata','West Bengal'),
(6,'Noida','Uttar Pradesh');

INSERT INTO CUSTOMER VALUES
(1,'Divija','Lekkalapudi','F','divi07@gmail.com','9538160015','A',1),
(2,'Pranavi', 'Mani','F','pranumani24@gmail.com','9900263649','A',2),
(3,'Abhay', 'Vishwakumar','M','aditya.khatri3@gmail.com','9845330401','A',3),
(4,'Vihaan','Chorge','M','vihaanchorge25@gmail.com','9740396037','A',4),
(5,'Anand','Gupta','M','guptanand@gmail.com','7349713555','A',5),
(6,'Jessie','DSouza','F','jessiegirl@gmail.com','6360145763','A',6),
(7,'Rose','Mathew','F','bprose@gmail.com','5631845413','A',1),
(8,'Vijay','Devarakonda','M','devarakondavs@gmail.com','9630395186','A',2);

INSERT INTO SERVICE VALUES
(1,'Leakage issues',' Various services like leakages in walls etc.','4.96','8627051104','450','150','A',1),
(2,'Electrical wiring','Various wirings like switch,bulbs etc','4.37','6405232237','390','150','A',2),
(3,'Leakage issues',' Various services like leakages in walls etc.','4.5','884051104','450','150','A',2),
(4,'Wood Polishing','Polishing the wood furnitures like sofas, cots etc.','3.7','40306037','800','250','A',1),
(5,'Electrical wiring','Various wirings like switch,bulbs etc','2.6','5656565565','330','170','A',3),
(6,'Electrical wiring','Various wirings like switch,bulbs etc','3.9','5646385785','330','120','A',4);



INSERT INTO PARTNER VALUES
(1,'Saleem Khan','M','khansaleem@gmail.com','9797979797','Electrician','2'),
(2,'Suman Kumar','M','suman67@gmail.com','8787878787','Plumber','1');

INSERT INTO books VALUES
(1,'2022-03-24 10:10:07', '2022-05-26 11:00:00','Water leakage problem','cash',2,1);

INSERT INTO  feedbacks VALUES 
(1, 4.2, 'Satisfied with the service', '2022-03-26 13:05:00',2,2);

INSERT INTO offer VALUES
(1,'PLUM20','20% discount for plumbing services', '20');

INSERT INTO proposes VALUES
(1,1,1);

INSERT INTO belongs_to VALUES
(1,1,1),(2,2,2);

INSERT INTO avails VALUES
(1,2,1);

INSERT INTO log_offers VALUES
(1 , 'CLAIMED',1, 'PLUM20', '20% discount for plumbing services', '20', '2022-03-26 14:00:00');
