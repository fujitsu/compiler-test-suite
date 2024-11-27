      INTEGER,target :: Sinc(12)
      INTEGER :: STRESS(6)
      INTEGER,POINTER::p(:)
      STRESS = (/1,2,3,4,5,6/)
      p=>Sinc(1:12:2)
      CALL SUB(STRESS,p)
      if (any(p/=(/1,2,3,4,0,1/)))print *,'error'
      print *,'pass'
contains
      SUBROUTINE SUB(STRESS,Sinc)
      INTEGER :: Sinc(:)
      INTEGER :: STRESS(6)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      Sinc(1:6) = (/STRESS(1:4),ZERO,ONE/)
      END SUBROUTINE SUB
      END 
