 call s1
 print *,'pass'
 end
 subroutine s1
 end
         SUBROUTINE TSDHED(KCASE,TSDFIL,DT,NDELTA,NSTART,PERIOD,&
     &    NAUDIT,NSURFS,NSURFV,&
     &    CNLAUD,CNSAUD,CNUAUD,&
     &    CNLSUR,CNSSUR,KCLSUR,&
     &    CNLSRV,CNSSRV,CNUSRV,&
     &    CNLTIM,CNSTIM,CNUTIM,CNURAT,CNUFRQ,&
     &    MAUDIT,MSURFS,MSURFV)
       IMPLICIT    NONE
       COMMON/COMBAS/&
     &   ALTIME,   CPTIME,   NLEDGE,   NLEND,    NLRES,    NONLIN,&
     &   NOUT,     NPRINT,   NREAD,    NREC,     NRESUM,   NSTEP,&
     &   STIME,    LABEL1,   LABEL2,   LABEL3,   LABEL4,   LABEL5,&
     &   LABEL6,   LABEL7,   LABEL8,   NDIARY,   NIN,      NPUNCH,&
     &   NRUN
       INTEGER  &
     &   NLEDGE,   NONLIN,&
     &   NOUT,     NPRINT,   NREAD,    NREC,     NRESUM,   NSTEP,&
     &   LABEL1,   LABEL2,   LABEL3,   LABEL4,   LABEL5,&
     &   LABEL6,   LABEL7,   LABEL8,   NDIARY,   NIN,      NPUNCH,&
     &   NRUN
       REAL        ALTIME,   CPTIME,   STIME
       LOGICAL     NLEND,    NLRES
       DIMENSION&
     &   LABEL1(12),         LABEL2(12),         LABEL3(12),&
     &   LABEL4(12),         LABEL5(12),         LABEL6(12),&
     &   LABEL7(12),         LABEL8(12)
       CHARACTER*48&
     &   CHLAB1,   CHLAB2,   CHLAB3,   CHLAB4,   CHLAB5,   CHLAB6,&
     &   CHLAB7,   CHLAB8,   CHLAB9,   CHLB10,   CHLB11,   CHLB12,&
     &   CHLB13,   CHLB14,   CHLB15,   CHLB16
       CHARACTER*8&
     &   CHRDAT,   CHRTIM,   CHDATO,   CHTIMO,   CHREFN
       CHARACTER*6&
     &   CHPRES
       COMMON/CHABAS/&
     &   CHLAB1,   CHLAB2,   CHLAB3,   CHLAB4,   CHLAB5,   CHLAB6,&
     &   CHLAB7,   CHLAB8,   CHLAB9,   CHLB10,   CHLB11,   CHLB12,&
     &   CHLB13,   CHLB14,   CHLB15,   CHLB16,   CHRDAT,   CHRTIM,&
     &   CHDATO,   CHTIMO,   CHREFN,   CHPRES
       INTEGER     KCASE
       CHARACTER   TSDFIL*(*)
       REAL        DT
       INTEGER     NDELTA
       INTEGER     NSTART
       REAL        PERIOD
       INTEGER     NAUDIT
       INTEGER     NSURFS
       INTEGER     NSURFV
       INTEGER     MAUDIT
       INTEGER     MSURFS
       INTEGER     MSURFV
       CHARACTER   CNLAUD(MAUDIT)*(*)
       CHARACTER   CNSAUD(MAUDIT)*(*)
       CHARACTER   CNUAUD(MAUDIT)*(*)
       CHARACTER   CNLSUR(MSURFS)*(*)
       CHARACTER   CNSSUR(MSURFS)*(*)
       INTEGER     KCLSUR(MSURFS)
       CHARACTER   CNLSRV(MSURFV)*(*)
       CHARACTER   CNSSRV(MSURFV)*(*)
       CHARACTER   CNUSRV(MSURFV)*(*)
       CHARACTER   CNLTIM*(*)
       CHARACTER   CNSTIM*(*)
       CHARACTER   CNUTIM*(*)
       CHARACTER   CNURAT*(*)
       CHARACTER   CNUFRQ*(*)
       INTEGER     LUNIT
       CHARACTER   COMPAT*16
       CHARACTER   CVERS*16
       INTEGER     JA
       INTEGER     JS
       INTEGER     JV
       LOGICAL     LOPEN
       PARAMETER   (COMPAT = 'TWTTIM 1.00.00')
       CHARACTER   SCCSID*(80)
       DATA SCCSID/'@(#)tsdhed.f\t1.5\tDIAG\tAEA\t01 Mar 1995\n'/
         IF (LEN(CNLAUD(1)) .LT. 64) GOTO 510
         IF (LEN(CNLSUR(1)) .LT. 64) GOTO 510
         IF (LEN(CNLSRV(1)) .LT. 64) GOTO 510
         IF (LEN(CNLTIM) .LT. 64) GOTO 510
         IF (LEN(CNSAUD(1)) .LT. 8) GOTO 510
         IF (LEN(CNUAUD(1)) .LT. 8) GOTO 510
         IF (LEN(CNSSUR(1)) .LT. 8) GOTO 510
         IF (LEN(CNSSRV(1)) .LT. 8) GOTO 510
         IF (LEN(CNUSRV(1)) .LT. 8) GOTO 510
         IF (LEN(CNSTIM) .LT. 8) GOTO 510
         IF (LEN(CNUTIM) .LT. 8) GOTO 510
         IF (LEN(CNURAT) .LT. 8) GOTO 510
         IF (LEN(CNUFRQ) .LT. 8) GOTO 510
         INQUIRE (FILE=TSDFIL,OPENED=LOPEN,NUMBER=LUNIT)
         IF (.NOT. LOPEN) GOTO 520
         IF (KCASE .EQ. 1) THEN
         READ(LUNIT,ERR=530) CVERS
         IF (CVERS .NE. COMPAT) GOTO 540
         READ(LUNIT,ERR=530) CHLAB1,CHREFN,&
     &   CHRDAT,CHRTIM
         READ(LUNIT,ERR=530)     DT,NDELTA,&
     &   NSTART,PERIOD
         READ(LUNIT,ERR=530) NAUDIT,NSURFS,NSURFV
         IF (NAUDIT .GT. MAUDIT) GO TO 550
         IF (NSURFS .GT. MSURFS) GO TO 560
         IF (NSURFV .GT. MSURFS) GO TO 570
         READ(LUNIT,ERR=530) (CNLAUD(JA)(:64),JA=1,NAUDIT)
         READ(LUNIT,ERR=530) (CNSAUD(JA)(:8),JA=1,NAUDIT)
         READ(LUNIT,ERR=530) (CNUAUD(JA)(:8),JA=1,NAUDIT)
         READ(LUNIT,ERR=530) (CNLSUR(JS)(:64),JS=1,NSURFS)
         READ(LUNIT,ERR=530) (CNSSUR(JS)(:8),JS=1,NSURFS)
         READ(LUNIT,ERR=530) (KCLSUR(JS),JS=1,NSURFS)
         READ(LUNIT,ERR=530) (CNLSRV(JV)(:64),JV=1,NSURFV)
         READ(LUNIT,ERR=530) (CNSSRV(JV)(:8),JV=1,NSURFV)
         READ(LUNIT,ERR=530) (CNUSRV(JV)(:8),JV=1,NSURFV)
         READ(LUNIT,ERR=530) CNLTIM(:64)
         READ(LUNIT,ERR=530) CNSTIM(:8)
         READ(LUNIT,ERR=530) CNUTIM(:8)
         READ(LUNIT,ERR=530) CNURAT(:8)
         READ(LUNIT,ERR=530) CNUFRQ(:8)
         RETURN
         ELSE IF (KCASE .EQ. 2) THEN
         WRITE(LUNIT,ERR=530) COMPAT
         WRITE(LUNIT,ERR=530) CHLAB1,CHREFN,&
     &   CHRDAT,CHRTIM
         WRITE(LUNIT,ERR=530)     DT,NDELTA,&
     &   NSTART,PERIOD
         WRITE(LUNIT,ERR=530) NAUDIT,NSURFS,NSURFV
         WRITE(LUNIT,ERR=530) (CNLAUD(JA)(:64),JA=1,NAUDIT)
         WRITE(LUNIT,ERR=530) (CNSAUD(JA)(:8),JA=1,NAUDIT)
         WRITE(LUNIT,ERR=530) (CNUAUD(JA)(:8),JA=1,NAUDIT)
         WRITE(LUNIT,ERR=530) (CNLSUR(JS)(:64),JS=1,NSURFS)
         WRITE(LUNIT,ERR=530) (CNSSUR(JS)(:8),JS=1,NSURFS)
         WRITE(LUNIT,ERR=530) (KCLSUR(JS),JS=1,NSURFS)
         WRITE(LUNIT,ERR=530) (CNLSRV(JV)(:64),JV=1,NSURFV)
         WRITE(LUNIT,ERR=530) (CNSSRV(JV)(:8),JV=1,NSURFV)
         WRITE(LUNIT,ERR=530) (CNUSRV(JV)(:8),JV=1,NSURFV)
         WRITE(LUNIT,ERR=530) CNLTIM(:64)
         WRITE(LUNIT,ERR=530) CNSTIM(:8)
         WRITE(LUNIT,ERR=530) CNUTIM(:8)
         WRITE(LUNIT,ERR=530) CNURAT(:8)
         WRITE(LUNIT,ERR=530) CNUFRQ(:8)
         RETURN
         ENDIF
  510    WRITE(*,9000)
         WRITE(*,9002)
         STOP
  520    WRITE(*,9000)
         WRITE(*,9001) TSDFIL
         STOP
  530    WRITE(*,9000)
         WRITE(*,9003) TSDFIL, LUNIT
         STOP
  540    WRITE(*,9000)
         WRITE(*,9004) TSDFIL,CVERS, COMPAT
         STOP
  550    WRITE(*,9000)
         WRITE(*,9005) NAUDIT, MAUDIT
         STOP
  560    WRITE(*,9000)
         WRITE(*,9006) NSURFS, MSURFS
         STOP
  570    WRITE(*,9000)
         WRITE(*,9007) NSURFV, MSURFV
         STOP
 9000    FORMAT(' *** Fatal Error in TSD/TSDHED')
 9001    FORMAT(' Error: file ''',A,''' not open')
 9002    FORMAT(' Error: label is too short')
 9003    FORMAT(' Error reading/writing file: ',A,&
     &   ' on logical unit ',I2)
 9004    FORMAT(' Error: Incompatable versions'/&
     &   ' File ',A,' has version id ',A,/&
     &   ' The required version id is ',A)
 9005    FORMAT(' Error: Too many audit variables'/&
     &   ' number in file = ',I2,', maximum number = ',I2)
 9006    FORMAT(' Error: Too many surfaces'/&
     &   ' number in file = ',I2,', maximum number = ',I2)
 9007    FORMAT(' Error: Too many surface variables'/&
     &   ' number in file = ',I2,', maximum number = ',I2)
         END
