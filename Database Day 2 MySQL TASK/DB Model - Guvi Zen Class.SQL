Design DB model for Guvi Zen class


CREATE DataBase--->
   use zen;
  
-- USERS------>

CREATE TABLE users(userid INT AUTO_INCREMENT PRIMARY KEY,
                   username VARCHAR(100), 
                   userEmail VARCHAR(100),
                   batchid INT);

INSERTING VALUES INTO USERS------------------>

               INSERT INTO users(username,useremail,batchid) VALUES("Atchay","atchays07@gmail.com",52),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("Saranya","saranya123@gmail.com",52),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("Amirtha","amirtha99@gmail.com",52),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("deepa","deepa@gmail.com",51),
                                                    
               INSERT INTO users(username,useremail,batchid) VALUES("Samuel","Samuel@gmail.com",51);


<----Codekata---->

	CREATE TABLE codekata(userid INTEGER,
	                      number_of_problems_solved INTEGER,
	                      FOREIGN KEY (userid) REFERENCES users(userid)
			      );

   INSERTING VALUES INTO CODEKATA------------------>

    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(1,50),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(2,60),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(3,30),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(4,40),
    
    INSERT INTO codekata(userid,number_of_problems_solved) VALUES(5,75);

    
--Company drives---->

 CREATE TABLE company_drives(
                              driveid INTEGER AUTO_INCREMENT PRIMARY KEY,
                              userid INTEGER,
                              drive_date DATE,c
                              ompany VARCHAR(100), 
                              FOREIGN KEY (userid) REFERENCES users(userid)
                            );

INSERT INTO  company_drives(userid,drive_date,company) VALUES (3,"2023-1-13","Microsofts"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (1,"2023-2-17","HCL"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (2,"2023-2-15","TCS"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (2,"2023-3-20","ZEN"),

INSERT INTO  company_drives(userid,drive_date,company) VALUES (5,"2023-3-30","Guvi");

--  Mentors

 CREATE TABLE mentors(
                      mentorid INTEGER AUTO_INCREMENT PRIMARY KEY,
                      mentorname VARCHAR(100),
                      mentoremail VARCHAR(100)
                     );

  INSERT INTO mentors(mentorname,mentoremail) VALUES ("Sanjay","sanjay123@gmail.com"),
  
  INSERT INTO mentors(mentorname,mentoremail) VALUES ("Sundeep","sandeep24@gmail.com"),
  
  INSERT INTO mentors(mentorname,mentoremail) VALUES ("Deepika","deepi985@gmail.com"),
  
 INSERT INTO mentors(mentorname,mentoremail) VALUES ("Priya","priya78@gmail.com"),
  
  INSERT INTO mentors(mentorname,mentoremail) VALUES ("Akash","akash07*@gmail.com");

 

 
--  Topic

 CREATE TABLE topics(
                   topicid INTEGER AUTO_INCREMENT PRIMARY KEY,
                   topic VARCHAR(200),
                   topic_date DATE,mentorid INTEGER,
                   batchid INTEGER,
                   FOREIGN KEY (mentorid) REFERENCES mentors(mentorid)
                 );

  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("HTML Basics","2023-08-1",1,52),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("CSS Basics","2023-08-2",2,52),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("Bootstrap-Grid","2023-08-3",3,52),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("JavaScript","2023-08-5",4,51),
  
  INSERT INTO  topics(topic,topic_date,mentorid,batchid) VALUES("React-component","2023-08-7",5,51);

 
--  Tasks
CREATE TABLE tasks(
                    taskid INTEGER AUTO_INCREMENT PRIMARY KEY, 
                    topicid INTEGER,
                    task VARCHAR(1000),
                    batchid INTEGER,
                    FOREIGN KEY (topicid) REFERENCES topics(topicid)
                  );

INSERT INTO tasks(topicid,task,batchid) VALUES (1,"HTML Task",52),

INSERT INTO tasks(topicid,task,batchid) VALUES (2,"CSS Task",52),
 
INSERT INTO tasks(topicid,task,batchid) VALUES (3,"Bootstrap Task",52),

INSERT INTO tasks(topicid,task,batchid) VALUES (4,"JavaScript Task",51),
                                        
INSERT INTO tasks(topicid,task,batchid) VALUES (5,"React Task",51);

-- Attendance

CREATE TABLE attendance(attendanceid INTEGER AUTO_INCREMENT PRIMARY KEY, 
                        userid INTEGER,
                        courseid INTEGER,
                        topicsid INTEGER, attended BOOLEAN,
                        FOREIGN KEY (userid) REFERENCES users(userid),
                        FOREIGN KEY (topicsid) REFERENCES topics(topicsid),
                        FOREIGN KEY (courseid) REFERENCES courses(courseid)
                        );
                        
                        

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(2,4,5,true),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(1,2,5,true),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(3,3,7,false),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(4,8,4,true),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(8,1,2,false),

INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(9,3,5,true),
                                                                


Query--------------------------->>>>>>>>>>>>>>.......

CREATE TABLE queries(queryid INTEGER AUTO_INCREMENT PRIMARY KEY ,
                     userid INTEGER, 
                     querybody VARCHAR(1000),mentorid INTEGER,
                     FOREIGN KEY (userid) REFERENCES users(userid),
                     FOREIGN KEY (mentorid) REFERENCES mentors(mentorid)
                    );

  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(1,"query about HTML",1),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(2,"query about CSS",5),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(3,"query about Bootstrap",4),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(5,"query about JavaScript",3),
  
  INSERT INTO queries(userid,querybody,mentorid) VALUES(4,"query about React",2);
                                                       
                                                       
