module mo1
type tt
 integer :: ii
end type
end

module mo2
use mo1
integer::xx
private
public::sub
contains
subroutine sub(a)
type(tt)::a
a%ii=1
print *,'pass'
end subroutine
end

module mo3
use mo2
end 

use mo1
use mo3
type(tt)::tp
call sub(tp)
end
