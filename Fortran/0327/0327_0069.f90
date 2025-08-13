integer,dimension(10,10)::x
integer::i,j
do i=1,10
  do j=1,10
    x(j,i)=j*i
  end do
end do
call sub(x(1,1:5),x(1,5:9))
print *,'pass'
contains

subroutine sub(a,b)
integer,dimension(:)::a,b
integer :: i
write(21,*) a(1),a(2),a(3),a(4),a(5)
do i=1,5
a(i)=b(i)
end do
write(21,*) a(1),a(2),a(3),a(4),a(5)
end subroutine
end
