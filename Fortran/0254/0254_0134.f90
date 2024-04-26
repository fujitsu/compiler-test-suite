module m
integer, dimension(5) :: a
integer :: ad1(1)
logical :: b
contains
function fun(x)
  logical :: x
  logical :: fun
  x=.true.
  fun=b
end function fun
end module m
program pro
use m
a=(/7,2,2,1,5/)
ad1= minloc(a,mask=a>1,kind=4,back=fun(b))
if(ad1(1).ne.3)print*,101
print*,"pass"
end
