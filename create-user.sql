alter session set container = orclpdb1;

create user {username} identified by {password};

GRANT CREATE SESSION TO {username};

GRANT CREATE ANY TABLE TO {username};

GRANT ALTER ANY TABLE TO {username};

GRANT DROP ANY TABLE TO {username};

GRANT INSERT ANY TABLE TO {username};

GRANT SELECT ANY TABLE TO {username};

GRANT UPDATE ANY TABLE TO {username};

GRANT DELETE ANY TABLE TO {username};

GRANT CREATE MATERIALIZED VIEW TO {username};

GRANT CREATE ANY VIEW TO {username};

GRANT CREATE ANY SEQUENCE TO {username};

GRANT CREATE ANY TRIGGER TO {username};

GRANT CREATE ANY PROCEDURE TO {username};

GRANT EXECUTE ANY PROCEDURE TO {username};

GRANT CREATE ANY INDEX TO {username};

GRANT ALTER ANY INDEX TO {username};

GRANT DROP ANY INDEX TO {username};

GRANT CREATE ANY TRIGGER TO {username};

GRANT ALTER ANY TRIGGER TO {username};

GRANT DROP ANY TRIGGER TO {username};

GRANT CREATE ROLE TO {username};

GRANT COMMENT ANY TABLE TO {username};

GRANT GRANT ANY OBJECT PRIVILEGE TO {username};

GRANT CREATE USER TO {username};

GRANT SELECT ANY DICTIONARY TO {username};

GRANT UNLIMITED TABLESPACE TO {username};

GRANT DEBUG CONNECT SESSION TO {username};

GRANT DEBUG ANY PROCEDURE TO {username};

GRANT DEBUG CONNECT ANY TO {username};
