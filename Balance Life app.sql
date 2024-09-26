INSERT INTO users (name, email, password, role, dob, gender, phone_number) 
VALUES ('Maya', 'maya@example.com', 'password123', 'parent', '1987-05-15', 'female', '081234567890');


INSERT INTO schedule (user_id, activity, date, start_time, end_time, reminder)
VALUES (1, 'Lari Pagi', '2024-09-26', '06:00:00', '07:00:00', TRUE);

SELECT * FROM schedule WHERE user_id = 1;

UPDATE schedule
SET activity = 'Lari Siang', start_time = '12:00:00', end_time = '13:00:00'
WHERE schedule_id = 1;

INSERT INTO meals (user_id, meal_name, meal_type, calories, ingredients, instructions, date_prepared)
VALUES (1, 'Salad Buah', 'snack', 250, 'Buah-buahan segar', 'Campur semua buah', '2024-09-26');

UPDATE meals
SET calories = 300
WHERE meal_id = 1;


SELECT * FROM users
SELECT * FROM schedule 
SELECT * FROM meals 

UPDATE meals
SET calories = 300
WHERE meal_id = 1;


