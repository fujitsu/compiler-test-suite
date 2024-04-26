      REAL*4  A(20),B(20),C(20)
      REAL*4  D(20),E(20),F(20)
      INTEGER*2 H(20)
      LOGICAL*1 L(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  D/20*3./,E/20*4./,F/20*5./
      DATA  H/20*1/,L/10*.TRUE.,10*.FALSE./
*
      DO 10 I=2,18
        A(I) = A(I) + B(I+1)
        H(I) = H(I) + 1
        B(I) = A(I+1) - C(I)*2.
        IF (L(I)) THEN
          C(I) = D(I) * SQRT(E(I))
        ENDIF
        F(I) = E(I)*B(I)-A(I)-C(I)
        L(I) = SQRT(ABS(B(I))) .GT. E(I)/D(I)
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,601) H
      WRITE(6,600) F
      WRITE(6,*)   L
 600  FORMAT(1H ,5(4(E15.3,1X),/,1X))
 601  FORMAT(1H ,5(4(I15,1X),/,1X))
      STOP
      END
