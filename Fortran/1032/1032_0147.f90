module m1
 integer,parameter,dimension(3)::p=(/1,2,3/)
 contains
  function f(i)
   integer,dimension(i)::f,f1,f2,f3
   entry f1(i)
   entry f2(i)
   entry f3(i)
   f=p
  end function
end
use m1
integer ff(3)
do n=1,100
ff=f(3)
if (any(ff/=p))print *,'error-1'
ff=f1(3)
if (any(ff/=p))print *,'error-11'
ff=f2(3)
if (any(ff/=p))print *,'error-12'
ff=f3(3)
if (any(ff/=p))print *,'error-13'
call sub((/(f(3),f1(3),i=1,2)/))
call sub((/(f1(3),f2(3),i=1,2)/))
call sub((/(f3(3),f(3),i=1,2)/))
end do
print *,'pass'
end
subroutine sub(x)
use m1
integer x(12)
if (any(x/=(/(p,i=1,4)/)))print *,'error-2'
end
