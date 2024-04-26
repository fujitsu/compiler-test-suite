integer,dimension(10)::x
x=(/1,2,3,4,5,6,7,8,9,10/)
call sub(x(1:5),x(5:9))
print *,'pass'
contains

subroutine sub(a,b)
integer,dimension(:)::a,b
integer :: i
write(1,*) a(1),a(2),a(3),a(4),a(5)
do i=1,5
a(i)=b(i)
end do
write(1,*) a(1),a(2),a(3),a(4),a(5)
end subroutine
end
