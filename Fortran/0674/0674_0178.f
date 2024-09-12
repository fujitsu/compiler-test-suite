       REAL A(100),B(100),C(100),Z(100)
       LOGICAL L(100)
       DATA N1/100/
       IX=1
       DO 11 I=1,N1
         L(I)=.TRUE.
         A(I)=0.1*I
         B(I)=0.2*I
         C(I)=-0.2*I
         Z(I)=-0.1*I
         IF(IX.EQ.1) THEN
          L(I)=.FALSE.
          IX=0
         ELSE
          IX=1
         ENDIF
  11   CONTINUE
       A(80)=-20.0D0
       B(80)=20.0
       C(77)=10.0D0

       DO 1 I=2,N1-1
         A(I-1)=C(I)-9.0
   1   CONTINUE
       DO 2 I=2,N1
         IF(L(I)) B(I)=MIN(A(I),-1.0D0)
   2   CONTINUE
       DO 3 I=2,N1-3
         C(I)=-1.10D0-I
   3   CONTINUE
       DO 4 I=2,N1
         Z(I)=A(I)-1.10D0+I
   4   CONTINUE
       PRINT *,Z,A,C
       END