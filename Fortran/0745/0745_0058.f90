      PROGRAM ARRAY01
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(12)
      REAL(KIND(0D0)) :: STRESS(12)
      REAL*8 S_TIME, E_TIME
      STRESS = 1.D0
       S_TIME=0
      DO I=1,100000
         CALL SUB(STRESS,Sinc)
      ENDDO
       E_TIME=1
      WRITE(1,100) (E_TIME-S_TIME)*0.000001
      if (any(abs(Sinc(1:12:2)-(/1._8,1._8,1._8,1._8,0._8,0._8/))>0.0001_8))print *,'error'
 100  FORMAT("time = ",F20.10)
      print *,'pass'
      END PROGRAM ARRAY01
      SUBROUTINE SUB(STRESS,Sinc)
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(12)
      REAL(KIND(0D0)) :: STRESS(12)
      REAL(KIND(0D0)), PARAMETER :: ZERO = 0.0D+0
      Sinc(1:12:2) = (/STRESS(1:8:2),ZERO,ZERO/)
      END SUBROUTINE SUB
