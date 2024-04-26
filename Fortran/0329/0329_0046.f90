module mdef
contains
pure function fun(x)
integer,dimension(10),intent(in) :: x
integer,dimension(10):: fun,r
integer::i
do i=1,10
r(i)=x(i)+1
end do
fun=r
return
entry fune(x) result (r)
r=3
return
end function
end module

use mdef
integer,dimension(10) :: x
integer::ii,s
x=2
s=0
do ii=1,5
x=ii
s=sum(fun(x))+s+sum(fune(x))
end do
if ( s == 350) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end
