       REAL*8 A(3),B(3),C(3),D(3)
       DATA A,B,C,D/3*5.,3*4.,3*3.,3*2./
       DO 150 I=1,3,2
         B(I)=I
         C(I)=I
 150                D(I)=0
       DO 50 I=2,3
         IF( D(I) .NE. 0. ) THEN
             A(I)=A(I-1)
           ELSE
             A(I-1)=C(I)-B(I)
         ENDIF
         A(I)=A(I)+A(I-1)
 50                 CONTINUE
       PRINT *,A
       END
