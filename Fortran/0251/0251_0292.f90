module mod1
type ty
integer::ii=1
end type
contains
subroutine sub(d1)
integer::d1 (2,2)
type(ty)::obj
obj%ii = d1(2,1)
if(obj%ii==3)print*,"1:pass"
end subroutine
end module

use mod1
Integer,dimension(2,2) ::ii = 2
block
dimension ii(*,*)
integer,parameter::ii = reshape([2,3,4,5],[2,2])
call sub(ii)
if(ii(1,2)==4)print*,"2:pass"
end block
call sub(ii)
if(ii(2,2)==2)print*,"3:pass"
end
