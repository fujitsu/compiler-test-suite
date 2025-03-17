module m1
 integer,parameter,dimension(3)::p=(/1,2,3/)
 integer,dimension(3)::p1=(/1,2,3/)
 integer,dimension(3)::p2=(/-1,-2,-3/)
 logical,dimension(3)::pp=.true.
 contains
  function f(i)
   entry f1(i)
   entry f2(i)
   entry f3(i)
   integer,dimension(i)::f,f1,f2,f3
   f=p
  end function
end
use m1
integer ff(3)
do i=1,100
ff=f1(3)+merge(f2(3),p2,pp)+f(3)+f2(3)
if (any(ff/=p*4))print *,'error-1'
call sub((/(f1(3),f(3),i=1,2)/),f2(3),merge(p1,p2,pp))
end do
print *,'pass'
end
subroutine sub(x,y,z)
use m1
integer x(12),y(3),z(3)
if (any(x/=(/(p,i=1,4)/)))print *,'error-2'
if (any(y/=p))print *,'error-3'
if (any(z/=p))print *,'error-4'
end
