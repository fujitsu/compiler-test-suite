subroutine sub1(a,b,n)
integer(8) :: n
real(8),dimension(1:n) :: a
real(8),dimension(1:12,1:n) :: b
real(8),parameter :: c1 = 1.
real(8),parameter :: c2 = 2.


do i=1,n
   a(i) = c1 + b(10,i)*(c2 + b(10,i))
enddo

end subroutine sub1

subroutine sub2(a,b,n)
integer(8) :: n
real(8),dimension(1:n) :: a
real(8),dimension(1:12,1:n) :: b
real(8),parameter :: c1 = 1.
real(8),parameter :: c2 = 2.


do i=1,n
   a(i) = c1 + b(10,i)*(c2 + b(10,i))
enddo

end subroutine sub2

subroutine sub3(a,b,n)
integer(8) :: n
real(8),dimension(1:n) :: a
real(8),dimension(1:12,1:n) :: b
real(8),parameter :: c1 = 1.
real(8),parameter :: c2 = 2.


do i=1,n
   a(i) = c1 + b(10,i)*(c2 + b(10,i))
enddo

end subroutine sub3

program main
integer(8),parameter :: n = 100
real(8),dimension(1:n) :: a
real(8),dimension(1:12,1:n) :: b
real(8),parameter :: ans = 4.

a = 0.
b = 1.

call sub1(a,b,n)
call sub2(a,b,n)
call sub3(a,b,n)

do i=1,n
   if (a(i) .ne. ans) then
      print *, "NG"
   endif
enddo

print *, "OK"

end program main
