       REAL*8 A(50),B(50),C(50),D(50),E(50)/50*0/
       DATA   A,B,C,D/50*2.,50*3.,50*4.,50*5./
       DO 50 I=2,50
         IF( D(I) .NE. 0. .AND. I .GT. 25  ) THEN
             C(I)=C(I)+C(I)
             B(I)=C(I-1)+D(I-1)
             A(I)=C(I-1)+B(I-1)+D(I-1)
           ELSE
         ENDIF
         E(I)=A(I-1)*A(I-1)*B(I)*C(I)*D(I)
50     CONTINUE
       PRINT *,E
       STOP
       END
