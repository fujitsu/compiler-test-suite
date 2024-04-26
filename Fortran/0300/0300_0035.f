      PROGRAM MAIN

      DO 20 I=1,100
        DO 20 J=1,5000
          A = SIN(REAL(I)) + COS(REAL(J))
   20 CONTINUE
C
      WRITE(6,*) A
      STOP
      END
