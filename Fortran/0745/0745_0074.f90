      PROGRAM ARRAY01
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(6)
      REAL(KIND(0D0)) :: STRESS(6)
      REAL*8 S_TIME, E_TIME
      STRESS = 1.D0
      Sinc=-1
         CALL SUB(STRESS,Sinc)
      if (any(Sinc/=-1))print *,'error'
      print *,'pass'
      END PROGRAM ARRAY01
      SUBROUTINE SUB(STRESS,Sinc)
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(6)
      REAL(KIND(0D0)) :: STRESS(6)
      REAL(KIND(0D0)), PARAMETER :: ZERO = 0.0D+0
      logical ::y(6)=.false.

      where(y)
      Sinc(1:6) = (/STRESS(1:4),ZERO,ZERO/)
      end where
      END SUBROUTINE SUB
