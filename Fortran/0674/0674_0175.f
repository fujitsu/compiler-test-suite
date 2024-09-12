       REAL A(100),B(100),C(100),Z(100)
       DATA A,B,C/100*0.1D0,100*0.2D0,100*0.3D0/
       DATA Z/100*3.0D0/
       DATA N1/100/

       DO 1 I=2,N1-1
         A(I+1)=SIN(C(I))+Z(I-1)
   1   CONTINUE
       DO 2 I=2,N1-1
         B(I+1)=SIN(C(I))-A(I)
   2   CONTINUE
       DO 3 I=2,N1
         Z(I)=A(I)-1.10D0+B(I)
   3   CONTINUE
       PRINT *,Z,A,B
       END
