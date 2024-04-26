          INTEGER*4 A(80),C(80,80),B(80),D(10)
          DATA A/80*9/ ,  B/80*800/  , C/6400*8/
          COMMON /BLK/ NN
          NN = 80
          DO 111 J=1,80
            DO 11 I=1,NN
              B(I) = A(I) + C(I,J)
 11         CONTINUE
            DO 111 I=1,10
              D(I) = B(I) + C(I,J)
 111      CONTINUE
          PRINT *,A,B,C
          END
