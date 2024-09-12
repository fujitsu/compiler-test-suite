module mod1
type tt
 integer::i=2
end type
end module

use mod1
type(tt)::x(5)
call s(x)
contains
subroutine s(dmyarr)
use mod1
class(tt) :: dmyarr(5)
print *,[dmyarr(1:4:2), dmyarr(2:4:1)]
end subroutine
end
