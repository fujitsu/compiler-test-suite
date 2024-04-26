      PROGRAM MAIN
      REAL*4  A(100),B(100),C(100,100),D(100,100)
      DATA C/10000*0.3/,D/10000*0.1/
      DATA N/100/
C
      DO 10 I=1,N
         A(I) = I
         B(I) = A(I) + I
         DO 10 J=3,N
            C(I,J) = A(I)
            D(I,J) = B(I)
            C(I,J) = C(I,J-2) + 1
            D(I,J) = D(I,J) + I
            D(I,J) = D(I,J) / J
   10 CONTINUE
C
      
      WRITE(6,*) '## C ##'
      WRITE(6,100) ((C(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*) '## D ##'
      WRITE(6,100) ((D(I,J),I=1,100,10),J=1,100,10)
  100 FORMAT(5F15.6)
      STOP
      END
