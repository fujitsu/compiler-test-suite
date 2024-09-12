         REAL*8 A(10)/10*2.0/,B(10)/10*4.0/,C(10)/10*8.0/,G(10)/10*0./
         REAL*8 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         COMMON /BLK/ N
         DO 100 J=1,5
           DO 10 I=1,10
             D(I)=F(I)+10.0
10         CONTINUE
           DO 20 I=1,N
             E(I,J)=F(I)+10.0
20         CONTINUE
           DO 100 I=3,9
             G(I)=(A(I)*B(I))-2-(A(I)*4.0+C(I))
             E(I,J)=(A(I)+B(I))*2.5-A(I)*4.0+C(I)
             C(I)=A(I)*10.0+B(I)-((B(I)*2.0)-A(I)+2.0)
100       CONTINUE
         WRITE(6,*) D,G,E,C
         STOP
         END
         BLOCK DATA
         COMMON /BLK/ N
         DATA N/8/
         END
