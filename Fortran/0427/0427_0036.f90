module mo1
type tt
 integer :: ii
end type
public::tt
end

module mo2
use mo1
public::sub
contains
subroutine sub(a)
type(tt)::a
a%ii=1
print *,a%ii
end subroutine
end

use mo1
use mo2
type(tt)::tp
call sub(tp)
end
