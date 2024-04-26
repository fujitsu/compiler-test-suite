implicit none
integer, dimension(2,2,2) :: a
integer :: ad1(3)
logical :: b
a=RESHAPE((/9,7,9,12,13,7,9,3/),(/2,2,2/))
b=.true.
ad1= minloc(array=a,mask=a>7,kind=4,back=b)
if(ad1(1).ne.1)print*,101
if(ad1(2).ne.2)print*,102
if(ad1(3).ne.2)print*,103
print*,"pass"
end
