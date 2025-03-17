module m1
 integer,parameter,dimension(3)::p=(/1,2,3/)
 contains
  function f(i)
   integer::f(i)
   integer,dimension(i)::f1,f2,f3,f4,f5
   entry f4(i)
   entry f5(i)
   f5=p
   f1=p
   f2=p
   f3=p
   if (any(f1/=p))print *,'error-11'
   if (any(f2/=p))print *,'error-12'
   if (any(f3/=p))print *,'error-13'
  end function
end
use m1
integer ff(3)
do n=1,100
ff=f(3)
if (any(ff/=p))print *,'error-1'
ff=f4(3)
if (any(ff/=p))print *,'error-1'
ff=f5(3)
if (any(ff/=p))print *,'error-1'
call sub((/(f4(3),f(3),i=1,2)/))
end do
print *,'pass'
end
subroutine sub(x)
use m1
integer x(12)
if (any(x/=(/(p,i=1,4)/)))print *,'error-2'
end
