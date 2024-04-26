      PROGRAM MAIN
      LOGICAL*4 L4C(10),L4T1
      REAL*4    RA(10),RB(10)
      INTEGER*4 L(10)/1,2,3,4,5,6,7,8,9,10/
      DATA L4C/5*.TRUE.,5*.FALSE./
      DATA RA/5*1.0,5*2.0/,RB/3*1.0,5*2.0,2*1.0/
C
      DO 10 I=1,10
        L4T1=RA(I).GE.RB(I)
        IF (I.GE.3) THEN
          L4C(L(I))=L4T1
        ENDIF
10    CONTINUE
C
      WRITE(6,*) 'L4C=',L4C
      STOP
      END
