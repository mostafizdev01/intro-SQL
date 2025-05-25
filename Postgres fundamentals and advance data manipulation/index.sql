SELECT * FROM employeers;

EXPLAIN ANALYSE
SELECT * FROM employeers WHERE employee_name = 'Daisy Perry';


CREATE INDEX inx_employees
ON employeers(employee_name);