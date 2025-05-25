SELECT * FROM employeers;
  SELECT count(*) FROM employeers;

CREATE FUNCTION emp_count()
RETURNS INT --- will return an integer
LANGUAGE SQL -- will use the LANGUAGE
as
$$  --- create function body
  SELECT count(*) FROM employeers
$$;

SELECT emp_count();

CREATE or REPLACE FUNCTION delete_emp()
RETURNS void --- nothing return anything
LANGUAGE SQL -- will use the LANGUAGE
as
$$  --- create function body
  DELETE FROM employeers WHERE employee_id = 30;
$$;

SELECT delete_emp();

--- create sql function and pass the parametar
CREATE or REPLACE FUNCTION delete_emp_by_id(p_emp_id INT)
RETURNS void --- nothing return anything
LANGUAGE SQL -- will use the LANGUAGE
as
$$  --- create function body
  DELETE FROM employeers WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_by_id(29); --- pass the paramiter

---- learn procedure 

CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS
 $$
 BEGIN
   DELETE FROM employeers WHERE employee_id = 28;
 END
 $$;

 CALL remove_emp();
SELECT * FROM employeers;

-- 2nd time-----------
CREATE Procedure remove_emp_by_id(p_emp_id INT)
LANGUAGE plpgsql
AS
 $$
 DECLARE
 test_var int; --- create variable
 BEGIN
   SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id;
   DELETE FROM employeers WHERE employee_id = test_var;

   RAISE NOTICE 'Employee removed successfully!';
 END
 $$;

 CALL remove_emp_by_id(26);
SELECT * FROM employeers;
