      PROGRAM MAIN
      PARAMETER(N=2,M=4)
      REAL*4 A(10)
      DATA A/10*2.3/
C
      DO 10 I=1,N
         A(I) = I ** 2 / 3
         A(I) = A(I) * I
   10 CONTINUE
C
      DO 20 I=1,M
         A(I) = I ** 2 / 3
         A(I) = A(I) * I
         IF(MOD(I,2).EQ.0) THEN
            A(I) = A(I) / 3.3
         ENDIF
   20 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10F7.1)
      STOP
      END
