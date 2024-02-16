subroutine sub1(a1,b1,c1,a2,b2,c2,n)
real(8),dimension(1:n,1:n) :: a1,b1,c1
real(8),dimension(1:n,1:n) :: a2,b2,c2

!$omp parallel
!$omp do

 do i=1,n
  do j=1,n
   a1(i,j) = b1(i,j) * c1(i,j)
  enddo
 enddo

!$omp end do
!$omp end parallel

 do i=1,n
  do j=1,n
   a2(i,j) = b2(i,j) * c2(i,j)
  enddo
 enddo


end subroutine sub1

program main
integer,parameter :: n=10
real(8),dimension(1:n,1:n) :: a1,b1,c1
real(8),dimension(1:n,1:n) :: a2,b2,c2

a1 = 0.
b1 = 1.
c1 = 1.
a2 = 0.
b2 = 1.
c2 = 1.

call sub1(a1,b1,c1,a2,b2,c2,n)

print *,sum(a1)
print *,sum(a2)

end program
