      REAL*4  A(20,20),B(20,20),C(20,20),D(20)
      REAL*4  X(20,20),Y(20,20)
      DATA   A,B,C/400*1.,400*2.,400*3./,N/1/,NN/15/
      DATA   X,Y/400*6.,400*7./,M10/10/
      DATA   D/20*4./
      DO 10 I=1,NN
      IX=-3
       DO 1 J=1,20
         A(J,N) = B(J,I)+1.
         IX=IX+1
  1    CONTINUE
       DO 2 K=7,10
         X(K,IX) = Y(K,IX)+1.
  2    CONTINUE
       DO 3 J=1,20
        IF(NN.GT.10) A(J,N)=1.0D0
        B(J,I) = A(J,N)+2.
   3   CONTINUE
  10  CONTINUE
      N=1
      SMAX=0.0
      DO 20 I=1,NN
       DO 4 K=10,20
         A(K,I)=A(K,I)+2.
   4   CONTINUE
       DO 5 K=1,10
         C(K,M10)=C(K,M10)+D(K)
   5   CONTINUE
       DO 6 J=10,20
        M10=J
        SMAX=A(J,I)
        IF(N.GT.100) SMAX=MAX(A(J,M10),2.0D0)
        A(J,I) = 2.+J
   6   CONTINUE
  20  CONTINUE
      PRINT *,'SMAX =',SMAX
      PRINT *,'A= ',A
      PRINT *,'B= ',B
      PRINT *,'C= ',C
      STOP
      END
