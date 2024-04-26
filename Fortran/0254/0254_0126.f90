implicit none
integer, dimension(5) :: a
integer :: ad1(1)
logical :: b(2,2)
a=(/7,2,2,1,5/)
b=.true.
ad1= minloc(array=a,mask=a>1,back=b(1,2))
if(ad1(1).ne.3)print*,101
print*,"pass"
end
