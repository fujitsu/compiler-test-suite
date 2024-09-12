module m1
interface
subroutine sub(pp)
integer,pointer :: pp  
end subroutine
end interface
contains
subroutine ss(p1,p2)
procedure(sub),pointer::p1
procedure(sub)::p2
integer,pointer :: p
allocate(p)
call p1(p)
if (p/=1) print *,101
p=0
call p2(p)
if (p/=1) print *,101
end subroutine
end
use m1
procedure(sub),pointer::p1
p1=> sub
call ss(p1,sub)
print *,'pass'
end

subroutine sub(pp)
integer,pointer :: pp  
pp=1
end subroutine
