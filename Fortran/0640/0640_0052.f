      PROGRAM MAIN
      DIMENSION A(20),B(20),C(20)
      DATA  A,B,C/10*1.,10*5.,20*2.,20*3./

      N = 10
      DO 10 I=2,10
        A(I+N) = B(I) + C(N)
        IF ( I.GT.7 ) GO TO 10
         B(I) = A(I+N-1) *2.
         N = N -1
         C(N) = A(I+N) + B(I-1)
 10   CONTINUE
      WRITE(6,*) ' A = ',A
      WRITE(6,*) ' B = ',B
      WRITE(6,*) ' C = ',C

      N = 15
      DO 20 I=2,10
        A(I+N) = B(I) + C(N)
        IF ( I.GT.6 ) GO TO 20
         B(I) = A(I+N-1) *2.
         N = N -2
         C(N) = A(I+N) + B(I-1)
 20   CONTINUE
      WRITE(6,*) ' A = ',A
      WRITE(6,*) ' B = ',B
      WRITE(6,*) ' C = ',C

      STOP
      END
