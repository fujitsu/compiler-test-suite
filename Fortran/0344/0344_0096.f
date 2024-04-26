      INTEGER*2 A(10)/10*0/
      INTEGER*4 B(10)/10*1/
      REAL*8    C(10)/10*2/
C
      DO 10 I=1,10
        A(I) = A(I) + I
        B(A(I)) = B(A(I)) + A(I) -1
        C(B(I)) = C(B(I)) + DFLOAT(B(I))
   10 CONTINUE
      write(6,*) A
      write(6,*) B
      write(6,*) C
C
      STOP
      END
