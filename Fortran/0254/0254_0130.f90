integer, dimension(5) :: a
integer :: ad1(1),d
logical(kind=2),allocatable :: b
a=(/7,1,1,2,5/)
allocate(b)
b=.true.
d=1
ad1= minloc(array=a,dim=d,kind=4,back=b)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
