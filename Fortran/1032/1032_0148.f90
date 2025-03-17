module m1
 integer,parameter,dimension(3)::p=(/1,2,3/)
 contains
  function f(i)
  entry f1(i)
  entry f2(i)
   integer::f(i),f1(i),f2(i)
   f=p
  end function
end
use m1
integer ff(3)
do i=1,100
ff=f(3)
if (any(ff/=p))print *,'error-1'
ff=f1(3)
if (any(ff/=p))print *,'error-1'
ff=f2(3)
if (any(ff/=p))print *,'error-1'
call sub((/(f1(3),f(3),i=1,2)/),f2(3))
end do
print *,'pass'
end
subroutine sub(x,y)
use m1
integer x(12),y(3)
if (any(x/=(/(p,i=1,4)/)))print *,'error-2'
if (any(y/=p))print *,'error-3'
end
