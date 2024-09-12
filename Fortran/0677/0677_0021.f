      INTEGER*4 A(10)/10*10/
      REAL*4 B(10)
      REAL*8 C(10)

      J=0
      N=10
      DO 10 I=1,N
        J=J+1
        B(I) = A(I) + 1.0
        C(I) = A(I) + 1.0
10    CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END
