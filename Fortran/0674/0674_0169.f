       REAL A(100),B(100),C(100),Z(100),X(100)
       DATA A,B,C/100*0.1D0,100*0.2D0,100*0.3D0/
       DATA N1/100/

       DO 1 I=1,N1
         A(I)=SIN(A(I))+0.11D0
         B(I)=COS(C(I))-0.11D0
   1   CONTINUE
       DO 2 I=1,N1
         X(I)=SIN(C(I))+A(I)
   2   CONTINUE
       DO 3 I=1,N1
         Z(I)=C(I)-B(I)
   3   CONTINUE
       DO 4 I=1,N1
         X(I)=X(I)+1.0D0
   4   CONTINUE
       PRINT *,Z,X,A,B
       END
