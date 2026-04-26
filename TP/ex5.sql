-- Oracle connection en ligne https://freesql.com/ :
--   connect <username>/<password>@<host>:<port>/<service_name>
-- if oracle installed locally, you can use:
--   connect your_user/your_password
SET SERVEROUTPUT ON
DECLARE
  v_customer VARCHAR2(20) := 'WomanSport' ;
  v_credit VARCHAR2(20) := 'Excellent';
BEGIN
  DECLARE
    v_customer NUMBER(7):=201 ;
    v_name VARCHAR2(20):='Unisports';
  BEGIN
    DBMS_OUTPUT.PUT_LINE(v_customer);
    DBMS_OUTPUT.PUT_LINE(v_credit);
    DBMS_OUTPUT.PUT_LINE(v_name);
    v_credit:='Good';
  END;
  DBMS_OUTPUT.PUT_LINE(v_customer);
  DBMS_OUTPUT.PUT_LINE(v_credit);            
END;
/