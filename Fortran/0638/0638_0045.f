       INTEGER * 4 A(20,20)/400*1/ ,N/2/
       REAL    * 4 B(20,20)/400*2.0/
       REAL    * 8 C(20,20)/400*1.0/
       COMPLEX * 8 D(20,20)/400*(2.0,2.0)/
       COMPLEX *16 E(20,20)/400*(3.0,3.0)/
       COMMON /BLK1/ BK
       INTEGER*4 BK,NN/20/
       BK=N+1
       DO 9000 IDX=1,2

       DO 10 J=1,20,2
       DO 10 I=1,20,2
         A(I,J)=A(I,J)**N
10     CONTINUE

       DO 30 I=1,NN,2
         B(I,I)=B(I,I)**N+(B(I,I)/I)
30     CONTINUE

         DO 40 I=1,20,3
           C(I,1)=C(I,20)**BK+C(I,10)**C(1,2)
40       CONTINUE

         IF(IDX.EQ.2) GOTO 9000
         DO 50 J=1,5
           DO 50 I=1,N+10
             D(I,J)=(D(I,J)**N)**BK
50      CONTINUE

        DO  60 J=6,10
        DO  60 I=1,N+14,2
           E(I,J)=E(I,J)**N**BK
 60     CONTINUE
        BK=BK+1
9000    CONTINUE
        WRITE(6,*) N,BK,A,B,C,D,E
       STOP
       END
