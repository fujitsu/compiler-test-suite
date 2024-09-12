module mod1
type Atype
 integer::i=2
end type

type tt
 integer::j=2
 type(Atype)::arr
 character(8)::ch='atype'
end type
end module

use mod1
type(Atype)::act
call s(act)
contains
subroutine s(a)
use mod1

class(Atype)::a
print*,tt(2,a,'charac'),': 2 2 charac PASS'
end subroutine
end
