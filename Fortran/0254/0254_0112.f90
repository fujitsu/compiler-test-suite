module m
integer, dimension(5) :: a
integer :: ad1(1)
logical :: b
contains
subroutine sub
  ad1= maxloc(a,a<10,kind=4,back=b)
end subroutine sub
end module m
program pro
use m
a=(/7,9,9,12,5/)
b=.true.
call sub
if(ad1(1).ne.3)print*,101
print*,"pass"
end
