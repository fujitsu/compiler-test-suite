subroutine sub(a,b,n,k)
real(8),dimension(1:n) :: a,b
do i=1,n,k
  a(i) = a(i) + b(i) + b(i+1)
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=3000
real(8),dimension(1:n) :: a,b
integer :: k
a = 1.
b = 2.
k = 2
call sub(a,b,n,k)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
