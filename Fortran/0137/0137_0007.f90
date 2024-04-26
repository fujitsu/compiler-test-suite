module m1
contains
subroutine s1(a)
integer,optional,dimension(:)::a(:)
call ss1(a)
call ss2(a)
end subroutine
subroutine ss1(x)
integer,optional::x(2)
if (present(x)) print *,201
end subroutine
function   ks1(x) result(ks)
integer,optional::x(2)
if (present(x)) print *,202
ks=1
end function
subroutine ss2(x)
integer,optional,intent(in)::x(2)
if (present(x)) print *,301
end subroutine
function   ks2(x) result(ks)
integer,optional,intent(in)::x(2)
if (present(x)) print *,302
ks=1
end function
end
use m1
call s1(      )
print *,'pass'
end

