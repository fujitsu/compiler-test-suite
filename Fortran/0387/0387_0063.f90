module mod1
 type ty1
  procedure(), pointer , nopass :: ppnp
 end type
end module

use mod1

procedure(), pointer :: pp

type (ty1) :: t1

call csub1(t1, pp)

print *,'pass'

contains
 subroutine csub1(tt, pp)
  use mod1
  type (ty1) tt
  procedure(), pointer :: pp

  nullify(tt%ppnp)
  nullify(pp)

 end subroutine

end
