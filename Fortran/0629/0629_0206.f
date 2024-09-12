         REAL*8 A(10)/10*2.0/,G(10)/10*0./
         REAL*8 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         COMMON /BLK/ N

         DO 100 J=1,5

           DO 10 I=1,10
             D(I)=F(I)
 10         CONTINUE

           DO 20 I=1,N
             E(I,J)=F(I)
20         CONTINUE

           DO 100 I=3,9
             G(I)=A(I)
             E(I,J)=A(I)+4.0
100       CONTINUE

         WRITE(6,*) D
         WRITE(6,*) G
         WRITE(6,*) E
         STOP
         END

         BLOCK DATA
         COMMON /BLK/ N
         DATA N/8/
         END
