       REAL*8 A(50),B(50),C(50),D(50)
       DATA A,B,C,D/50*1.,50*1.,50*1.,50*1./
       DO 150 I=1,50
150    D(I)=I-(I/2)*2
       DO 50 I=2,50
         B(I)=I
         C(I)=I
         IF( D(I) .NE. 1 ) THEN
             A(I)=A(I-1)*B(I)
           ELSE
             D(I)=C(I)-B(I)
         ENDIF
50     CONTINUE
       PRINT *,A
       PRINT *,D
       STOP
       END
