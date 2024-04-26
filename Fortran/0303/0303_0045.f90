subroutine sub(a1,a2,a3,a4,b,c,n)
real(8),dimension(1:n) :: a1,a2,a3,a4,b
integer,dimension(1:n) :: c
integer :: d1,d2,d3,d4

d1 = 1
d2 = 2
d3 = 3
d4 = 4

do i=1,n-10
  a1(i) = b(c(i) + d1)
  a2(i) = b(c(i) + d2)
  a3(i) = b(c(i) + d3)
  a4(i) = b(c(i) + d4)
enddo

end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians=17280
real(8),dimension(1:n) :: a1,a2,a3,a4,b
integer,dimension(1:n) :: c
integer :: res
a1 = 0.
a2 = 0.
a3 = 0.
a4 = 0.

b = (/(i,i=1,n)/)
c = (/(i,i=1,n)/)

call sub(a1,a2,a3,a4,b,c,n)

res = int(sum(a1)) + int(sum(a2)) + int(sum(a3)) + int(sum(a4))

if (res .eq. ians) then
  print *,"ok"
else
  print *,"ng", res, ians
endif
end program
