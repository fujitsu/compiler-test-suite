      logical,parameter::T=.true.,F=.false.
      DIMENSION IBUF(4), ICLMPI(4), IRWMPI(3)
      LOGICAL BASIC(7)
      DATA M, M1, N1 /3, 3, 4/
      DATA IBUF/3,1,6,2/, ICLMPI/1,2,3,4/, IRWMPI/1,2,3/
      DO J = 1, 7
         BASIC(J) = .TRUE.
      END DO
      DO JN = 1, N1
         JJ1 = IBUF(JN)
         J1 = JJ1 - M1
         IF (J1 > 0) THEN
            J = ICLMPI(J1)
            JJ = J + M
         ELSE
            JJ = IRWMPI(JJ1)
         END IF
         BASIC(JJ) = .FALSE.
      END DO
      if (any(BASIC.neqv.(/F,F,F,T,T,F,T/)))print *,'error'
      print *,'pass'
      END
