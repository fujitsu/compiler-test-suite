module m1
integer::n=2
type x
  integer,allocatable::a
end type
contains
function f2(n) 
type(x)::f2
f2=x(n)
end function
function f1(d)
type(x)::d
integer:: f1
f1=d%a
end function
subroutine s1(v,k)
character(*):: v(:)
select case(v(f1(f2(n))))
  case ('2':'3')
    k=1 
  case default
    k=4 
end select
end subroutine
end

use m1
character:: v(2)
v(2)='1'
call s1(v,k)
if (k/=4) print *,101,k
v(2)='2'
call s1(v,k)
if (k/=1) print *,102,k
print *,'pass'
end
