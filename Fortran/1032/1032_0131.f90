module m1
 contains
  function f(i)
   character(len=i)::f
   f='abcdefg'
  end function
end
use m1
character(len=3)::ff
do n=1,100
ff=f(3)
if (ff/='abc')print *,'error-1'
call sub((/(f(3),f(3),i=1,2)/))
end do
print *,'pass'
end
subroutine sub(x)
character*3 x(4)
if (any(x/='abc'))print *,'error-2'
end
