      LOGICAL*4 C(10)
      REAL*8   A(10)/3.D0,2.D0,2.11,1.01,5.55,3.,4.,5.,9.,3.01/
      REAL*8   B(10)/3.D1,2.D0,2.01,1.01,5.55,3.,4.,5.,9.,3.02/
      DATA      C/10*.TRUE./
      DO 10 I=1,10
        C(3)=A(I).EQ.B(I)
   10 CONTINUE
      WRITE(6,*) C
      STOP
      END
