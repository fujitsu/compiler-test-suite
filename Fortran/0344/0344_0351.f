      PROGRAM MAIN
      CALL HCGEN
      STOP
      END
C
      SUBROUTINE HCGEN
      COMMON /WORK2/ RE(121) , C(121) , S(121)
      NB1   = 121
      RB    = 1.E0
      A     = 10 + RB
      B     = 15
      DBETA = 30
      BETA  = - DBETA
      DO 1 I = 1 , NB1
        BETA    = BETA + DBETA
        C ( I ) = COS( BETA )
        S ( I ) = SIN( BETA )
        SQB     = SQRT(  ( B*C( I ) )**2 + ( A*S( I ) )**2   )
    1   RE( I ) = A*B / SQB
      
      WRITE(6,*) RE
      RETURN
      END
