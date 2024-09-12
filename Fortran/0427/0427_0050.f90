module mo1
type tt
 integer :: ii
end type
end

module mo2
use mo1
private
public::sub
contains
subroutine sub(a)
type(tt)::a
a%ii=1
if (1.eq.2)print *,a%ii
end subroutine
end

use mo1
use mo2
type(tt)::tp
call sub(tp)
print *,'pass'
end
