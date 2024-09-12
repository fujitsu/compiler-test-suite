       REAL A(100),B(100),C(100),Z(100)
       DATA A,B,C/100*0.1D0,100*0.2D0,100*0.3D0/
       DATA N1/100/
       Z= 0

       DO 1 I=2,N1
         A(I)=SIN(C(I))
   1   CONTINUE
       DO 2 I=2,N1-1
         B(I)=-I+1.0D0
   2   CONTINUE
       DO 3 I=2,N1
         Z(I)=B(I-1)-A(I-1)+2.0
   3   CONTINUE
       PRINT *,Z,A,B
       END
