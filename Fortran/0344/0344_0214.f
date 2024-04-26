      PROGRAM MAIN
      INTEGER    S/-1/,J/2/
      COMPLEX*16 CDA(2,10)/20*(2.00,1.00)/
C
      DO 1 I=1,9
    1   N = I + 1
C
      DO 10 I=2,N
         CDA(J,I) = CDA(J,I+S) ** CDA(J,I)
   10 CONTINUE
      WRITE(6,100) CDA
  100 FORMAT(2('(',E15.5,',',E15.5,')'))
      STOP
      END
