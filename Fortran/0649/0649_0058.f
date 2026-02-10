      PROGRAM MAIN
      INTEGER*4            BIR(10,10),C(3,3,3,3)
      INTEGER*4            A(3)
      INTEGER*4            DATA(10)  ,DATB(10)
      INTEGER*4            DATC(10)  ,DATD(10)
      INTEGER*4            PATA(10)  ,PATB(10)
      INTEGER*4            PATC(10)  ,PATD(10)
      INTEGER*4            ATA(10,10),ATB(10,10)
      INTEGER*4            DAN1,DAN2,DAN3,DAN4,DAN5,DAN6,DAN7,DAN8,DAN9
      INTEGER*4            PAN1,PAN2,PAN3,PAN4,PAN5,PAN6,PAN7,PAN8,PAN9
      DIMENSION            DAN1(5),DAN2(5),DAN3(5),DAN4(5),
     1                     DAN5(5),DAN6(5),DAN7(5),DAN8(5),DAN9(5)
      DIMENSION            PAN1(5),PAN2(5),PAN3(5),PAN4(5),
     1                     PAN5(5),PAN6(5),PAN7(5),PAN8(5),PAN9(5)
      DATA      ATA,ATB      /100*1,100*2/
      DATA      DAN1,DAN2,DAN3,DAN4,DAN5,DAN6,DAN7,DAN8,DAN9
     1         / 5*1, 5*2, 5*3, 5*4, 5*5, 5*6, 5*7, 5*8, 5*9/
      DATA      BIR          /100*1/
      DATA      C          /81*1/
      DATA      A          /0,1,0/
      DO 10 NN=1,10
            DATA(NN)=NN+1
            DATB(NN)=NN
            DATC(NN)=1
            DATD(NN)=NN-1
  10  CONTINUE
                       INT8=1
                       I=1
                       REWIND 3
                       WRITE(3,*) (DATA(I),I=1,10,I-I+1)
                       REWIND 3
                       READ (3,*) (PATA(I),I=1,10,I-I+1)
                       DO 101 I=1,10
 101                   IF(PATA(I).NE.I+1) PRINT *,'FAIL'
                       REWIND 3
                       WRITE(3,*) (DATA(I),I=1,10+I-I)
                       REWIND 3
                       READ (3,*) (PATA(I),I=1,10+I-I)
                       DO 102 I=1,10
 102                   IF(PATA(I).NE.I+1) PRINT *,'FAIL'
                       I4=1
                       REWIND 3
                       WRITE(3,*) (DATA(I4),I4=I4,10)
                       REWIND 3
                       READ (3,*) (DATA(I4),I4=I4,10)
                       DO 103 I=1,10
 103                   IF(PATA(I).NE.I+1) PRINT *,'FAIL'
                       REWIND 3
                       WRITE(3,*) ((DATB(I),I=1,2),DATB(J),J=1,5)
                       REWIND 3
                       READ (3,*) ((PATB(I),I=1,2),PATB(J),J=1,5)
                       DO 105 J=1,5
                       DO 106 I=1,2
 106                   IF(PATB(I).NE.I) PRINT *,'FAIL'
 105                   IF(PATB(J).NE.J) PRINT *,'FAIL'
                       REWIND 3
                       WRITE(3,*) (DATB(I+MAX(I,1)-MAX(I,1)),I=1,2)
                       REWIND 3
                       READ (3,*) (PATB(I+MAX(I,1)-MAX(I,1)),I=1,2)
                       DO 104 I=1,2
 104                   IF(PATB(I+MAX(I,1)-MAX(I,1)).NE.I) PRINT *,'FAIL'
                       REWIND 2
                       WRITE(2,*) (DATC((I)),I=1,10)
                       REWIND 2
                       READ (2,*) (PATC((I)),I=1,10)
                       DO 107 I=1,10
 107                   IF(PATC(I).NE.1) PRINT *,'FAIL'
                       REWIND 2
                       WRITE(2,*) (DATC(-(((-I)))),I=1,10)
                       REWIND 2
                       READ (2,*) (PATC(-(((-I)))),I=1,10)
                       DO 108 I=1,10
 108                   IF(PATC(I).NE.1) PRINT *,'FAIL'
                       REWIND 2
                       WRITE(2,*) (DATC(1+(I)),I=0,9)
                       REWIND 2
                       READ (2,*) (PATC(1+(I)),I=0,9)
                       DO 109 I=1,10
 109                   IF(PATC(I).NE.1) PRINT *,'FAIL'
                       REWIND 2
                       WRITE(2,*) (DATD(I**2-I**2+1),I=1,10)
                       REWIND 2
                       READ (2,*) (PATD(I**2-I**2+1),I=1,10)
                       DO 110 I=1,10
 110                   IF(PATD(I**2-I**2+1).NE.0) PRINT *,'FAIL'
                       REWIND 2
                       WRITE(2,*) (DATD(2/I-2/I+1),I=1,10)
                       REWIND 2
                       READ (2,*) (PATD(2/I-2/I+1),I=1,10)
                       DO 111 I=1,10
 111                   IF(PATD(2/I-2/I+1).NE.0) PRINT *,'FAIL'
      IDATA = 1
      REWIND 1
      WRITE(1,*)  (DAN1(I),DAN2(I),DAN3(I),DAN4(I),DAN5(I),DAN6(I),
     1             DAN7(I),DAN8(I),DAN9(I),I=1,IDATA)
      REWIND 1
      READ (1,*)  (PAN1(I),PAN2(I),PAN3(I),PAN4(I),PAN5(I),PAN6(I),
     1             PAN7(I),PAN8(I),PAN9(I),I=1,IDATA)
      IF(PAN1(1).NE.1) PRINT *,'FAIL'
      IF(PAN2(1).NE.2) PRINT *,'FAIL'
      IF(PAN3(1).NE.3) PRINT *,'FAIL'
      IF(PAN4(1).NE.4) PRINT *,'FAIL'
      IF(PAN5(1).NE.5) PRINT *,'FAIL'
      IF(PAN6(1).NE.6) PRINT *,'FAIL'
      IF(PAN7(1).NE.7) PRINT *,'FAIL'
      IF(PAN8(1).NE.8) PRINT *,'FAIL'
      IF(PAN9(1).NE.9) PRINT *,'FAIL'
      REWIND 1
      WRITE(1,*) ((((((((DAN1(I),I1=1,1),I2=1,1),I3=1,1),I4=1,1)
     1            ,I5=1,1),I6=1,1),I7=1,1),I8=1,1)
      REWIND 1
      READ (1,*) ((((((((PAN1(I),I1=1,1),I2=1,1),I3=1,1),I4=1,1)
     1            ,I5=1,1),I6=1,1),I7=1,1),I8=1,1)
      IF(PAN1(1).NE.1) PRINT *,'FAIL'
      PRINT *,'PASS'
      STOP
      END
