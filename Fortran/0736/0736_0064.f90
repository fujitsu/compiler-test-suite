integer,allocatable,dimension(:)::x
do i=1,3
allocate(x(3:4));x=(/3,4/)
if (any(x/=(/3,4/)))write(6,*) "NG"
if (ubound(x,dim=1)/=4)write(6,*) "NG"
deallocate(x)
end do
 print *,'pass'
 end
