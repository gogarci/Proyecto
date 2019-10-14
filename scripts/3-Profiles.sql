/*3. Create the following Profiles with the resources described:*/
  
  /*i. developer
        session per user: 1
        connect time: 60
        idle time: 30
        failed login attempts: 5
        password life time: 90 */
 CREATE PROFILE DEVELOPER LIMIT
    SESSIONS_PER_USER     1
    CONNECT_TIME          60
    IDLE_TIME             30
    FAILED_LOGIN_ATTEMPTS 5
    PASSWORD_LIFE_TIME    90;
    
 /*ii. web_application
        session per user: 5
        connect time: no limit
        idle time: no limit
        failed login attempts: 2
        password life time: 30*/
CREATE PROFILE WEB_APPLICATION LIMIT 
    SESSIONS_PER_USER     5
    CONNECT_TIME          UNLIMITED
    IDLE_TIME             UNLIMITED
    FAILED_LOGIN_ATTEMPTS 2
    PASSWORD_LIFE_TIME    30;
    
/* iii. dba_admin
          session per user: 1
          connect time: 30
          idle time: no limit
          failed login attempts: 2
          password life time: 30*/
CREATE PROFILE DBA_ADMIN LIMIT 
    SESSIONS_PER_USER     1
    CONNECT_TIME          30
    IDLE_TIME             UNLIMITED
    FAILED_LOGIN_ATTEMPTS 2
    PASSWORD_LIFE_TIME    30;
    
 /*iv. analyst
        session per user: 1
        connect time: 30
        idle time: 5
        failed login attempts: 3
        password life time: 30
        password grace time: 3*/
CREATE PROFILE ANALYST LIMIT
    SESSIONS_PER_USER     1
    CONNECT_TIME          30
    IDLE_TIME             5
    FAILED_LOGIN_ATTEMPTS 3
    PASSWORD_LIFE_TIME    30
    PASSWORD_GRACE_TIME   3;
    
/*V. support_III
      session per user: 1
      connect time: 240
      idle time: 5
      failed login attempts: 3
      password life time: 20
      password grace time: 3*/
CREATE PROFILE SUPPORT_III LIMIT
    SESSIONS_PER_USER     1
    CONNECT_TIME          240
    IDLE_TIME             5
    FAILED_LOGIN_ATTEMPTS 3
    PASSWORD_LIFE_TIME    20
    PASSWORD_GRACE_TIME   3;
    
/*vi. reporter
       session per user: 1
       connect time: 90
       idle time: 15
       failed login attempts: 4
       password life time: no limit
       password grace time: 5*/
CREATE PROFILE REPORTER LIMIT
    SESSIONS_PER_USER     1
    CONNECT_TIME          90
    IDLE_TIME             15
    FAILED_LOGIN_ATTEMPTS 4
    PASSWORD_LIFE_TIME    UNLIMITED
    PASSWORD_GRACE_TIME   5;

 /*vii. auditor
          session per user: 1
          connect time: 90
          idle time: 15
          failed login attempts: 4
          password life time: no limit
          password grace time: 5*/
CREATE PROFILE AUDITOR LIMIT
    SESSIONS_PER_USER     1
    CONNECT_TIME          90
    IDLE_TIME             15
    FAILED_LOGIN_ATTEMPTS 4
    PASSWORD_LIFE_TIME    UNLIMITED
    PASSWORD_GRACE_TIME   5;
