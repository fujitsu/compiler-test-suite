      PROGRAM MAIN
      REAL * 4 A(20),B(20)
      INTEGER * 4 N,M,NN,N1,N2
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.
     +    ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.
     +    ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA M/10/,N2/-10/
      N = 1
      NN = 1
      DO 10 I=N,M,NN
        A(I) = A(I+N) + A(I+M) + A(I+NN)
        B(I) = B(I+I) + B(I+M)
 10   CONTINUE
      M = -1
      N1 = -1
      DO 20 J=N1,N2,M
        A(J+11) = A(J+N1+12)
        B(J+11) = B(J+N2+21)
 20   CONTINUE
      WRITE(6,*) 'A=' ,A ,'B='  , B
      STOP
      END
