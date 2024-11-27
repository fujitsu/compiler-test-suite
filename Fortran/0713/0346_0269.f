       REAL*8 A(50),B(50),C(50),D(50)
       DATA A,B,C,D/50*1.,50*1.,50*1.,50*1./
       DO 50 I=1,50 ,23
         B(I)=I
         C(I)=I
         J=I-(I/2)*2
         IF( J .NE. 1 ) THEN
             A(I)=C(I)*B(I)
           ELSE
             D(I)=C(I)-B(I)
         ENDIF
50     CONTINUE
       PRINT *,A
       PRINT *,D
       STOP
       END
