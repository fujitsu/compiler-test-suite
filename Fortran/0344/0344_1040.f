      PROGRAM MAIN
      INTEGER*8 A(10),B(10),C(10)
      INTEGER*4 D(10),E(10),F(10)
      DATA B/10*11111/,C/10*555555/,F/1,3,5,7,9,2,4,6,8,10/
      DATA D/1,2,3,4,5,6,7,8,9,10/,E/10,9,8,7,6,5,4,3,2,1/
C
      DO 10 I=1,10
         A(D(I)) = IEOR(B(E(I)),C(F(I)))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
