module m1
integer (8)::ip
contains
subroutine s1(a)
integer         ,dimension(:)::a(:)
call ss1(a)
if (ks1(a)/=1) print *,101
call ss2(a)
if (ks2(a)/=1) print *,102
call ss3(a)
if (ks3(a)/=1) print *,103
call ss4(a)
if (ks4(a)/=1) print *,104
end subroutine
subroutine ss1(x)
integer,optional::x(2)
if (loc(x)/=ip) print *,801
if (.not.present(x)) print *,201
if (any(x/=[1,2])) print *,1001
end subroutine
function   ks1(x) result(ks)
integer,optional::x(2)
if (loc(x)/=ip) print *,802
if (.not.present(x)) print *,202
if (any(x/=[1,2])) print *,1002
ks=1
end function
subroutine ss2(x)
integer         ,intent(in)::x(2)
if (loc(x)/=ip) print *,803

if (any(x/=[1,2])) print *,1003
end subroutine
function   ks2(x) result(ks)
integer         ,intent(in)::x(2)
if (loc(x)/=ip) print *,804

if (any(x/=[1,2])) print *,1004
ks=1
end function
subroutine ss3(x)
integer,optional,intent(in)::x(2)
if (loc(x)/=ip) print *,805
if (.not.present(x)) print *,5301
if (any(x/=[1,2])) print *,51003
end subroutine
function   ks3(x) result(ks)
integer,optional,intent(in)::x(2)
if (loc(x)/=ip) print *,806
if (.not.present(x)) print *,5302
if (any(x/=[1,2])) print *,51004
ks=1
end function
subroutine ss4(x)
integer                    ::x(2)
if (loc(x)/=ip) print *,807

if (any(x/=[1,2])) print *,61003
end subroutine
function   ks4(x) result(ks)
integer                    ::x(2)
if (loc(x)/=ip) print *,808

if (any(x/=[1,2])) print *,61004
ks=1
end function
end
use m1

integer         ::t(2)=[1,2]
ip=loc(t)
call s1(t)
print *,'pass'
end

