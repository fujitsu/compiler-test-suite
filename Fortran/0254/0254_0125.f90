implicit none
integer, dimension(5) :: a
integer :: ad1(1),d
a=(/7,1,1,7,5/)
d=1
ad1= minloc(array=a,dim=d,back=.true.)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
