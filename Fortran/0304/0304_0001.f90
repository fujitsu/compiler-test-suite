subroutine sub(a1,a2,a3,a4,b,c,n)
real(8),dimension(1:n) :: a1,a2,a3,a4,b
integer,dimension(1:n) :: c
integer :: d1,d2,d3,d4

d1 = 1
d2 = 2
d3 = 3
d4 = 4

do i=1,n-10
  a1(i) = b(c(i) + d1)
  a2(i) = b(c(i) + d2)
  a3(i) = b(c(i) + d3)
  a4(i) = b(c(i) + d4)
enddo

end subroutine

program main
integer,parameter :: n=50
real(8),dimension(1:n) :: a1,a2,a3,a4,b
integer,dimension(1:n) :: c
a1 = 0.
a2 = 0.
a3 = 0.
a4 = 0.
b = 2.
c = (/(i,i=1,n)/)

call sub(a1,a2,a3,a4,b,c,n)

print *, a1(n-10)
print *, a2(n-10)
print *, a3(n-10)
print *, a4(n-10)
end program
