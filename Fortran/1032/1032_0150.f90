module m1
 contains
  function f(i)
   entry f1(i)
   entry f2(i)
   character(len=i)::f,g1,g2,g3(2),g4(2),f1,f2
   f2='abcdefg'
   g1='1234567'
   g2='1234567'
   g3='1234567'
   g4='1234567'
   if (g1/='1234567'(:i))print *,'error-11'
   if (g2/='1234567'(:i))print *,'error-12'
   if (any(g3/='1234567'(:i)))print *,'error-13'
   if (any(g4/='1234567'(:i)))print *,'error-14'
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
call sub((/(f1(3),f(3),i=1,2)/),f2(4))
end do
print *,'pass'
end
subroutine sub(x,y)
character*3 x(4),y*4
if (any(x/='abc'))print *,'error-2'
if (   (y/='abcd'))print *,'error-3'
end
