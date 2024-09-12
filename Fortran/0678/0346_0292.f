       REAL*8 A(50),B(50),C(50),D(50),E(50)
       DATA A,B,C,D/50*4.0D0,50*8.0D0,50*2.D0,50*1.D0/
       DO 50 I=1,50
         E(I)=0.0D0
         IF( D(I) .NE. 0. .AND. I .GT. 25  ) THEN
             A(I)=A(I)*I
             A(I)=A(I)+A(I)+A(I)
             B(I)=B(I)*2
             B(I)=(B(I)*B(I))*B(I)
           ELSE
             C(I)=I-A(I)
             C(I)=C(I)-C(I)-C(I)
             D(I)=I/D(I)
             D(I)=(D(I)/D(I))/D(I)
         ENDIF
         E(I)=A(I)*A(I)*B(I)*B(I)*C(I)*D(I)
50     CONTINUE
       WRITE(6,100) (E(I),I=1,50)
100    FORMAT(1H ,3(D23.16) )
       STOP
       END
