integer, dimension(2,3) :: a
integer :: ad1(2)
logical(kind=8),pointer :: b
allocate(b)
a=RESHAPE((/9,7,9,12,13,7/),(/2,3/))
b=.true.
ad1= maxloc(a,dim=2,mask=a<10,kind=4,back=b)
if(ad1(1).ne.2)print*,101
if(ad1(2).ne.3)print*,102
print*,"pass"
end
