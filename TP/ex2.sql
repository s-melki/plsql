-- Oracle connection en ligne https://freesql.com/ :
--   connect <username>/<password>@<host>:<port>/<service_name>
-- if oracle installed locally, you can use:
--   connect your_user/your_password
SET SERVEROUTPUT ON
ACCEPT s_num1 PROMT 'Donnez une valeur';
ACCEPT s_num2 PROMT 'Donnez une autre valeur';
Declare
	v_num1 NUMBER ;
	v_num2 NUMBER ;
	v_sum NUMBER ;
BEGIN
	v_num1 := &s_num1;
  v_num2 := &s_num2;
  v_sum := v_num1+v_num2;
DBMS_OUTPUT.PUT_LINE('la somme des deux variables est '||v_sum);
END;
/