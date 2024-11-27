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
      type u 
         integer::uu
      end type
      type(u), PARAMETER :: ONE=u(1)
      integer, PARAMETER :: ZERO = 0
      Sinc(1:6) = (/STRESS(1:4),ZERO,ONE%uu/)
      END SUBROUTINE SUB
