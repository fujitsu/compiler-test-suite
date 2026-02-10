module m
contains
subroutine sub(a,b)
integer,dimension(:),target::a,b
integer :: i
print *,a(1),a(2),a(3),a(4),a(5)
entry ent(a,b)
do i=1,5
a(i)=b(i)
end do
print *,a(1),a(2),a(3),a(4),a(5)
end subroutine
end

use m
integer,dimension(10,10,10)::x
integer::i,j,k
do i=1,10
  do j=1,10
    do k=1,10
      x(k,j,i)=k*j*i
    end do
  end do
end do
call sub(x(1:5,2,3),x(5:9,2,3))
call ent(x(1:5,2,3),x(5:9,2,3))
print *,'pass'
end
