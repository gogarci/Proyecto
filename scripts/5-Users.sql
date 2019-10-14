/*5. Users 
  Create 10 users
  - Each user should have a profile assigned from the ones created previously.
  - All of the profiles created should be used at least once.
  - All of the users should be able to login into the system */
  
CREATE USER GOGARCI 
  IDENTIFIED BY 1234
  PROFILE DEVELOPER;  
GRANT CREATE SESSION TO GOGARCI;

CREATE USER PLOPERA 
  IDENTIFIED BY 1234
  PROFILE DEVELOPER;  
GRANT CREATE SESSION TO PLOPERA;

CREATE USER VAMARIN 
  IDENTIFIED BY 1234
  PROFILE DEVELOPER;  
GRANT CREATE SESSION TO VAMARIN;

CREATE USER GLOGARGOM 
  IDENTIFIED BY 1234
  PROFILE DEVELOPER;  
GRANT CREATE SESSION TO GLOGARGOM;

CREATE USER KZULETA
  IDENTIFIED BY 1234
  PROFILE WEB_APPLICATION;
GRANT CREATE SESSION TO KZULETA;

CREATE USER NJARAMIL
  IDENTIFIED BY 1234
  PROFILE DBA_ADMIN;
GRANT CREATE SESSION TO NJARAMIL;

CREATE USER JBALDER
  IDENTIFIED BY 1234
  PROFILE ANALYST;
GRANT CREATE SESSION TO JBALDER;

CREATE USER JCARBOLE
  IDENTIFIED BY 1234
  PROFILE SUPPORT_III;
GRANT CREATE SESSION TO JCARBOLE;

CREATE USER NRAMIREZ
  IDENTIFIED BY 1234
  PROFILE REPORTER;
GRANT CREATE SESSION TO NRAMIREZ;

CREATE USER SLOTERO
  IDENTIFIED BY 1234
  PROFILE AUDITOR;
GRANT CREATE SESSION TO SLOTERO;

