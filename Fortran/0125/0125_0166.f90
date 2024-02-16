subroutine sub(a,b,c,d,e,f,n)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c,d,e,f
do i=1,n
  a(i) = a(c(d(i))+e(f(i))) + b(i)
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=3000
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c,d,e,f
a = 1.
b = 2.
c = (/(i,i=1,n)/)
d = (/(i,i=1,n)/)
e = 0
f = (/(i,i=1,n)/)
call sub(a,b,c,d,e,f,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
