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
do n=1,100
ff=f(3)
if (ff/='abc')print *,'error-1'
ff=f1(3)
if (ff/='abc')print *,'error-11'
ff=f2(3)
if (ff/='abc')print *,'error-12'
call sub((/(f(3),f1(3),i=1,2)/))
call sub((/(f1(3),f2(3),i=1,2)/))
call sub((/(f2(3),f1(3),i=1,2)/))
end do
print *,'pass'
end
subroutine sub(x)
character*3 x(4)
if (any(x/='abc'))print *,'error-2'
end
