CREATE TABLE  "INQUIRY" 
   (	"INQUIRY_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"PROD_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"USER_ID" VARCHAR2(20) NOT NULL ENABLE, 
	"INQUIRY_TITLE" VARCHAR2(100), 
	"INQUIRY_CONTENT" VARCHAR2(300), 
	"REG_DATE" DATE, 
	"SECRET" VARCHAR2(3) NOT NULL ENABLE, 
	"REPLY_CONDITION" VARCHAR2(3) DEFAULT '0', 
	"INQUIRY_REPLY" VARCHAR2(300), 
	"DELETE_FLAG" VARCHAR2(3) DEFAULT '0', 
	 PRIMARY KEY ("INQUIRY_NO") ENABLE, 
	 FOREIGN KEY ("PROD_NO")
	  REFERENCES  "PRODUCT" ("PROD_NO") ENABLE
   )