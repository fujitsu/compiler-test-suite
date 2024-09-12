         REAL*4 A(10)/10*1.1/,B(10)/10*1.2/,C(10)/10*1.3/,G(10)/10*0./
         REAL*4 D(10)/10*0./,E(100,10)/1000*0./,F(10)/10*2.0/
         REAL*4 X(250)/250*0.6/,Y(250)/250*9.0/
         DO 100 J=1,5
           DO 10 I=1,10
             D(I)=F(I)+10.0
10         CONTINUE
           DO 20  I=1,50
             E(I,J)=Y(I)*0.5
20          CONTINUE
           DO 30  I=1,80
             E(I,J)=Y(I)-0.5
30          CONTINUE
           DO 40  I=1,150
             X(I)=Y(I)*6.0
40         CONTINUE
           DO 50  I=1,250
             X(I)=Y(I)+1.6
50        CONTINUE
           DO 100 I=1,10
             B(I)=A(I)+1.6
100       CONTINUE
         WRITE(6,*) D,G,E,C,A,B,X,Y
         STOP
         END
