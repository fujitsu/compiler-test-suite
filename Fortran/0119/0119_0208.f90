subroutine sub(a,b,n,x1,x2,x3,x4,x5,d)
integer(8) :: n
real(8),dimension(1:n) :: a,x1,x2,x3,x4,x5
real(8),dimension(1:12,1:n) :: b,d
real(8),parameter :: c1 = 1.
real(8),parameter :: c2 = 2.

do i=1,n
   a(i) = c1 + b(10,i)*(c2 + b(10,i)) + (x1(i)+x2(i)+x3(i)+x4(i)+x5(i)) + d(10,i)
enddo

end subroutine sub

program main
integer(8),parameter :: n = 100
real(8),dimension(1:n) :: a,x1,x2,x3,x4,x5
real(8),dimension(1:12,1:n) :: b,d
real(8),parameter :: ans = 9.

a = 0.
b = 1.
x1 = 1.
x2 = 1.
x3 = 1.
x4 = 1.
x5 = 1.
d = 0.

call sub(a,b,n,x1,x2,x3,x4,x5,d)

do i=1,n
   if (a(i) .ne. ans) then
      print *, "NG"
   endif
enddo

print *, "OK"

end program main
