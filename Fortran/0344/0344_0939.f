      REAL*4 A(20,20),B(20,20)
      DATA A/400*1./,B/400*2./
      DO 10 I=2,18
         DO 20 J=2,I
            A(I,J) = A(I,J) + B(I,J-1)
  20     CONTINUE
         B(I+1,I) = A(I,I-1) + B(I,I)
  10  CONTINUE
      WRITE(6,*) A
      STOP
      END
