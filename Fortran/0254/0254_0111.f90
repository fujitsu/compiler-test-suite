module m
integer, dimension(5) :: a
integer :: ad1(1)
logical(kind=8) :: b
end module
program main
use m
implicit none
a=(/7,9,9,12,5/)
b=.true.
ad1= maxloc(a,a<10,4,back=b)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
