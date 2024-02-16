subroutine sub(a,b,c,d,n)
real(8),dimension(1:n) :: a,d
integer,dimension(1:n) :: b,c
do i=1,n
  a(b(c(i))) = a(b(c(i))) + d(i)
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=1040
real(8),dimension(1:n) :: a,d
integer,dimension(1:n) :: b,c
a = 1.
d = 2.
b = (/(i,i=1,n)/)
c = (/(i,i=1,n)/)
call sub(a,b,c,d,20)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
