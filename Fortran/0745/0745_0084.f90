   type x
      INTEGER :: Sinc(6)
   end type
   type(x)::v
      INTEGER :: STRESS(6)
      STRESS = (/1,2,3,4,5,6/)
      CALL SUB(STRESS,v)
      if (any(v%Sinc/=(/1,2,3,4,0,1/)))print *,'error'
      print *,'pass'
      contains
      SUBROUTINE SUB(STRESS,vv)
   type(x)::vv
      INTEGER :: STRESS(6)
      INTEGER, PARAMETER :: ZERO = 0.0,ONE=1.0
      v%Sinc = (/STRESS(1:4),ZERO,ONE/)
      END SUBROUTINE SUB
end
