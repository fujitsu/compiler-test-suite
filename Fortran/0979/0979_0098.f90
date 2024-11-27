module m1
contains
subroutine sub
dimension p(:)
intent(out)::p
pointer::p
entry ent1(p)
allocate(p(2))
p=(/1,2/)
end subroutine
end
module m2
contains
subroutine sub1
dimension p1(:)
intent(out)::p1
pointer::p1
entry ent2(p1)
allocate(p1(2))
p1=(/1,2/)
end subroutine
end

use m1
use m2
pointer::p,p1
dimension p(:),p1(:)
call ent1(p)
call ent2(p1)
if (any(p/=(/1,2/)))write(6,*) "NG"
if (any(p1/=(/1,2/)))write(6,*) "NG"
print *,'pass'
end
