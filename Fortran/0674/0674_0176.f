       REAL A(100),B(100),C(100),Z(100)
       LOGICAL L(100)
       DATA L/10*.TRUE.,10*.FALSE.,10*.TRUE.,10*.FALSE.,10*.TRUE.,
     E        10*.FALSE.,10*.TRUE.,10*.FALSE.,10*.TRUE.,10*.FALSE./
       DATA A,B,C/100*0.1D0,100*0.2D0,100*0.3D0/
       DATA N1/88/
       J=1
       Z=0
       DO 1 I=2,N1-4
         A(I)=SIN(B(I+2))
   1   CONTINUE
       DO 2 I=2,N1
         B(I+1)=MAX(C(I),4.0)
   2   CONTINUE
       DO 3 I=2,N1
         IF(L(J)) Z(I)=A(I-1)-1.10D0+B(I)
   3   CONTINUE
       PRINT *,Z,A,B
       END
