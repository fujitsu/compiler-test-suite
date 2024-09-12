module m1
integer (8)::ip
contains
subroutine s1(a)
integer         ,dimension(:)::a(:)
call ss2(a)
call ss3(a)
end subroutine
subroutine ss2(x)
integer         ,intent(in)::x(2)
if (loc(x)/=ip) print *,803

if (any(x/=[1,2])) print *,1003
end subroutine
subroutine ss3(x)
integer,optional,intent(in)::x(2)
if (loc(x)/=ip) print *,805
if (.not.present(x)) print *,5301
if (any(x/=[1,2])) print *,51003
end subroutine
end
use m1

integer         ::t(2)=[1,2]
ip=loc(t)
call s1(t)
print *,'pass'
end

