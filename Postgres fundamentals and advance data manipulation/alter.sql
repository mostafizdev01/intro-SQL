-- Active: 1747405674511@@127.0.0.1@5432@ph

SELECT * FROM person2;  -- check the person2 table value

ALTER TABLE person2 
    ADD COLUMN email VARCHAR(25) DEFAULT 'example@gamil.com' NOT NULL;  -- person2 table er mordhe ekta column add hobe and tar default value hobe example@gamil.com || and ata kokhonno null hote perbe nah.


    INSERT INTO person2 VALUES(9, 'kabila', 48, 'kabila@gmail.com')

    --- delete email column

    ALTER Table person2
    DROP COLUMN email;

    --- rename column useing in alter

    ALTER TABLE person2
      RENAME COLUMN age to user_age;


    --- change the varchar number

    ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(50);

    --- change the column type nullable to not null.

    ALTER TABLE person2
    ALTER COLUMN user_age set NOT NULL;

    --- change the column type not null to Nullable.

    ALTER TABLE person2
    ALTER COLUMN user_age DROP NOT NULL;


-- unic table in database column 

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE(user_age);

-- unic table in database column 
ALTER TABLE person2
DROP constraint unique_person2_user_age   --  avabe amra j kono key add and change korte pari...

CREATE TABLE person3 (
  id INT,
  name VARCHAR(50),
  age INT
);

-- delete all value command in person3 table..


TRUNCATE TABLE person3; 


