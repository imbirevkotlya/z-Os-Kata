//TEST16 JOB (NICK),'EPAM006',CLASS=S,MSGCLASS=X,MSGLEVEL=(2,1),
//       NOTIFY=&SYSUID
//* DELETE SEQUENTIAL DATASET WITH IEFBR14
//STEP1 EXEC PGM=IEFBR14
//SYSPRINT DD SYSOUT=*
//SYSOUT DD SYSOUT=*
//DD1 DD DSN=&SYSUID..TEST.DS,DISP=(OLD,DELETE,DELETE)
