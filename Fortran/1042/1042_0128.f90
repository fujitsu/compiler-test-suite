module mdef
type tdef
real::x,y
end type
end module
pure subroutine sub(tx,ty)
use mdef
type(tdef),intent(in)::tx(10)
type(tdef),intent(out)::ty(10)
ty%y=tx%x*2.0
end subroutine

use mdef
type(tdef)::tx(10)
type(tdef)::ty(10)
tx%x=2.0
call sub(tx,ty)
if ( abs(ty(10)%y - 4.0000 ) < 0.00001 ) then
  print *,'pass'
else
  print *,ty%y
endif
end
