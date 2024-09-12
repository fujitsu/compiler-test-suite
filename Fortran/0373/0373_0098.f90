elemental integer function fun1(a,b)
integer,intent(in):: a,b
fun1=a+b
end function

module m1
integer b
contains
 elemental integer function fun2(a)
 integer,intent(in):: a
 fun2=a+b   
 end function
end module

subroutine s1(a1,b1,i,j)
use m1
interface
 elemental integer function fun1(a,b)
 integer,intent(in):: a,b
 end function
end interface
integer a1(fun1(i,j)),b1(fun2(i)),c1(10)
if(ubound(a1,1).ne.10)print*,'ng1'
if(ubound(b1,1).ne.10)print*,'ng2'
c1=fun1(a1,b1)+fun2(a1)
do i=1,10
  if(c1(i).ne.20)print*,'ng3'
end do
print*,'pass'
end subroutine

program main
use m1
integer a1(10),b1(10)
a1=5
b1=5
i=5;j=5;b=5
call s1(a1,b1,i,j)
end
