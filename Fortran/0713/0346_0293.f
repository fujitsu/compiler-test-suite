       REAL*8 A(50),B(50),C(50),D(50),E(50)
       DATA A,B,C,D/50*2.,50*3.,50*4.,50*5./
       E=0
       DO 50 I=2,50,2
         IF( I .GT. 25  ) THEN
             A(I)=A(I-1)*A(I-1)+I
           ELSE
             A(I)=I
             A(I-1)=A(I)*A(I)*I
         ENDIF
         E(I)=A(I)*A(I-1)+B(I)*B(I-1)+C(I)*C(I-1)
50     CONTINUE
       PRINT *,E
       STOP
       END
