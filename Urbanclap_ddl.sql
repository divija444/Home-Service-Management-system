CREATE TABLE CATEGORY(
  cat_id int(10) NOT NULL AUTO_INCREMENT unique,
  cat_name varchar(45) NOT NULL,
  PRIMARY KEY (cat_id)
);

CREATE TABLE CITY(
  city_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  city_name varchar(45) NOT NULL,
  city_state varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`)
);

CREATE TABLE CUSTOMER(
  cust_id int(10) NOT NULL AUTO_INCREMENT,
  cust_fname varchar(45) NOT NULL,
  cust_lname varchar(45) NOT NULL,
  cust_gender varchar(1) NOT NULL,
  cust_email varchar(45) NOT NULL,
  cust_mobile varchar(15) NOT NULL,
  cust_street varchar(45) NOT NULL,
  city_id int(10) NOT NULL,
  PRIMARY KEY (cust_id),
  CONSTRAINT fk_CUSTOMER_city_id FOREIGN KEY (city_id) 
  REFERENCES CITY (city_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SERVICE (
  serv_id int(10) NOT NULL AUTO_INCREMENT,
  serv_name varchar(45) NOT NULL,
  serv_desc varchar(45) NOT NULL,
  serv_rating float NOT NULL,
  serv_email varchar(45) NOT NULL,
  serv_mobile varchar(45) NOT NULL,
  serv_cost float NOT NULL,
  serv_commission float NOT NULL,
  serv_street varchar(45) NOT NULL,
  city_id int(10) NOT NULL,
  PRIMARY KEY (serv_id),
  CONSTRAINT fk_SERVICE_city_id FOREIGN KEY (city_id) 
  REFERENCES CITY(city_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PARTNER(
  part_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  part_name varchar(45) NOT NULL,
  part_gender varchar(45) NOT NULL,
  part_email varchar(45) NOT NULL UNIQUE,
  part_mobile varchar(15) NOT NULL UNIQUE,
  part_profession varchar(45) NOT NULL,
  serv_id int(10) NOT NULL,
  PRIMARY KEY (part_id),
  KEY fk_PARTNER_serv_id_idx(serv_id),
  CONSTRAINT fk_PARTNER_serv_id FOREIGN KEY (serv_id) 
  REFERENCES SERVICE(serv_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE OFFER(
  off_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  off_name varchar(45) NOT NULL,
  off_desc varchar(45) NOT NULL,
  off_discount float NOT NULL,
  PRIMARY KEY (off_id)
);

CREATE TABLE belongs_to(
  belongs_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  serv_id int(10) NOT NULL,
  cat_id int(10) NOT NULL,
  PRIMARY KEY (belongs_id),
  KEY fk_belongs_to_serv_id_idx (serv_id),
  KEY fk_belongs_to_cat_id_idx (cat_id),
  CONSTRAINT fk_belongs_to_cat_id FOREIGN KEY (cat_id) 
  REFERENCES CATEGORY (cat_id) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_belongs_to_serv_id FOREIGN KEY (serv_id) 
  REFERENCES SERVICE (serv_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE books(
  book_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  book_date datetime NOT NULL,
  book_servdate datetime NOT NULL,
  book_remarks varchar(250) NOT NULL,
  payment_method varchar(45) NOT NULL,
  cust_id int(10) NOT NULL,
  serv_id int(10) NOT NULL,
  PRIMARY KEY (book_id),
  KEY fk_books_cust_id_idx (cust_id),
  KEY fk_books_serv_id_idx (serv_id),
  CONSTRAINT fk_books_cust_id FOREIGN KEY (cust_id) 
  REFERENCES CUSTOMER (cust_id) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_books_serv_id FOREIGN KEY (serv_id) 
  REFERENCES SERVICE (serv_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE feedbacks(
  fb_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  fb_rating float NOT NULL,
  fb_desc varchar(250) NOT NULL,
  fb_date datetime NOT NULL,
  cust_id int(10) NOT NULL,
  part_id int(10) NOT NULL,
  PRIMARY KEY (fb_id),
  KEY fk_feedbacks_cust_id_idx (cust_id),
  KEY fk_feedbacks_part_id_idx (part_id),
  CONSTRAINT fk_feedbacks_cust_id FOREIGN KEY (cust_id) 
  REFERENCES CUSTOMER(cust_id) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_feedbacks_part_id FOREIGN KEY (part_id) 
  REFERENCES PARTNER(part_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE avails(
  avails_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  cust_id int(10) NOT NULL,
  off_id int(10) NOT NULL,
  PRIMARY KEY (avails_id),
  CONSTRAINT fk_avails_cust_id FOREIGN KEY (cust_id) 
  REFERENCES CUSTOMER (cust_id) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_avails_off_id FOREIGN KEY (off_id) 
  REFERENCES OFFER (off_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE proposes(
  proposes_id int(10) NOT NULL AUTO_INCREMENT UNIQUE,
  serv_id int(10) NOT NULL,
  off_id int(10) NOT NULL,
  PRIMARY KEY (proposes_id),
  KEY fk_proposes_serv_id_idx (serv_id),
  KEY fk_proposes_off_id_idx (off_id),
  CONSTRAINT fk_proposes_off_id FOREIGN KEY (off_id) 
  REFERENCES OFFER(off_id) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_proposes_serv_id FOREIGN KEY (serv_id) 
  REFERENCES SERVICE(serv_id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE log_OFFERS(
  id_log_offers INT NOT NULL AUTO_INCREMENT UNIQUE,
  action VARCHAR(45) NOT NULL,
  off_id INT NOT NULL,
  off_name VARCHAR(45) NOT NULL,
  off_desc VARCHAR(45) NOT NULL,
  off_discount FLOAT NOT NULL,
  changed_on DATETIME NOT NULL,
  PRIMARY KEY (id_log_offers)
);


