


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

INSERT INTO mentors(mentorname,mentoremail) VALUES ("Ragav","siva@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Manoj","kumar@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Mahendran","mano@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Manickam","muthu@gmail.com");
INSERT INTO mentors(mentorname,mentoremail) VALUES ("Gopal","selvi@gmail.com");




INSERT INTO topics(courseid,topic) VALUES(1,"loops and array");
INSERT INTO topics(courseid,topic) VALUES(2,"Html basics");
INSERT INTO topics(courseid,topic) VALUES(3,"CSS basics");
INSERT INTO topics(courseid,topic) VALUES(4,"React basics");
INSERT INTO topics(courseid,topic) VALUES(5,"NOde js basics");



INSERT INTO tasks(courseid,task) VALUES (1,"Html task ");
INSERT INTO tasks(courseid,task) VALUES (2,"javascript task");
INSERT INTO tasks(courseid,task) VALUES (3,"NodeJs task");
INSERT INTO tasks(courseid,task) VALUES (4,"Css task");
INSERT INTO tasks(courseid,task) VALUES (5,"ReactJs basics");









INSERT INTO users(username,useremail,batchid) VALUES("Ram","hari@gmail.com",1);
INSERT INTO users(username,useremail,batchid) VALUES("RAJ","hari@gmail.com",1);
INSERT INTO users(username,useremail,batchid) VALUES("Ajith","hari@gmail.com",1);
INSERT INTO users(username,useremail,batchid) VALUES("Ajay","hari@gmail.com",1);


SELECT * FROM users ;
SELECT * FROM courses ;
SELECT * FROM tasks ;
SELECT * FROM topics ;
SELECT * FROM mentors ;
