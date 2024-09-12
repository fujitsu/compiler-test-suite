       REAL A(100),B(100),C(100),Z(100)
       DATA A,B,C/100*0.1D0,100*0.2D0,100*0.3D0/
       DATA N1/100/

       DO 1 I=1,N1
         A(I)=SIN(A(I))+0.11D0
   1   CONTINUE
       DO 2 I=1,N1
         B(I)=SIN(C(I))+A(I)
   2   CONTINUE
       DO 3 I=1,N1
         Z(I)=B(I)-0.11
   3   CONTINUE
       PRINT *,A,B,Z
       END
