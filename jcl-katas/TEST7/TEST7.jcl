//TEST7 JOB (EPAM006),'NICK',MSGCLASS=X,CLASS=S,MSGLEVEL=(2,1),NOTIFY=&SYSUID
//STEP1 EXEC PGM=SORT 
//SYSPRINT DD SYSOUT=* 
//SYSOUT DD SYSOUT=* 
//SORTIN DD * 
DENIS 
SEMEN 
MARK 
EUGENE 
/* 
//SORTOUT DD SYSOUT=* 
//SYSIN DD * 
 SORT FIELDS=(1,3,CH,D) 
/*
//IFSTEP2 IF (STEP1.RC > 0 & STEP1.RC < 16) THEN
//STEP2 EXEC PGM=SORT 
//SYSPRINT DD SYSOUT=* 
//SYSOUT DD SYSOUT=* 
//SORTIN DD * 
DENIS 
SEMEN 
MARK 
EUGENE 
/* 
//SORTOUT DD SYSOUT=* 
//SYSIN DD * 
 SORT FIELDS=(1,3,CH,D) 
/*
// ELSE
//STEP3 EXEC PGM=SORT 
//SYSPRINT DD SYSOUT=* 
//SYSOUT DD SYSOUT=* 
//SORTIN DD * 
DENIS 
SEMEN 
MARK 
EUGENE 
/* 
//SORTOUT DD SYSOUT=* 
//SYSIN DD *
 SORT FIELDS=(1,3,CH,D) 
/*
// ENDIF
//
