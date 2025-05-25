
CREATE table my_users(
    user_name VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO my_users VALUES('mezba', 'mezba@gmail.com'), ('mir', 'mir@gmail.com');

CREATE Table deleted_user_audit(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)

SELECT * FROM deleted_user_audit;
-- creating trigger function

CREATE or REPLACE function save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
  BEGIN
    INSERT INTO deleted_user_audit VALUES(OLD.user_name, now());
    RAISE NOTICE 'Deleted user audit log created';
    RETURN OLD;
  END
$$;

CREATE or REPLACE Trigger save_deleted_user_triger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

DELETE FROM my_users WHERE user_name = 'mir';

SELECT * FROM my_users;