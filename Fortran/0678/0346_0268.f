       REAL*8 A(50),B(50),C(50),D(50)
       DATA A,B,C,D/50*1.D0,50*1.D0,50*2.D1,50*1.D0/
       DO 50 I=1,50
         B(I)=I
         C(I)=I+2
         J=I-(I/2)*2
         IF( J .NE. 1 ) THEN
             A(I)=(C(I)/B(I))*I
           ELSE
             D(I)=C(I)-B(I)
         ENDIF
50     CONTINUE
       WRITE(6,111) A,D
111    FORMAT(1H ,2(D23.15,3X) )
       STOP
       END
