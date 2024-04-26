subroutine sub(a,b,m,n,nn)
real(8),dimension(1:n,1:n) :: a,b
integer,dimension(1:n) :: m
do j=1,nn
  do i=1,nn
    a(m(i),j) = b(m(i),j)
    a(m(i)+1,j) = b(m(i)+1,j)
    a(m(i)+2,j) = b(m(i)+2,j)
    a(m(i)+100,j) = b(m(i)+100,j)
    a(m(i)+101,j) = b(m(i)+101,j)
  enddo
enddo
end subroutine

program main
integer,parameter :: n=200
real(8),dimension(1:n,1:n) :: a,b
integer,dimension(1:n) :: m
integer iii
integer,parameter :: ians=80000
m = 1
a = 1.
b = 1.
call sub(a,b,m,n,50)
iii = int(sum(a+b), kind=4)
if (iii .eq. ians) then
  print *,"ok"
else
  print *,"ng"
endif
end program
