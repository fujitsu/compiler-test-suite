integer :: x
x=10
call sub(x,x)
print *,'pass'
contains

subroutine sub(i,j)
integer :: i,s,j
s=0
do i=1,10
 s=s+i
end do
write(1,*) j+s
end subroutine
end
