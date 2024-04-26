      REAL A1(10),A2(10),B(10),C(10)
      INTEGER * 4 N1,N2
      DATA A1/10*0./
      DATA A2/10*0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./

      READ(5,*) N1,N2

      DO 10 I=1,N1
        A1(I)=B(I)+C(I)
   10 CONTINUE
      WRITE(6,*) ' # TEST1 # ',A1

      DO 20 I=1,N2
        A2(I)=B(I)+C(I)
   20 CONTINUE
      WRITE(6,*) ' # TEST2 # ',A2
C
      STOP
      END
