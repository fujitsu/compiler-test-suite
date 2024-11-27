      INTEGER :: Sinc(8),Sinc2(16)
      INTEGER :: STRESS(4)
      i1=1
      STRESS = (/1,2,3,4/);Sinc=0
      CALL SUB01(STRESS,Sinc)
      if (any(Sinc/=(/0,1,2,3,4,5,0,1/)))print *,'error-1'
      STRESS = (/1,2,3,4/);Sinc=0
      CALL SUB02(STRESS,Sinc)
      if (any(Sinc/=(/0,1,1,2,3,4,0,1/)))print *,'error-2'
      STRESS = (/1,2,3,4/);Sinc=0
      CALL SUB03(STRESS,Sinc)
      if (any(Sinc/=(/0,1,1,2,3,4,0,1/)))print *,'error-3'
      STRESS = (/1,2,3,4/);Sinc2=0
      CALL SUB04(STRESS,Sinc2(1:16:2))
      if (any(Sinc2(1:16:2)/=(/0,1,1,2,3,4,0,1/)))print *,'error-4'
      STRESS = (/1,2,3,4/);Sinc2=0
      CALL SUB05(STRESS,Sinc2(1:16:2))
      if (any(Sinc2(1:16:2)/=(/0,1,1,2,3,4,0,1/)))print *,'error-5'
      print *,'pass'
      contains
      SUBROUTINE SUB01(STRESS,Sinc)
      INTEGER :: Sinc(8),STRESS(4)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(:) = (/ZERO,ONE,STRESS+1,ZERO,ONE/)
      END  SUBROUTINE
      SUBROUTINE SUB02(STRESS,Sinc)
      INTEGER :: Sinc(8),STRESS(4)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(:) = (/ZERO,ONE,STRESS,ZERO,ONE/)
      END SUBROUTINE
      SUBROUTINE SUB03(STRESS,Sinc)
      INTEGER :: Sinc(8),STRESS(4)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(i1:) = (/ZERO,ONE,STRESS,ZERO,ONE/)
      END SUBROUTINE
      SUBROUTINE SUB04(STRESS,Sinc)
      INTEGER :: Sinc(:),STRESS(4)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(i1:) = (/ZERO,ONE,STRESS,ZERO,ONE/)
      END SUBROUTINE
      SUBROUTINE SUB05(STRESS,Sinc)
      INTEGER :: Sinc(:),STRESS(4)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(:i1+7) = (/ZERO,ONE,STRESS,ZERO,ONE/)
      END SUBROUTINE
      end
