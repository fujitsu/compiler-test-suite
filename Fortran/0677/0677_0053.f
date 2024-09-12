         REAL*8 A(10)/10*2.0/,B(10)/10*4.0/,C(10)/10*8.0/,G(10)/10*0./
         REAL*8 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         DO 100 J=1,5
           DO 10 I=1,10
             D(I)=F(I)+10.0
             F(I)=D(I)+B(I)+C(I)
             G(I)=D(I)+F(I)
             E(I,J)=D(I)+F(I)+G(I)
10         CONTINUE
100       CONTINUE
         WRITE(6,*) D,G,E,C,F
         STOP
         END
