-- Oracle connection en ligne https://freesql.com/ :
--   connect <username>/<password>@<host>:<port>/<service_name>
-- if oracle installed locally, you can use:
--   connect your_user/your_password
SET SERVEROUTPUT ON
DECLARE
v_sal NUMBER;
BEGIN
SELECT sal INTO v_sal FROM scott.emp
WHERE empno=7902;
DBMS_OUTPUT.PUT_LINE('Le salaire de l''employe 7902 est '||v_sal);
END;
/

--1
--a
v_id NUMBER;-->Ok
v_x, v_y NUMBER; -->on ne peut pas declaree deux variables dans la mm ligne
v_birthdate DATE NOT NULL; -->il faut initialise un variable NOT NULL
v_valid BOOLEAN := 11; -->doit prendre True ou False

--
--b
v_days_to_go := v_due_date – SYSDATE ;-->NUMBER
v_sender := USER || ‘:’ || TO_CHAR(v_deptno);--> VARCHAR2(20)
v_n1 := v_n2 > (2 * v_n3);-->Boolean
v_value := NULL;-->tous types de donnees