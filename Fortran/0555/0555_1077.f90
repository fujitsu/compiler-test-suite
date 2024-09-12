module mod1
type tt
 integer::i=2
end type
end module

use mod1
type(tt)::x
type(tt)::y
type(tt)::z
call s(x,y,z)
contains
subroutine s(c,b,a)
class(tt)::a
class(tt)::b
class(tt)::c
print *,[a,c,b], ':2 2 2 PASS'
end subroutine
end

