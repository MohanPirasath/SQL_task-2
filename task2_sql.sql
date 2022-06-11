


CREATE TABLE courses(
courseid INTEGER AUTO_INCREMENT PRIMARY KEY,
coursename VARCHAR(100));

CREATE TABLE mentors(
mentorid INTEGER AUTO_INCREMENT PRIMARY KEY,
mentorname VARCHAR(100),
mentoremail VARCHAR(100));





CREATE TABLE topics(
topicsid INTEGER AUTO_INCREMENT PRIMARY KEY,
courseid INTEGER, topic VARCHAR(200),
FOREIGN KEY (courseid) REFERENCES courses(courseid)
);

CREATE TABLE tasks(
tasksid INTEGER AUTO_INCREMENT PRIMARY KEY,
courseid INTEGER,task VARCHAR(200),
FOREIGN KEY (courseid) REFERENCES courses(courseid)
);


CREATE TABLE users(
userid INTEGER AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(100),
useremail VARCHAR(100),
batchid INTEGER);



-- insert


INSERT INTO courses VALUES(1,"Javascript");
INSERT INTO courses VALUES(2,"Html");
INSERT INTO courses VALUES(3,"Css");
INSERT INTO courses VALUES(4,"ReactJs");
INSERT INTO courses VALUES(5,"NodeJs");

INSERT INTO mentors(mentorname,mentoremail) VALUES ("Ragav","ragav@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Manoj","manoj@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Mahendran","mahendran@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Manickam","manickam@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Gopal","gopal@gmail.com");




INSERT INTO topics(courseid,topic) VALUES(1," Html basics");
INSERT INTO topics(courseid,topic) VALUES(2,"CSS basics");
INSERT INTO topics(courseid,topic) VALUES(3," Javascript-loops and array");
INSERT INTO topics(courseid,topic) VALUES(4,"React");
INSERT INTO topics(courseid,topic) VALUES(5,"Node js");



INSERT INTO tasks(courseid,task) VALUES (1,"Html task ");
INSERT INTO tasks(courseid,task) VALUES (2,"Css task");
INSERT INTO tasks(courseid,task) VALUES (3,"javascript task");
INSERT INTO tasks(courseid,task) VALUES (4,"ReactJs task");
INSERT INTO tasks(courseid,task) VALUES (5,"NodeJs task");









INSERT INTO users(username,useremail,batchid) VALUES("Ram","ram@gmail.com",1);
INSERT INTO users(username,useremail,batchid) VALUES("RAJ","raj@gmail.com",1);
INSERT INTO users(username,useremail,batchid) VALUES("Ajith","ajith@gmail.com",1);
INSERT INTO users(username,useremail,batchid) VALUES("Ajay","ajay@gmail.com",1);


SELECT * FROM users ;
SELECT * FROM courses ;
SELECT * FROM tasks ;
SELECT * FROM topics ;
SELECT * FROM mentors ;
