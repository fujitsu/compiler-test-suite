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
character(len=6)::ffff
logical a3
a3=.true.
a1='abc'
a2='123'
do i=1,100
ff=f(3)
if (ff/='abc')print *,'error-1'
ff=f2(3)
if (ff/='abc')print *,'error-11'
ff=f1(3)
if (ff/='abc')print *,'error-12'
ffff=merge(a1,a2,a3)//f(3)
if (ffff/='abcabc')print *,'error-13'
call sub((/(f1(3),f(3),i=1,2)/),f2(4),merge(a1,a2,a3))
call sub((/(f2(3),f2(3),i=1,2)/),f(4),merge(a1,a2,a3))
end do
print *,'pass'
end
subroutine sub(x,y,z)
character*3 x(4),y*4,z
if (any(x/='abc'))print *,'error-2'
if (   (y/='abcd'))print *,'error-3'
if (   (z/='abc'))print *,'error-4'
end
