      REAL*4  A(20,20),B(20,20),C(20,20),D(20)
      REAL*4  X(20,20),Y(20,20)
      DATA   A,B,C/400*1.,400*2.,400*3./,N/1/,NN/15/
      DATA   X,Y/400*6.,400*7./
      DATA   D/20*4./
      IX=0
      DO 10 I=1,NN
       DO 1 J=1,20
         A(J,N) = B(J,I)+1.
         IX=J+N-10
  1    CONTINUE
       DO 7 K=7,10
         X(K,IX) = Y(K,IX)+1.
  7    CONTINUE
       DO 2 J=1,20
        IF(NN.GT.10) A(J,N)=1.0D0
        B(J,I) = A(J,N)+2.
   2   CONTINUE
  10  CONTINUE
      N=1
      SMAX=0.0
      DO 20 I=1,NN
       DO 3 K=10,20
         IJ= K-7
         A(K,IJ)=A(K,IJ)+1.
   3   CONTINUE
       DO 8 K=1,11
         C(K,IJ)=C(K,IJ)+D(K)
   8   CONTINUE
       DO 4 J=10,20
        SMAX=A(I,IJ)
        IF(N.GT.100) SMAX=MAX(A(I,IJ),2.0D0)
        A(J,IJ) = 2.+N
   4   CONTINUE
  20  CONTINUE
      PRINT *,'SMAX =',SMAX
      PRINT *,'A= ',A
      PRINT *,'B= ',B
      PRINT *,'C= ',C
      STOP
      END
