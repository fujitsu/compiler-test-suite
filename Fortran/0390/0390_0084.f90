module m1
integer (8)::ip
contains
subroutine s1(a)
integer         ,dimension(:)::a(:)
call ss2(a)
end subroutine
subroutine ss2(x)
integer,optional,intent(in)::x(2)
if (loc(x)/=ip) print *,814
if (any(x/=[1,2])) print *,1014
end subroutine
function   ks2(x) result(ks)
integer,optional,intent(in)::x(2)
if (loc(x)/=ip) print *,804
if (any(x/=[1,2])) print *,1004
ks=1
end function
end
use m1
integer         ::t(2)=[1,2]
ip=loc(t)
call s1(t)
print *,'pass'
end

