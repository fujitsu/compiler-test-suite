      INTEGER*4 I10(10), I10S, I11(10), I11S, I12S, I12(10)
      DATA I12/1,2,3,-4,5,-6,4,3,2,1/ 
      DATA I11/10*0/ 
      DATA I10/1,2,1,4,0,1,2,3*1/ 
      REAL*4 R10S, R10(10), R11S, R11(10)
      DATA R11/12,23,24,35,46,57,2*78,99,100/ 
      DATA R10/1,2,3,4,5,4,3,-5,2,10/ 
      REAL*8 D10S, D10(10), D11(10)
      DATA D11/10*0/ 
      DATA D10/-1,-2,-3,-4,-5,1,2,3,4,5/ 
      COMPLEX*8 C10S, C10(10)
      INTEGER N10
      PARAMETER (N10 = 10)
      REAL RR1
      PARAMETER (RR1 = 1. / 2.)
      INTEGER II2, II1
      REAL RR3, RR2
      I12S = 1
      I11S = 0
      I10S = 0
      R11S = 0.
      R10S = 0.
      D10S = 0D0
      C10S = (0., 0.)
      DATA C10/3*(1,1),2*(1,0),2*(0,1),3*(0,0)/ 

      DO I=1,10
       GO TO (101, 102, 100), I10(I)

  101  II1 = I11(I)
       RR2 = R10(I)
       II2 = I10(I) * 8
       RR3 = R11(I) * 4. + R11(I) * RR1
       DO J=1,10
        I10S = I10S + II1
        IF (D10S .GT. D10(J)) THEN
         D10S = D10(J)
         I11S = J
        ELSE
         C10S = C10S - C10(J)
        END IF
        R10S = AMAX1 (R10S, RR2)

        DO K=1,6,5
         I12S = I12S + I12(K)
         R11S = I12S + R11S
         D11(K) = R11S
         I12S = I12S + I12(K+1)
         R11S = I12S + R11S
         D11(K+1) = R11S
         I12S = I12S + I12(K+2)
         R11S = I12S + R11S
         D11(K+2) = R11S
         I12S = I12S + I12(K+3)
         R11S = I12S + R11S
         D11(K+3) = R11S
         I12S = I12S + I12(K+4)
         R11S = I12S + R11S
         D11(K+4) = R11S
        END DO

        II1 = II2
        D10(I) = II1 - I
        RR2 = RR3
       END DO
       I11(I) = II1
       R10(I) = RR2

  102  WRITE (6, *) ' COUNT  I = ', I
  100  CONTINUE
      END DO

      WRITE (6, *) ' I10S = ', I10S
      WRITE (6, *) ' D10S = ', D10S, ' I11S = ', I11S
      WRITE (6, *) ' C10S = ', C10S
      WRITE (6, *) ' R10S = ', R10S
      WRITE (6, *) ' D11  = ', D11
      WRITE (6, *) ' I11  = ', I11
      WRITE (6, *) ' D10  = ', D10
      WRITE (6, *) ' R10  = ', R10
      WRITE (6, *) ' I12S = ', I12S
      WRITE (6, *) ' R11S = ', R11S
      WRITE (6, *) ' D11  = ', D11
      STOP 
      END
