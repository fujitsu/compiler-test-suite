integer,dimension(10,10)::x
integer::i,j
do i=1,10
  do j=1,10
    x(j,i)=j*i
  end do
end do
call sub(x(1:5,1),x(5:9,1))
print *,'pass'
contains

subroutine sub(a,b)
integer,dimension(:),target::a,b
integer :: i
write(24,*) a(1),a(2),a(3),a(4),a(5)
do i=1,5
a(i)=b(i)
end do
write(24,*) a(1),a(2),a(3),a(4),a(5)
end subroutine
end
