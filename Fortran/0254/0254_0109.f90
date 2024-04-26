integer, dimension(5) :: a
integer :: ad1(1),d
logical(kind=2),allocatable :: b
a=(/7,9,9,2,5/)
allocate(b)
b=.true.
d=1
ad1= maxloc(array=a,dim=d,kind=4,back=b)
if(ad1(1).ne.3)print*,101
print*,"pass"
end
