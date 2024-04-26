      REAL A(10),B(10),C(10),D(10)
      DATA B,C/10*1.,10*2./
      DATA D/10*1./
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA N,M,MM/1,10,1/

      DO 10 I =1,10
        A(I)=A(I)+B(I)
10    CONTINUE

      DO 20 J=N,10
        B(J)=B(J)+A(J)
20    CONTINUE

      DO 30 K=1,M,MM
        C(K)=A(K)+B(K)
30    CONTINUE

      DO 40 L=N,10,1
        IF (C(L).GT.0) THEN
          D(L)=A(L)+B(L)
        ELSE
          D(L)=A(L)-B(L)
        ENDIF
40    CONTINUE

      WRITE(6,1) A,B,C,D
 1    FORMAT(5F10.5)
      STOP
      END
