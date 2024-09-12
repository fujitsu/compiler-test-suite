         REAL*4 A(10)/10*2.0/,B(10)/10*4.0/,C(10)/10*8.0/,G(10)/10*0./
         REAL*4 D(10)/10*0./,E(10,10)/100*0./,F(10)/10*2.0/
         REAL*4 X(1024)/1024*8.0/,Y(1024)
         COMMON /BLK/ N
         INTEGER*4 N,I,J
         DO 100 J=1,5
           DO 10 I=1,10
             D(I)=F(I)
10         CONTINUE
           DO 100 I=2,9
             G(I)=(A(I)*B(I))
100       CONTINUE
         DO 200 J=1,5
           DO 200 I=1,5
             F(I)=(A(I)*B(I))
200       CONTINUE
         DO 300 J=1,5
           DO 30 I=1,10
             C(I)=F(I)
30         CONTINUE
           DO 31 I=1,10
             B(I)=F(I)
31         CONTINUE
           DO 300 I=2,9
             A(I)=(A(I)*B(I))
300       CONTINUE
         DO 400 J=1,5
           DO 40 I=1,N
             Y(I)=X(I)*2.6
40         CONTINUE
400       CONTINUE
         DO 500 J=1,5
           DO 50 I=N,N+100
             Y(I)=X(I)*2.6
50         CONTINUE
          DO 500 I=N+102,N+105
             Y(I)=X(I)*1.6
500       CONTINUE
           DO 600 J=1,10
           DO 61 I=1,N-30
             X(I)=Y(I)*3.0
61         CONTINUE
          DO 600 I=5,10
             F(I)=B(I)*1.6
600       CONTINUE
           DO 70 J=1,10
           DO 70 I=1,1024
             Y(I)=X(I)*3.0
70         CONTINUE
         WRITE(6,*) D,G,E,C,A,B,X,Y,F
         STOP
         END
         BLOCK DATA
         COMMON /BLK/ N
         DATA N/785/
         END
