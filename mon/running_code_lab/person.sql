-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INTEGER,
    height INTEGER,
    city VARCHAR(255),
    favorite_color VARCHAR(255))

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name,age,height,city,favorite_color)
VALUES ('James', 24, 50,'Atlanta','red'),
        ('Charles', 4, 40,'Los Angeles', 'black'),
        ('Jimmy', 40, 70,'Chicago', 'green'),
        ('Michael', 34, 60,'Boston','yellow'),
        ('Pam', 31, 21,'Miami','purple')

-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC

-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height ASC

-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC

-- Select all the people in the person table older than age 20.
SELECT * FROM person 
WHERE age > 20

-- Select all the people in the person table that are exactly 18.
SELECT * FROM person 
WHERE age = 18

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age > 20 AND age < 30

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age != 27

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color != 'red'

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue'

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'green' OR favorite_color = 'orange'

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('green','orange','blue')

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN  ('yellow','purple')
