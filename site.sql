BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "post" (
	"id"	INTEGER NOT NULL,
	"title"	VARCHAR(100) NOT NULL,
	"date_posted"	DATETIME NOT NULL,
	"content"	TEXT NOT NULL,
	"user_id"	INTEGER NOT NULL,
	FOREIGN KEY("user_id") REFERENCES "user"("id"),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "user" (
	"id"	INTEGER NOT NULL,
	"username"	VARCHAR(20) NOT NULL UNIQUE,
	"email"	VARCHAR(120) NOT NULL UNIQUE,
	"image_file"	VARCHAR(20) NOT NULL,
	"password"	VARCHAR(60) NOT NULL,
	PRIMARY KEY("id")
);
INSERT INTO "post" VALUES (1,'My First Post - Updated','2021-05-28 14:19:09.973646','This is my first post! - Updated

This is very exciting!',1);
INSERT INTO "post" VALUES (2,'This is my test Blog Title','2021-06-01 12:46:49.277672','Hey this is my first test Blog content',3);
INSERT INTO "post" VALUES (4,'Hey','2021-06-01 13:22:43.584428','What''s UP?',1);
INSERT INTO "post" VALUES (5,'Siemano','2021-06-01 13:23:01.953240','Co jest?
',1);
INSERT INTO "post" VALUES (6,'HEY HEY HEY BOYS AND GIRLS','2021-06-01 13:23:22.952468','Jebaniutki',1);
INSERT INTO "post" VALUES (7,'Any one else has good feels today?','2021-06-01 13:23:58.000255','GOOD',1);
INSERT INTO "post" VALUES (8,'Aye','2021-06-01 13:24:32.437473','Yep Yep Yep',3);
INSERT INTO "post" VALUES (9,'Ok','2021-06-01 13:24:48.093085','yeagh this sounds good',3);
INSERT INTO "post" VALUES (10,'Ok','2021-06-01 13:25:01.948374','I''m with ya man',3);
INSERT INTO "post" VALUES (11,'This ','2021-06-01 13:25:15.566507','and this too',3);
INSERT INTO "post" VALUES (12,'wow','2021-06-01 13:25:25.382046','just saying',3);
INSERT INTO "post" VALUES (13,'ok','2021-06-01 13:25:33.442798','I get ya
',3);
INSERT INTO "post" VALUES (14,'Lorem Ipsum','2021-06-01 13:26:31.947111','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet elementum leo. Cras felis nisi, facilisis vel molestie eget, aliquet id nisl. Nulla sit amet erat nibh. Aenean auctor felis in porta cursus. Pellentesque in pretium nisi. In lectus magna, ultricies vitae nulla ac, faucibus aliquam lectus. Quisque varius ipsum at metus suscipit luctus. Suspendisse sed quam sem. Quisque egestas rhoncus nulla vitae condimentum. Phasellus placerat, elit non accumsan fermentum, nulla felis pretium odio, vel tempus purus neque in nulla. In eu odio id tortor gravida vestibulum ut ut mauris. Suspendisse mollis orci quis consectetur ornare. Cras lobortis nisi ac odio congue, vitae dapibus augue accumsan. Etiam rutrum mauris nisi. ',3);
INSERT INTO "post" VALUES (15,'some more','2021-06-01 13:26:42.340080','Nulla fringilla finibus risus vitae dictum. Maecenas dignissim nibh id justo finibus vestibulum. Donec eget accumsan massa. Maecenas sit amet rutrum nisl. Fusce non metus nulla. Duis porta, mauris in semper scelerisque, leo eros sollicitudin est, eget consectetur massa ipsum et urna. Suspendisse potenti. Mauris ac tincidunt tellus. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam hendrerit tortor urna, non convallis nisi feugiat quis. Sed quis dignissim ante. Pellentesque eu facilisis enim, eu porta ipsum. Nam vehicula, ligula nec maximus pretium, leo enim mollis dui, vitae posuere velit massa ut sapien. Proin pulvinar elit sapien, vitae laoreet odio suscipit vel. ',3);
INSERT INTO "post" VALUES (16,'this as well','2021-06-01 13:26:54.682568','Duis ultrices velit libero, ac consequat augue dignissim quis. Quisque at fringilla ante, sit amet tincidunt augue. Sed nunc massa, convallis non efficitur at, vehicula in nunc. Mauris aliquet elit ac enim porta fermentum. Integer posuere arcu id sodales pretium. Phasellus eu elementum augue. Praesent eget est neque. Aenean luctus massa pharetra, sagittis leo vitae, imperdiet sapien. Suspendisse vitae dignissim justo. ',3);
INSERT INTO "post" VALUES (17,'New Post','2021-06-14 14:00:30.760760','Another post from the test user.',3);
INSERT INTO "post" VALUES (18,'The last post','2021-06-14 14:00:56.141055','That''s it folks. I''m outta here
',3);
INSERT INTO "post" VALUES (19,'asdfNew Post adsfg','2021-06-15 08:28:04.349142','This is a new post from RadekWarownyasdfasdf',4);
INSERT INTO "post" VALUES (20,'Hey','2021-06-15 12:51:03.084526','Hey Everybody. My name is John Doe. It''s nice to meet you all:)',5);
INSERT INTO "post" VALUES (21,'Good Morning!!!','2021-06-15 12:54:30.565529','This is my first post here. Be nice.',6);
INSERT INTO "post" VALUES (22,'What''s Up?','2021-06-15 12:57:52.174827','What is up my dudes and dudettes??',7);
INSERT INTO "post" VALUES (23,'Hey!','2021-06-15 12:59:41.836471','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',8);
INSERT INTO "user" VALUES (1,'CoreyMS','CoreyMSchafer@gmail.com','2fd780177aee5b17.PNG','$2b$12$QHIMJnQURyO2ErLwQS0wgecWYbs9p/ArotdRnm1bn51PUMsg.uWaS');
INSERT INTO "user" VALUES (2,'Connor','connor@test.com','default.jpg','$2b$12$EzoVQ9h5lRTjkZdIvn.nM.peN7WBpCYCWRmLZkXTZV3Zzo3j6rcjW');
INSERT INTO "user" VALUES (3,'test','test@demo.com','default.jpg','$2b$12$ujHiPBauPIC0FtffS6Nu9O8wRIyLHdqAv4chwZ9269HXF28Z9JIrO');
INSERT INTO "user" VALUES (4,'radekwarowny','radoslawwarowny@gmail.com','e68863106decb523.PNG','$2b$12$4XBgCSBOKAbAy.pXMYe/I.HbUGNmZ1qV2Bb2ifjHfBKZ0arXJIr8S');
INSERT INTO "user" VALUES (5,'John','John@demo.com','408cb37a7849d0d5.jpeg','$2b$12$xa5fuFJNz0WRCMYUIga3xexuwidYmto4MMvXZh1WG6qOy68PtQ7Yy');
INSERT INTO "user" VALUES (6,'Kim','Kim@demo.com','79dddf41ce198e04.jpeg','$2b$12$nUch50lUscrVSqwO7MmyJucLTTiBbac0n2U7WeM4SkOsXMdh0jPZq');
INSERT INTO "user" VALUES (7,'Samantha','Samantha@demo.com','3ed882154d66262d.jpeg','$2b$12$MwZgNod/vT4LHm5XzlKC2uy1TLmT3P3s6vvzvIHXDJHoyeTWRnFMa');
INSERT INTO "user" VALUES (8,'Kevin','Kevin@demo.com','65e52225124b2259.jpeg','$2b$12$d4ZX8DQYXo/DfTqLatkrc.t9NEhn9pAj07bHA40fCFNASK2TyoD2a');
COMMIT;
