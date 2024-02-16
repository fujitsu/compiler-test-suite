subroutine sub(a,b,c,d,e,f,g,n)
real(8),dimension(1:n) :: a,b,c,d,f
real(8),dimension(1:n,1:n) :: e
integer(8),dimension(1:n) :: g

do i=1,n
  a(i) = b(i) + c(i) + d(i) + e(1,i) + f(g(i))
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=5000
real(8),dimension(1:n) :: a,b,c,d,f
real(8),dimension(1:n,1:n) :: e
integer(8),dimension(1:n) :: g
a = 1.
b = 1.
c = 1.
d = 1.
e = 1.
f = 1.
g = (/(i,i=1,n)/)

call sub(a,b,c,d,e,f,g,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
