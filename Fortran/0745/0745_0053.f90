      PROGRAM ARRAY01
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(6)
      REAL(KIND(0D0)) :: STRESS(6)
      STRESS = 1.D0
      DO I=1,100000
         CALL SUB(STRESS,Sinc)
      ENDDO
      WRITE(28,*)Sinc
 100  FORMAT("time = ",F20.10)
      print *,'pass'
      END PROGRAM ARRAY01
      SUBROUTINE SUB(STRESS,Sinc)
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(6)
      REAL(KIND(0D0)) :: STRESS(6)
      REAL(KIND(0D0)), PARAMETER :: ZERO = 0.0D+0
      Sinc(1:6) = (/(STRESS(i),i=1,4),ZERO,ZERO/)
      END SUBROUTINE SUB
