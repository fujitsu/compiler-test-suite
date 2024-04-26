       REAL*8 A(50),B(50),C(50),D(50)
       DATA A,B,C,D/50*5.,50*4.,50*3.,50*2./
       DO 150 I=1,50,2
         B(I)=I
         C(I)=I
150    D(I)=0
       DO 50 I=2,50
         IF( D(I) .NE. 0. ) THEN
             A(I)=A(I-1)
           ELSE
             A(I-1)=C(I)-B(I)
         ENDIF
         A(I)=A(I)+A(I-1)
50     CONTINUE
       PRINT *,A
       STOP
       END
