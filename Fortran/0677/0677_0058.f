         REAL*4 A(10)/10*1.1/,B(10)/10*1.2/,C(10)/10*1.3/,G(10)/10*0./
         REAL*4 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         DO 100 J=1,5
           DO 10 I=1,10
             IF(A(I).GT.0) THEN
             D(I)=F(I)+10.0
             ENDIF
10         CONTINUE
           DO 100 I=2,9
             IF(A(I).EQ.G(I)) THEN
             G(I)=(A(I)*B(I))-2-(A(I)*1.5+C(I))
             E(I,J)=(A(I)+B(I))*2.5-A(I)*1.5+C(I)
             C(I)=A(I)*10.0+B(I)-((B(I)*2.0)-A(I)+2.0)
             ENDIF
100       CONTINUE
         WRITE(6,*) D,G,E,C
         STOP
         END
