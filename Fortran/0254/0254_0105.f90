implicit none
integer, dimension(5) :: a
integer :: ad1(1)
logical :: b(2,2)
a=(/7,9,9,12,5/)
b=.true.
ad1= maxloc(array=a,mask=a<10,back=b(1,2))
if(ad1(1).ne.3)print*,101
print*,"pass"
end
