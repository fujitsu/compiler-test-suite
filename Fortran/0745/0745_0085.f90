      INTEGER :: Sinc(6)
      INTEGER :: STRESS(4)
      STRESS = (/1,2,3,4/)
      CALL SUB(STRESS,Sinc)
      if (any(Sinc/=(/1,2,3,4,0,1/)))print *,'error'
      print *,'pass'
      END 
      SUBROUTINE SUB(STRESS,Sinc)
      INTEGER :: Sinc(6)
      INTEGER :: STRESS(2,2)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(1:6) = (/STRESS,ZERO,ONE/)
      END SUBROUTINE SUB
