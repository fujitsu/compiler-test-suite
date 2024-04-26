implicit none
integer, dimension(5) :: a
integer :: ad1(1),d
logical (kind=1) :: b
a=(/7,9,9,12,5/)
b=.true.
d=1
ad1= maxloc(back=b,array=a,dim=d,mask=a<10)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
