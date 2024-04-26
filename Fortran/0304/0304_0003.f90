subroutine sub(a,b,k,n,v)
integer(8),intent(in) :: k,n
real(8),dimension(1:n) :: a,b
real(8),intent(in) :: v
a(1:n) = b(k:k+n-1) + v
end subroutine

program main
integer(8),parameter :: n=100
real(8),dimension(1:n) :: a,b
a = 1.0_8
b = 1.0_8
call sub(a,b,1_8,n,2.0_8)
print *,sum(a)
end program
