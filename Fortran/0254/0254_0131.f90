integer, dimension(2,3) :: a
integer :: ad1(2)
logical :: b
intrinsic :: maxloc
a=RESHAPE((/7,2,2,1,5,5/),(/2,3/))
b=.true.
ad1= minloc(a,a>1,4,b)
if(ad1(1).ne.1)print*,101
if(ad1(2).ne.2)print*,102
print*,"pass"
end
