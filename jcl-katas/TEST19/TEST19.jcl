//TEST19 JOB (NICK),'EPAM006',MSGCLASS=X,CLASS=S,MSGLEVEL=(2,1),
//       NOTIFY=&SYSUID
//* EXECUTE TSO COMMANDS IN THE BACKGROUND
//STEP1 EXEC PGM=IKJEFT01
//SYSPRINT DD SYSOUT=*
//SYSOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN DD *
 LISTCAT ALL ENTRIES('SYS1.PROCLIB')
/*
//
