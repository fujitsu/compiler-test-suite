implicit none
integer, dimension(5) :: a
integer :: ad1(1),d
a=(/7,9,9,7,5/)
d=1
ad1= maxloc(array=a,dim=d,back=.true.)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
