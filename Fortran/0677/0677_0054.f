         REAL*4 A(10)/10*1.1/,B(10)/10*1.2/,C(10)/10*1.3/,G(10)/10*0./
         REAL*4 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         DO 100 J=1,5
           DO 10 I=1,10
             D(I)=F(I)+10.0+B(I)+C(I)+D(I)+E(I,J)
10         CONTINUE
100       CONTINUE
         WRITE(6,*) D,G,E,C
         STOP
         END
