module m1
contains
subroutine s1(a)
integer         ,dimension(:)::a(:)

call ss2(a)
if (ks2(a)/=1) print *,102
end subroutine
subroutine ss1(x)
integer,optional::x(2)
if (.not.present(x)) print *,201
if (any(x/=[1,2])) print *,1001
end subroutine
function   ks1(x) result(ks)
integer,optional::x(2)
if (.not.present(x)) print *,202
if (any(x/=[1,2])) print *,1002
ks=1
end function
subroutine ss2(x)
integer         ,intent(in)::x(2)

if (any(x/=[1,2])) print *,1003
end subroutine
function   ks2(x) result(ks)
integer         ,intent(in)::x(2)

if (any(x/=[1,2])) print *,1004
ks=1
end function
end
use m1
integer,parameter::c(3)=[1,0,2]
integer         ::t(3)=[1,0,2]
call s1(c(::2))
call s1(t(::2))
print *,'pass'
end

