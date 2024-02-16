subroutine sub1(a,b,c,scalar,n1,n2)
  real(8),dimension(n1,n2) :: a,b,c
  real(8) :: scalar
  do k=1,100
     do j=1,n2
        do i=1,n1
           a(i,j) = b(i,j) + scalar * c(i,j)
        enddo
     enddo
  enddo
end subroutine sub1

subroutine sub2(a,b,c,scalar,n1,n2)
  real(8),dimension(n1,n2) :: a,b,c
  real(8) :: scalar
  do k=1,100
     do j=1,n2
        do i=1,n1,20
           a(i,j) = b(i,j) + scalar * c(i,j)
           a(i+17,j) = b(i+17,j) + scalar * c(i+17,j)
           a(i+18,j) = b(i+18,j) + scalar * c(i+18,j)
        enddo
     enddo
  enddo
end subroutine sub2

program main
integer,parameter :: n=100
integer,parameter :: ians=20000
integer,parameter :: ians1=3000
real(8),dimension(1:n,1:n) :: a,b,c
real(8),dimension(1:n,1:n) :: a1,b1,c1
real(8) :: scalar

a = 0.
b = 1.
c = 1.
a1 = 0.
b1 = 1.
c1 = 1.
scalar = 1.

call sub1(a,b,c,scalar,n,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif

call sub2(a1,b1,c1,scalar,n,n)
if (int(sum(a1)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng", int(sum(a1)), ians1
endif

end program
