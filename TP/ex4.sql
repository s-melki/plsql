SET SERVEROUTPUT ON
ACCEPT s_sal PROMPT 'Saisir un salaire ';
ACCEPT s_comm PROMPT 'Saisir une commission ';
DECLARE
v_salann NUMBER;
BEGIN
v_salann:=&s_sal*12 + NVL(&s_comm,0);
DBMS_OUTPUT.PUT_LINE(v_salann);
END;
/