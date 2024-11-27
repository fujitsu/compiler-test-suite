module m1
contains
subroutine sub
intent(inout)::p
pointer::p
entry ent1(p)
allocate(p)
p=2
end subroutine
end
use m1
pointer::p
call ent1(p)
if (p/=2)write(6,*) "NG"
print *,'pass'
end
