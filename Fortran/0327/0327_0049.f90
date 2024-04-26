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
  print *,'pass'
contains
subroutine sub(t1,t2)
type(xdef),target :: t2
type(xdef),target,intent(in) :: t1
t2=t1
end subroutine
end
