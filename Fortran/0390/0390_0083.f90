module m1
integer (8)::ip
contains
subroutine s1(a)
integer         ,dimension(:)::a(:)
if (ks2(a)/=1) print *,102
end subroutine
function   ks2(x) result(ks)
integer         ,intent(in)::x(2)
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

