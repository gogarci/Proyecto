/* 2. Create 3 tablespaces:*/

/*Smallfile tablespace with 1Gb of data splited in 2 datafile. The name of the tablespace should be "BET_ITM".*/
CREATE TABLESPACE BET_ITM DATAFILE
   'DATAFILE01.DBF' SIZE 500M ,
   'DATAFILE02.DBF' SIZE 500M;

/*Bigfile tablespace with 2Gb of data. The name of the tablespace should be "BET_AUDITING" */
CREATE BIGFILE TABLESPACE BET_AUDITING DATAFILE
   'DATABIGFILE.DBF' SIZE 2G;
   
/*Undo tablespace with 500Mb and 1 datafile. (Set this tablespace to be used in the system)*/
CREATE UNDO TABLESPACE UNDO_NEW DATAFILE
  'UNDO_NEW01.DBF' SIZE 500M;
  
alter system set undo_tablespace=UNDO_NEW scope=both;

  