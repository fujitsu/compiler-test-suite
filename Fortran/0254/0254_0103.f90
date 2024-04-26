implicit none
integer, dimension(5) :: a
integer :: ad1(1)
logical :: b
a=(/7,9,9,7,5/)
b=.true.
ad1= maxloc(array=a,back=b)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
