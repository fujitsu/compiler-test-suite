      PROGRAM ARRAY01
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(12)
      REAL(KIND(0D0)) :: STRESS(12)
      REAL(KIND(0D0)):: Z2(2)=(/0.0_8,6.0D+0/)
      STRESS(1:8:2) = (/1._8,2._8,3._8,4._8/)
      DO I=1,100000
         CALL SUB(STRESS,Sinc,Z2)
      ENDDO
      if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error'
 100  FORMAT("time = ",F20.10)
      print *,'pass'
      contains
      SUBROUTINE SUB(STRESS,Sinc,Z2)
      IMPLICIT REAL(KIND(0D0)) (A-H,O-Z)
      REAL(KIND(0D0)) :: Sinc(:)
      REAL(KIND(0D0)) :: STRESS(:)
      REAL(KIND(0D0)) :: Z2(:)
      REAL(KIND(0D0)), PARAMETER :: Z1 = 5.0D+0
      Sinc(1:12:2) = (/STRESS(1:8:2),Z1,Z2(2)/)
      END SUBROUTINE SUB
      END PROGRAM ARRAY01
