parameter (n=4)
real(8),dimension(n,n)::a
a=reshape((/(j,j=1,n*n)/),(/n,n/))
call sub1(a(2:3,2),a(2:3,2:3),a(3:4,2))
if (any(abs((/a(3:4,2)/)-(/85.,137./))>0.001))print *,' error'
print *,'pass'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::y
real(8),dimension(:)::x
real(8),dimension(:),target::z
z=matmul(x,y)
end subroutine sub1
end
