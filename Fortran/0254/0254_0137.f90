integer, dimension(5) :: a
integer :: ad1(1)
logical :: b
a=(/7,2,2,1,5/)
b=.false.
ad1= minloc(a,1,mask=a>1,kind=4,back=b)
if(ad1(1).ne.2)print*,101
print*,"pass"
end
