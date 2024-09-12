         REAL*8 A(10)/10*2.0/,B(10)/10*2.0/,C(10)/10*2.0/,G(10)/10*1./
         REAL*8 D(10)/10*0./,E(10,10)/100*1./,F(10)/10*2.1/
         DO 100 J=1,5
           DO 10 I=1,10
             D(I)=F(I)+ 2.0+B(I)+D(I)+C(I)+F(I)+D(I)+A(I)+2.0
             A(I)=F(I)+(-4.0+B(I))+D(I)+(C(I)-F(I)-D(I))-A(I)-2.0
10         CONTINUE
100       CONTINUE
         WRITE(6,*) D,G,E,C,A
         STOP
         END
