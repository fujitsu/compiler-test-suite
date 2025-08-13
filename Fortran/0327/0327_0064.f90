complex,dimension(10,10)::x
integer::i,j
do i=1,10
  do j=1,10
    x(j,i)=(10,10)
  end do
end do
call sub(x(1:10:2,1),x(1,1:5))
print *,'pass:pass'
contains

subroutine sub(a,b)
complex,dimension(:)::a,b
integer :: i
write(16,*) a(1),a(2),a(3),a(4),a(5)
do i=1,5
a(i)=b(i)
end do
write(16,*) a(1),a(2),a(3),a(4),a(5)
end subroutine
end
