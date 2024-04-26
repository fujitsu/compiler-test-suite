      REAL*4 A(100)
      DATA A/100*3.2/,N/0/
C
      DO 10 I=1,100,2
         IF(I.LT.77) THEN
            N = N + 1
            A(N) = A(N) + 1
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) A
      WRITE(6,*) N
  100 FORMAT(1H ,10F7.2)
      STOP
      END
