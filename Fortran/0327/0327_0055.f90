complex,dimension(10)::x
x=(/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10)/)
call sub(x(1:5),x(5:9))
print *,'pass'
contains

subroutine sub(a,b)
complex,dimension(:),target::a,b
integer :: i
write(10,*) a(1),a(2),a(3),a(4),a(5)
do i=1,5
a(i)=b(i)
end do
write(10,*) a(1),a(2),a(3),a(4),a(5)
end subroutine
end
