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
type(xdef)::x
x%z%zz=1
call sub(x,x)
 print *,'pass'
contains

subroutine sub(a,b)
 type(xdef)::a,b
 a%z%zz=5
 b%z%zz=10
end subroutine
end
