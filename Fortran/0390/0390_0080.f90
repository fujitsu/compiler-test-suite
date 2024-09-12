module m1
contains
subroutine s1(a,n)
integer,optional,dimension(:)::a(:)
integer,target  ,dimension(3)::b(3)=[1,0,2]
integer,pointer ,dimension(:)::p(:)
p=>b(::2)

call ss2(a,p,[n])
if (ks2(a,p,[n])/=1) print *,102
end subroutine
subroutine ss1(x,y)
integer,optional::x(2),y(2)
if (.not.present(x)) print *,201
if (any(x/=[1,2])) print *,1001
if (any(y/=[1,2])) print *,2001
end subroutine
function   ks1(x,y) result(ks)
integer,optional::x(2),y(2)
if (.not.present(x)) print *,202
if (any(x/=[1,2])) print *,1002
if (any(y/=[1,2])) print *,2002
ks=1
end function
subroutine ss2(x,y,n)
integer,optional,intent(in)::x(2),y(2),n(*)
if (.not.present(x)) print *,301
if (any(x/=[1,2])) print *,1003
if (any(y/=[1,2])) print *,2003
if (n(1)/=1) print *,3003
end subroutine
function   ks2(x,y,n) result(ks)
integer,optional,intent(in)::x(2),y(2),n(*)
if (.not.present(x)) print *,302
if (any(y/=[1,2])) print *,2004
if (any(x/=[1,2])) print *,1004
if (n(1)/=1) print *,3004
ks=1
end function
end
use m1
integer,parameter::c(3)=[1,0,2]
integer         ::t(3)=[1,0,2]
call s1(c(::2),1)
print *,'pass'
end

