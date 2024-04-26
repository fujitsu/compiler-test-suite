integer, dimension(2,3) :: a
integer :: ad1(2)
logical(kind=8),pointer :: b
allocate(b)
a=RESHAPE((/29,27,29,12,13,27/),(/2,3/))
b=.true.
ad1= minloc(a,dim=2,mask=a>20,kind=4,back=b)
if(ad1(1).ne.2)print*,101
if(ad1(2).ne.3)print*,102
print*,"pass"
end
