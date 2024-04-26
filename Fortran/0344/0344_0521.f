      PROGRAM MAIN
      REAL*4 C(10)
      CHARACTER*1 A(10)
      CHARACTER*4 B(10)
      DATA A/'A','B','C','D','E','F','G','H','I','K'/
C
      DO 10 I=1,10
         B(I) = A(I)
         C(I) = I
         C(I) = C(I) + 1
         A(I) = 'A'
   10 CONTINUE
C
      WRITE(6,100) B,A
  100 FORMAT(1H ,10A7)
      STOP
      END
