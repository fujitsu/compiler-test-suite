         REAL*8 A(10)/10*2.0/,B(10)/10*8.0/,C(10)/10*5.0/,G(10)/10*0./
         REAL*8 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         COMMON /BLK/ N,M,L
         DO 100 J=1,5
           DO 10 I=1,10
             IF(N.GT.5) THEN
             D(I)=F(I)+10.0
             ENDIF
10         CONTINUE
           DO 100 I=2,9
             IF (M.LT.8) THEN
             G(I)=(A(I)*B(I))-2-(A(I)*4.0+C(I))
             IF(L.LT.10) THEN
             E(I,J)=(A(I)+B(I))*2.5-A(I)*4.0+C(I)
             ENDIF
             ELSE IF(M.EQ.10) THEN
             E(I,J)=(A(I)+B(I))*2.5-A(I)*5.0+C(I)
             ENDIF
             IF(I.GT.5) THEN
             C(I)=A(I)*10.0+B(I)-((B(I)*2.0)-A(I)+2.0)
             ENDIF
             C(I)=B(I)+A(I)
100       CONTINUE
         WRITE(6,*) D,G,E,A,B,E
         STOP
         END
         BLOCK DATA
         COMMON /BLK/ N,M,L
         DATA N/7/,M/4/,L/10/
         END
