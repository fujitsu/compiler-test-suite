subroutine sub(a,b,c,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b,c

do k=1,n
 do j=1,n
  do i=1,n
    a(i) = c(i,i,k) + b(i,j,k)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b,c

a = 1.
b = 1.
c = 1.
call sub(a,b,c,n)
print *,sum(a)
end program
