      PROGRAM MAIN
      REAL*4 A(100),B(50)
      DATA A/50*0,50*1.0/
C
      J = 1
      DO 10 I=1,100
         IF(A(I).GT.0) THEN
            B(J) = A(I)
            J = J + 1
         ENDIF
   10 CONTINUE
C
      J = 1
      DO 20 I=1,100
         IF(A(I).GT.0) THEN
            A(I) = B(J)
            J = J + 1
         ENDIF
   20 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,5F15.3)
      STOP
      END
