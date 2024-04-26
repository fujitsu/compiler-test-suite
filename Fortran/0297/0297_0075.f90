subroutine sub(a,b,c,n)
real(8),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = exp(b(i)) + exp(c(i))
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a,b,c
real(8),parameter :: ans=7468.368695633193
real(8),parameter :: error=  0.00005
a = 2.0
b = 3.0
c = 4.0
call sub(a,b,c,n)

if (abs(sum(a) - ans) .gt. error) then
  print *,"ng", sum(a), ans 
else
  print *,"ok"
endif
end program
