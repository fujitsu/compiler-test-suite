         REAL*4 A(10)/10*2.0/,B(10)/10*4.0/,C(10)/10*5.0/,G(10)/10*0./
         REAL*4 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         COMMON /BLK/ N,M,L
         INTEGER*4 N,M,L
         LOGICAL*4 LL(10,10)

         DO 100 J=1,10
           DO 10 I=1,10
             IF(M.GT.I) THEN
               LL(I,J)=A(I).GT.B(I)
               B(I)=A(I)+B(I)
             ELSE
               LL(I,J)=(A(I).LE.B(I)).OR.(D(I).LT.C(I))
               A(I)=B(I)+A(I)
             ENDIF
10         CONTINUE
           DO 100 I=2,9
             G(I)=(A(I)*B(I))
100       CONTINUE
         DO 200 J=1,5
           DO 210 I=6,10
             IF(LL(I,J)) THEN
               F(I)=A(I)*B(I)
             ELSE IF(M.GT.10) THEN
               F(I)=A(I)+B(I)
             ENDIF
210     CONTINUE
           DO 200 I=1,5
             IF(LL(I,J)) THEN
               F(I)=A(I)+B(I)+C(I)
               A(I)=B(I)+F(I)*2.0
             ELSE IF(M.GT.10) THEN
               F(I)=A(I)+B(I)+C(I)+D(I)
             ELSE IF(N.GT.100) THEN
               F(I)=1.0
               A(I)=2.0
               B(I)=3.0
             ELSE IF(F(I).GT.2.0) THEN
               F(I)=A(I)+B(I)+C(I)+D(I)
             ELSE IF(C(I).LT.1.0) THEN
               F(I)=C(I)+D(I)
             ENDIF
200       CONTINUE
         WRITE(6,*) D,G,E,C,A,B,F,LL
         STOP
         END
         BLOCK DATA
         COMMON /BLK/ N,M,L
         INTEGER*4 N,M,L
         DATA N/785/,M/2/,L/12/
         END
