subroutine sub1(a1,b1,c1,a2,b2,c2,a3,b3,c3,n)
real(8),dimension(1:n,1:n) :: a1,b1,c1
real(8),dimension(1:n,1:n) :: a2,b2,c2
real(8),dimension(1:n,1:n) :: a3,b3,c3

!$omp parallel
!$omp do

 do j=1,n
  do i=1,n
   a1(i,j) = b1(i,j) * c1(i,j)
   a2(i,j) = b2(i,j) * c2(i,j)
   a3(i,j) = b3(i,j) * c3(i,j)
  enddo
 enddo

!$omp end do
!$omp end parallel

end subroutine sub1

subroutine sub2(a1,b1,c1,a2,b2,c2,a3,b3,c3,n)
real(8),dimension(1:n,1:n) :: a1,b1,c1
real(8),dimension(1:n,1:n) :: a2,b2,c2
real(8),dimension(1:n,1:n) :: a3,b3,c3

 do j=1,n
  do i=1,n
   a1(i,j) = a1(i,j) + b1(i,j) * c1(i,j)
   a2(i,j) = a2(i,j) + b2(i,j) * c2(i,j)
   a3(i,j) = a3(i,j) + b3(i,j) * c3(i,j)
  enddo
 enddo
end subroutine sub2

subroutine sub3(a1,b1,c1,a2,b2,c2,a3,b3,c3,n)
real(8),dimension(1:n,1:n) :: a1,b1,c1
real(8),dimension(1:n,1:n) :: a2,b2,c2
real(8),dimension(1:n,1:n) :: a3,b3,c3

 do j=1,n
  do i=1,n
   a1(i,j) = a1(i,j) + b1(i,j) * c1(i,j)
   a2(i,j) = b2(i,j) * c2(i,j)
   a3(i,j) = a3(i,j) + b3(i,j) * c3(i,j)
  enddo
 enddo
end subroutine sub3

program main
integer,parameter :: n=10
real(8),dimension(1:n,1:n) :: a1,b1,c1
real(8),dimension(1:n,1:n) :: a2,b2,c2
real(8),dimension(1:n,1:n) :: a3,b3,c3

a1 = 0.
b1 = 1.
c1 = 1.
a2 = 0.
b2 = 1.
c2 = 1.
a3 = 0.
b3 = 1.
c3 = 1.

call sub1(a1,b1,c1,a2,b2,c2,a3,b3,c3,n)

print *,sum(a1)
print *,sum(a2)
print *,sum(a3)

end program
