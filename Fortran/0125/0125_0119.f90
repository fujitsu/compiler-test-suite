subroutine sub(a,b,c,n,m,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
j=0
do i=1,m,k
  j = j + 1
  a(c(j)) = a(c(j)) + b(c(j))
  j = j + 3
  a(c(j)) = a(c(j)) + b(c(j))
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=2000
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
a = 1.
b = 2.
c = (/(i,i=1,n)/)

call sub(a,b,c,n,500,2)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
