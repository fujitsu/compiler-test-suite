       REAL*8 A(50),B(50),C(50),D(50),E(50)
       DATA A,B,C,D/50*2.,50*3.,50*4.,50*5./
       DO 50 I=1,50
         IF( D(I) .NE. 0. .AND. I .GT. 25  ) THEN
             A(I)=C(I)+B(I)+D(I)
             B(I)=C(I)+D(I)
             C(I)=C(I)+I
           ELSE
             A(I)=(C(I)+B(I))+D(I)+C(I)+D(I)
             B(I)=(C(I)-B(I))+D(I)+C(I)+D(I)
             A(I)=(C(I)*B(I))+D(I)+C(I)+D(I)
             A(I)=(C(I)/B(I))+D(I)+C(I)+D(I)
         ENDIF
         E(I)=A(I)*A(I)*B(I)*C(I)*D(I)
50     CONTINUE
       WRITE(6,999) E
999    FORMAT(1H ,2(D23.15,3X))
       STOP
       END
