module m
type zdef
 sequence
 integer :: zz=2
end type
type xdef
sequence
 type(zdef) ::z
end type
end module

use m
type(xdef),target :: t
type(xdef),pointer :: p
p=>t
t%z%zz=10
call sub(t,t)
if(t%z%zz==200) then
  print *,'pass'
else
  print *,'ng'
end if
contains
subroutine sub(t1,t2)
type(xdef),target :: t1,t2
t1%z%zz=100
t2%z%zz=200
end subroutine
end
