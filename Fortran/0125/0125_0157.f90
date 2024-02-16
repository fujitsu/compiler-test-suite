subroutine sub(a,b,n,m)
real(8),dimension(1:n) :: a,b
do i=m,1,-200
  a(i) = a(i) + b(i) + b(i-31) + b(i-32) + b(i-33) + b(i-100)
enddo
end subroutine
program main
integer,parameter :: n=10000
integer,parameter :: ians=10500
real(8),dimension(1:n) :: a,b
a = 1.
b = 2.
call sub(a,b,n,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
