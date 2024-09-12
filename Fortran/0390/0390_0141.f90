module m1
integer,parameter::x(3)=[1,2,3]
contains
subroutine s1
call ss(x)
end subroutine
subroutine ss(x)
integer,dimension(:)::x
call sss1(0,x)
call sss1(1,x,[x])
if (f1(0,x)/=0) print *,101
if (f1(1,x,[x])/=0) print *,102
end subroutine
subroutine sss1(n,y,z)
integer,dimension(3)::y
integer,optional,dimension(3)::z
if (any(y/=x)) print *,201
if (present(z)) then
  if (n/=1) print *,301
else
  if (n/=0) print *,302
endif
end subroutine
function f1(n,y,z) result(j)
integer,dimension(3)::y
integer,optional,dimension(3)::z
if (any(y/=x)) print *,201
if (present(z)) then
  if (n/=1) print *,301
else
  if (n/=0) print *,302
endif
j=0
end function
end
use m1
call s1
print *,'pass'
end



