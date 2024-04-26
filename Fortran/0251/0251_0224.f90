module mod1
type ty
integer::ii=1
end type
contains
subroutine sub(d1)
integer::d1
integer::ii=2
type(ty)::obj
d1=obj%ii+ii
end subroutine
end module

use mod1
block
integer::ii
call sub(ii)
if(ii==3)print*,"pass"
end block
call sub(ii)
if(ii==3)print*,"pass"
end
