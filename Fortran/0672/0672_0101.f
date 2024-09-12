      IMPLICIT COMPLEX*8(C)
      DIMENSION C2(10),C3(10),C4(10),C5(10),C6(10),C7(10)
      J=0
      DO 10 I=1,10
      J=J+5
      RI=I
      RJ=J
      C2(I)=CMPLX(RI,RJ)
      C3(I)=CMPLX(RJ,RI)
   10 CONTINUE
      C1=CMPLX(3.,8.)
      FF=10.

      DO 30 I=1,10
      DO 20 J=1,10
      C4(J)=C1*C2(I)
      C5(J)=FF*C2(I)
   20 CONTINUE
   30 CONTINUE

      K=1
      L=3
      DO 40 I=1,10
      C6(I)=C2(K)**L
      C7(I)=FF*C2(K)
   40 CONTINUE

      WRITE(6,100) C2
      WRITE(6,100) C3
      WRITE(6,100) C4
      WRITE(6,100) C5
      WRITE(6,100) C6
      WRITE(6,100) C7
      STOP
  100 FORMAT(1X,6E20.7)
      END
