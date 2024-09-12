      REAL    *8 A(10)/10*0.5/,B(10)
      N=10
      DO 10 I=1,N
       A(I)=A(I)+1.
       B(I)=A(I)
 10   CONTINUE

      DO 20 I=1,10
        B(I)=((B(I)-1.)+10.)/10.+(A(I)+2.)/
     *                            (A(I)*15.-(A(I)+1.))*(1.+A(I))
 20   CONTINUE

      WRITE(6,*) A,B
      STOP
      END
