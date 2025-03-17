module m1
 contains
  function f(i)
   character(len=i)::f,f1,f2
  entry f1(i)
  entry f2(i)
   f='abcdefg'
  end function
end
use m1
character(len=3)::ff,a1,a2
logical a3
a3=.true.
a1='abc'
a2='123'
do n=1,100
ff=f(3)
if (ff/='abc')print *,'error-1'
ff=f1(3)
if (ff/='abc')print *,'error-11'
ff=f2(3)
if (ff/='abc')print *,'error-12'
ff=merge(a1,a2,a3)
if (ff/='abc')print *,'error-11'
call sub((/(f1(3),f(3),i=1,2)/))
call sub2((/(f(3),f2(3),i=1,2)/),merge(a1,a2,a3))
end do
print *,'pass'
end
subroutine sub(x)
character*3 x(4)
if (any(x/='abc'))print *,'error-2'
end
subroutine sub2(x,y)
character*3 x(4),y
if (any(x/='abc'))print *,'error-22'
if ((y/='abc'))print *,'error-23'
end
