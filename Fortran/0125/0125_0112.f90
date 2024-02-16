subroutine sub(a,b,c,d,e,f,g,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c,d,e,f,g
do i=1,n,k
  a(c(d(e(f(g(i)))))) = a(c(d(e(f(g(i)))))) + b(c(d(e(f(g(i))))))
enddo
end subroutine

program main
integer,parameter :: n=10000
integer,parameter :: ians=10200

real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c,d,e,f,g

a = 1.
b = 2.
c = (/(i,i=1,n)/)
d = (/(i,i=n,1,-1)/)
e = (/(i,i=1,n)/)
f = (/(i,i=n,1,-1)/)
g = (/(i,i=1,n)/)

call sub(a,b,c,d,e,f,g,n,100)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng:sub", " result =", int(sum(a)),"master =", ians
endif

end program
