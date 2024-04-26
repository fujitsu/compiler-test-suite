subroutine sub(a,b,c,n)
real(4),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n
  a(c(i)) = a(c(i)) * b(i)
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=2000
real(4),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
a = 1.
b = 2.
c = (/(i,i=1,n)/)
call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
