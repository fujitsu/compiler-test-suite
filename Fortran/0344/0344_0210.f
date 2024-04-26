      REAL*4 A(100),B(100)
      NAMELIST /NAM/N
      READ(5,*) M
      DO 10 I=1,M
         A(I) = I
         B(I) = A(I)
         A(I) = A(I) + B(I)
         B(I) = B(I) + A(I)
         N    = B(I) + A(I)
         WRITE(6,NAM)
   10 CONTINUE
      WRITE(6,*) A,B
      STOP
      END
