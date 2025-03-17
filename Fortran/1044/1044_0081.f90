module m1
contains
subroutine sub
entry ent2(p)
pointer::p
entry ent3(p)
intent(inout)::p
entry ent1(p)
allocate(p)
p=2
end subroutine
end
use m1
pointer::p
call ent1(p)
if (p/=2)write(6,*) "NG"
p=3
call ent2(p)
if (p/=2)write(6,*) "NG"
p=3
call ent3(p)
if (p/=2)write(6,*) "NG"
print *,'pass'
end




