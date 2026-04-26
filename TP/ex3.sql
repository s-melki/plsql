-- Oracle connection en ligne https://freesql.com/ :
--   connect <username>/<password>@<host>:<port>/<service_name>
-- if oracle installed locally, you can use:
--   connect your_user/your_password
VARIABLE g_ch VARCHAR2(30);
VARIABLE g_n NUMBER;
DECLARE
v_ch VARCHAR2(30):='42 est la reponse';
v_n NUMBER;
BEGIN
v_n:=TO_NUMBER(SUBSTR(v_ch,1,2));
:g_ch:=v_ch;
:g_n:=v_n;

 END;
/
PRINT g_ch;
PRINT g_n;