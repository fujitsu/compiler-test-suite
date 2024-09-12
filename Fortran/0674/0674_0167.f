       REAL A(100),B(100),C(100),Z(100)
       DATA A,B,C/100*0.1D0,100*0.2D0,100*0.3D0/
       DATA Z/100*0.0D0/
       DATA N1/100/

       DO 1 I=1,N1,2
         A(I+1)=SIN(A(I))+B(I)
         A(I)=SIN(A(I+1)+0.11D0 )
   1   CONTINUE
       DO 2 I=1,N1,2
         A(I+1)=SIN(C(I))-A(I)
   2   CONTINUE
       DO 3 I=1,N1,2
         Z(I)=A(I+1)-1.10D0
   3   CONTINUE
       PRINT *,Z,A
       END
