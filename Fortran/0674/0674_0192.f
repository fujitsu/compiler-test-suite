       REAL A(100),B(100),C(100),Z(100)
       LOGICAL L(100)
       DATA L/20*.TRUE.,20*.FALSE.,20*.TRUE.,20*.FALSE.,20*.TRUE./
       DATA A,B,C/100*0.1D0,100*0.2D0,100*0.3D0/
       DATA N1/100/,J/1/
       Z=0
       A(99)=-2.0

       DO 1 I=2,N1-1
         A(I+1)=SIN(A(I+1))+B(I)
         IF(L(J)) A(I)=MIN(A(I),0.11D0 )
   1   CONTINUE
       DO 2 I=2,N1-4
         A(I)=SIN(C(I))-A(I)
   2   CONTINUE
       DO 3 I=2,N1-1
         Z(I)=A(I-1)-1.10D0
   3   CONTINUE
       PRINT *,Z,A
       END