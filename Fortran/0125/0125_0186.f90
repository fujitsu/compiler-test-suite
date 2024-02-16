subroutine sub(a,b,c,n,k,x)
  real*8 a(n),b(n),c(n)
  integer ::k,x

  do i = 1,n
     if (k == x) then
        a(i) = b(i)
     else
        a(i) = c(i)
     endif
  enddo

end subroutine

program main
integer,parameter :: n=10
real(8),dimension(1:n) :: a,b,c

a = 0.
b = 1.
c = 1.

call sub(a,b,c,n,10,10)

print *,sum(a)

end program
