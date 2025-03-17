module m1
 integer,parameter,dimension(3)::p=(/1,2,3/)
 integer,dimension(3)::p1=(/1,2,3/)
 integer,dimension(3)::p2=(/-1,-2,-3/)
 logical,dimension(3)::pp=.true.
 contains
  function f(i)
   integer::f(i)
   f=p
  end function
end
use m1
integer ff(3)
do n=1,100
ff=f(3)
if (any(ff/=p))print *,'error-1'
ff=merge(p1,p2,pp)
if (any(ff/=p))print *,'error-11'
ff=f(3)+merge(p1,p2,pp)
if (any(ff/=p*2))print *,'error-12'
call sub((/(f(3)+merge(p1,p2,pp),f(3)+merge(p1,p2,pp),i=1,2)/))
end do
print *,'pass'
end
subroutine sub(x)
use m1
integer x(12)
if (any(x/=(/(p,i=1,4)/)*2))print *,'error-2'
end
