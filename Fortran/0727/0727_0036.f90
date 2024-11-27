 call s1
 print *,'pass'
 end
module m1
  type x
     character*3 y
  end type
 end
subroutine s1
use m1
type(x),dimension(1):: a1,a2
type(x):: aa/x('123')/
a1(1)=fun1(aa)
 if (a1(1)%y/='123')write(6,*) "NG"
a2(1)=fun1(aa)
 if (a1(1)%y/='123')write(6,*) "NG"
 if (a2(1)%y/='123')write(6,*) "NG"
 contains
  function fun1(a)
   type(x) fun1,a
   intent(in)::a
   fun1=a
  end function
end

