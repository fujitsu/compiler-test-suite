      PROGRAM MAIN
      REAL*4 A(10),B(10,10)
C
      DO 10 I=1,10
         DO 20 J=1,10
            B(I,J) = J
            B(I,J) = B(I,J) * 0.3
   20    CONTINUE
         A(I) = B(I,2)
         A(I) = B(I,3) - B(I,1)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10F7.2)
      STOP
      END
