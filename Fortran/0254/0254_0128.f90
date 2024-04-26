implicit none
integer, dimension(5) :: a
integer :: ad1(1),d
logical (kind=1) :: b
a=(/7,3,3,1,5/)
b=.true.
d=1
ad1= minloc(back=b,array=a,dim=d,mask=a>1)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
