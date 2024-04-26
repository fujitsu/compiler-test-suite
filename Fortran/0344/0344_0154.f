      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA N,M/1,10/

      DO 10 I=1,10
       A(1)= B(2)+C(3)
10    CONTINUE

      DO 20 I=N,10
        B(I)=B(I)+C(I)*2.
20    CONTINUE

      DO 30 I=1,M
        C(I)=B(I)+C(I)*1.
30    CONTINUE

      WRITE(6,1) A,B,C
 1    FORMAT(5F10.5)
      STOP
      END
