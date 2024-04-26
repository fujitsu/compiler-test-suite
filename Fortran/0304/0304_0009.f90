subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo
end subroutine

program main
integer,parameter :: n=1000
real(8),dimension(1:n) :: a,b

a = 0.0
b = 1.0
call sub1(a,b,n)
print *,sum(a)

end program
