      INTEGER :: Sinc(6)
      INTEGER :: STRESS(6)
      STRESS = (/1,2,3,4,5,6/)
      CALL SUB(STRESS,Sinc)
      if (any(Sinc/=(/1,2,3,4,0,1/)))print *,'error'
      print *,'pass'
      END 
      SUBROUTINE SUB(STRESS,Sinc)
      INTEGER :: Sinc(6)
      INTEGER :: STRESS(6)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(1:6) = (/STRESS(1:4),ZERO,ONE/)
      END SUBROUTINE SUB
