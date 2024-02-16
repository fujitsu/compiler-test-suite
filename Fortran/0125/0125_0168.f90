subroutine sub(a,b,c1,c2,c3,n)
real(8),dimension(1:n,1:n,1:n) :: a
real(8),dimension(1:n) :: b
integer,dimension(1:n) :: c1,c2,c3
do i=1,n
  a(c1(i),c2(i),c3(i)) = a(c1(i),c2(i),c3(i)) + b(c1(c2(c3(i))))
enddo
end subroutine
program main
integer,parameter :: n=100
integer,parameter :: ians=1000200
real(8),dimension(1:n,1:n,1:n) :: a
real(8),dimension(1:n) :: b
integer,dimension(1:n) :: c1,c2,c3
a = 1.
b = 2.
c1 = (/(i,i=1,n)/)
c2 = (/(i,i=1,n)/)
c3 = (/(i,i=1,n)/)
call sub(a,b,c1,c2,c3,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
