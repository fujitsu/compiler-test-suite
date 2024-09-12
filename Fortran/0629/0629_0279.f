       REAL A(10)/10*0/
       REAL B(10,10)/100*0/
       REAL C(10,10,10)/1000*0/
       DO 20 I=1,10
         DO 20 J=1,10
           B(I,J) = cos(real(I))
   20  CONTINUE
       DO 30 I=1,10
         DO 30 J=1,10
           DO 30 K=1,10
             C(I,J,K) = TAN(B(1,1))
   30  CONTINUE
       DO 40 I=1,10
          A(I)=I
   40  CONTINUE

       WRITE(6,*) A(1),B(1,1),C(1,1,1)
       STOP
       END
