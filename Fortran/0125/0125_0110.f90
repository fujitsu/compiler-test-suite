subroutine sub(a,b,c,d,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c,d
do i=1,n,k
  a(c(d(i))) = a(c(d(i))) + b(c(d(i)))
enddo
end subroutine

program main
integer,parameter :: n=10000
integer,parameter :: ians=12000

real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c,d

a = 1.
b = 2.
c = (/(i,i=1,n)/)
d = (/(i,i=1,n)/)

call sub(a,b,c,d,n,10)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng:sub", " result =", int(sum(a)),"master =", ians
endif

end program
