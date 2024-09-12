       REAL A(100,2),B(100,2),C(100,2),Z(100,2)
       DATA A,B,C/200*0.1D0,200*0.2D0,200*0.3D0/
       DATA Z/200*0.0D0/
       DATA N1/100/,M/2/

       DO 10 J=1,M
       DO 1 I=1,N1
         A(I,M)=SIN(A(I,M))+0.11D0
   1   CONTINUE
       DO 2 I=1,N1
         B(I,M)=SIN(C(I,M))+A(I,M)
   2   CONTINUE
       DO 3 I=1,N1
         Z(I,M)=B(I,M)-0.11
   3   CONTINUE
  10   CONTINUE
       PRINT *,Z,A,B
       END
