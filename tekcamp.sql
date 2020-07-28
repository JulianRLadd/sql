-- 1.
-- students; tekcamp01,tekcampers

-- 2.
CREATE DATABASE tc1_julian_ladd;

-- 3. & --4.
USE tc1_julian_ladd;
CREATE TABLE tc1_julian_ladd.tekcampers LIKE students.tekcamp01;
INSERT tc1_julian_ladd.tekcampers SELECT * FROM students.tekcamp01;

-- 5.
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Cody","Clark","M","Some College");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Tyler","Clements","M","Bachelors Degree");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Gotham","Katta","M","Bachelors Degree");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Kevin","Keesee","M","High School Diploma");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("John","Kol","M","Some College");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("John","Bozaroz","M","Bachelors Degree");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Justin","Cheng","M","Some College");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Vimala","Murthy","F","Masters Degree");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Monica","Howard","F","NULL");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Aaron","White","M","NULL");
INSERT INTO tekcampers (first_name, last_name,gender,education) VALUES ("Vani","Muppuru","F","Masters Degree");

-- 6.
DELETE FROM tekcampers WHERE last_name="Kremling";
DELETE FROM tekcampers WHERE first_name="desaree";
DELETE FROM tekcampers WHERE first_name="rosa";

-- 7.
UPDATE tekcampers SET gender=education WHERE gender IS NULL;
UPDATE tekcampers SET gender="M" WHERE gender IS NULL;
UPDATE tekcampers SET gender="F" WHERE last_name="Ulysse";
UPDATE tekcampers SET education = "Bachelors Degree" WHERE last_name IN ("Swigert","Rice","Kim","Moreno","Ulysse","Castiglione");
UPDATE tekcampers SET education = "Masters Degree" WHERE last_name IN ("Choat","Golden");
UPDATE tekcampers SET education = NULL WHERE last_name IN ("Chavez","Kinney","Brooks","Bates","Radhakrishnan");
UPDATE tekcampers SET education = "Associates Degree" WHERE last_name IN ("Waters","Shane");
UPDATE tekcampers SET education = "Doctorate" WHERE first_name IN ("Norita");
UPDATE tekcampers SET education = "High School Diploma" WHERE last_name IN ("Ibanez","Johnson");
UPDATE tekcampers SET education = "Some College" WHERE last_name IN ("Torres","Barbosa","Betts","Gonzalez","Ladd");

-- 8.i
SELECT * FROM tekcampers WHERE length(last_name) > 7;
-- ii
SELECT * FROM tekcampers ORDER BY first_name;
-- iii
SELECT * FROM tekcampers ORDER BY last_name;
-- iv
SELECT * FROM tekcampers WHERE gender = "M";
-- v
SELECT * FROM tekcampers WHERE gender = "F";
-- vi
SELECT * FROM tekcampers WHERE education = "Masters Degree";
-- vii
SELECT * FROM tekcampers WHERE education = "Bachelors Degree";
-- viii
SELECT * FROM tekcampers WHERE education = "Associates Degree";
-- ix
SELECT * FROM tekcampers WHERE education = "High School Diploma";

-- 9.
CREATE TABLE `ta-Tim-Phillips` LIKE tekcampers;
INSERT `ta-Tim-Phillips` SELECT * FROM tekcampers;
DELETE FROM `ta-Tim-Phillips` WHERE NOT first_name in ("Abigail","Christian","Devon","Gabe","Monica","Michael","Adam","Marcelo","Jose","Phoenix","Julian");

-- 10.
CREATE TABLE hobbies(hobby_id INT AUTO_INCREMENT,name VARCHAR(255) NOT NULL, id INT, PRIMARY KEY (hobby_id), FOREIGN KEY (id) REFERENCES tekcampers(id));
INSERT INTO hobbies (name,id) VALUES ("Reading",1);
INSERT INTO hobbies (name,id) VALUES ("Motorcycle Riding",10);
INSERT INTO hobbies (name,id) VALUES ("Video Games",18);
INSERT INTO hobbies (name,id) VALUES ("Golfing",6);
INSERT INTO hobbies (name,id) VALUES ("Cattle Rustling",2);
INSERT INTO hobbies (name,id) VALUES ("Gardening",36);
INSERT INTO hobbies (name,id) VALUES ("Reading",19);
INSERT INTO hobbies (name,id) VALUES ("Aerial Yoga",17);
INSERT INTO hobbies (name,id) VALUES ("Running",31);
INSERT INTO hobbies (name,id) VALUES ("Video Games",32);
INSERT INTO hobbies (name,id) VALUES ("Working Out",14);
INSERT INTO hobbies (name,id) VALUES ("Pickle Ball",12);
INSERT INTO hobbies (name,id) VALUES ("Engineering Projects",5);
INSERT INTO hobbies (name,id) VALUES ("Jiu Jitsu",7);
INSERT INTO hobbies (name,id) VALUES ("Writing",11);
INSERT INTO hobbies (name,id) VALUES ("Cooking",29);
INSERT INTO hobbies (name,id) VALUES ("Eating",8);
INSERT INTO hobbies (name,id) VALUES ("Gaming",15);
INSERT INTO hobbies (name,id) VALUES ("Eating",35);
INSERT INTO hobbies (name,id) VALUES ("Listening to Music",4);
INSERT INTO hobbies (name,id) VALUES ("Hockey",25);
INSERT INTO hobbies (name,id) VALUES ("Soccer",34);
INSERT INTO hobbies (name,id) VALUES ("Longboarding",21);
INSERT INTO hobbies (name,id) VALUES ("Soccer",16);
INSERT INTO hobbies (name,id) VALUES ("Growing hot peppers",30);
INSERT INTO hobbies (name,id) VALUES ("Interior Decoration",39);
INSERT INTO hobbies (name,id) VALUES ("Gaming",22);
INSERT INTO hobbies (name,id) VALUES ("Playing the piano",23);

-- 11.
SELECT tekcampers.first_name, tekcampers.last_name, hobbies.name FROM hobbies INNER JOIN tekcampers ON hobbies.id = tekcampers.id;

-- 12.
ALTER TABLE tekcampers ADD bootcamp VARCHAR(255);
UPDATE tekcampers SET bootcamp = "Coding Dojo" WHERE first_name = "Adam";
UPDATE tekcampers SET bootcamp = "Coding Dojo" WHERE first_name = "Julian";
UPDATE tekcampers SET bootcamp = "Coding Dojo" WHERE first_name = "Devon";
UPDATE tekcampers SET bootcamp = "Coding Dojo" WHERE first_name = "Marcelo";
UPDATE tekcampers SET bootcamp = "DevMountain" WHERE first_name = "Phoenix";
UPDATE tekcampers SET bootcamp = "Trilogy Education" WHERE first_name = "Cody";
UPDATE tekcampers SET bootcamp = "Trilogy Education" WHERE first_name = "Justin";
UPDATE tekcampers SET bootcamp = "SMU Coding Bootcamp" WHERE last_name = "Choat";
UPDATE tekcampers SET bootcamp = "U.S. Navy Bootcamp" WHERE last_name = "Chavez";

-- 13.
ALTER TABLE `ta-Tim-Phillips` ADD bootcamp VARCHAR(255);
UPDATE `ta-Tim-Phillips` SET bootcamp = "DevMountain" WHERE last_name = "Shane";
UPDATE `ta-Tim-Phillips` SET bootcamp = "Coding Dojo" WHERE last_name IN ("Ladd","Barbosa","Brewster","Rice");
UPDATE `ta-Tim-Phillips` SET bootcamp = "U.S. Navy Bootcamp" WHERE last_name = "Chavez";











