integer, dimension(5) :: a
integer :: ad1(1)
logical :: b
a=(/7,9,9,12,5/)
b=.false.
ad1= maxloc(a,1,mask=a<10,kind=4,back=b)
if(ad1(1).ne.2)print*,101
print*,"pass"
end
