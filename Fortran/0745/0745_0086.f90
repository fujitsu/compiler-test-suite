      INTEGER :: Sinc(6)
      INTEGER :: STRESS(6)
      STRESS = (/1,2,3,4,5,6/)
      Sinc=-STRESS
      CALL SUB(STRESS,Sinc)
      if (any(-Sinc/=(/1,2,3,4,5,6/)))print *,'error'
      print *,'pass'
      END 
      SUBROUTINE SUB(STRESS,Sinc)
      INTEGER :: Sinc(6)
      INTEGER :: STRESS(6)
      Sinc(1:0) = (/STRESS(1:0)/)
      END SUBROUTINE SUB
