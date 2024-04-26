subroutine sub(a,b,c,rc,rcm,n)
real(8),dimension(1:n) :: a,b,c
real(8) :: rc
real(8),dimension(1:n) :: rcm
do i=1,n
   if (rc .gt. 0._8) then
      a(i) = a(i) + c(i)
   endif
   if (rcm(1) .gt. 0._8) then
      b(i) = b(i) - c(i)
   endif
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a,b,c
real(8),parameter :: ans =500.000000000000_8
real(8),parameter :: error=  0.00005_8
real(8),dimension(1:n) :: rcm
real(8) :: rc
a = 2.0_8
b = 3.0_8
c = 4.0_8
rcm = 1.0_8
rc = 1.0_8
call sub(a,b,c,rc,rcm,n)

if (abs(sum(a+b) - ans) .gt. error) then
  print *,"ng", sum(a+b), ans 
else
  print *,"ok"
endif
end program
