      DIMENSION IBUF(5), ICLMPI(4), IRWMPI(3)
      LOGICAL BASIC(10),v(10),BAR
      logical,parameter::T=.true.,F=.false.
      pointer (BP,BAR)
      DATA M, M1, N1 /3, 3, 4/
      DATA IBUF/1,1,2,2,3/, ICLMPI/1,2,3,4/, IRWMPI/1,2,3/
      BASIC = .FALSE.
      J1 = IBUF(2)
      JJI2 = 2
      BP = loc(BASIC(1))
      DO JN = 1, N1
         IF ( J1*2 > 0 ) THEN
           BP = BP + 4
         ELSE
           JJI2 = J1*4
         ENDIF
         BAR = .TRUE.
      END DO
      WRITE (1,*) BASIC
      rewind 1
      read(1,*) v
      if (any(v.neqv.(/F,T,T,T,T,F,F,F,F,F/)))print *,'error'
      if (JJI2/=2)print *,'error-2'
      print *,'pass'
      END
