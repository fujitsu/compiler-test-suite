module m1
 contains
  function f(i)
  entry    f1(i)
  entry    f2(i)
   character(len=i)::f,f1,f2
   f='abcdefg'
  end function
end
use m1
character(len=3)::ff
do i=1,100
ff=f(3)
if (ff/='abc')print *,'error-1'
ff=f1(3)
if (ff/='abc')print *,'error-11'
ff=f2(3)
if (ff/='abc')print *,'error-12'
call sub((/(f(3),f(3),f1(3),f2(3),f(3),i=1,2)/),f2(4))
end do
print *,'pass'
end
subroutine sub(x,y)
character*3 x(10),y*4
if (any(x/='abc'))print *,'error-2'
if (   (y/='abcd'))print *,'error-3'
end
