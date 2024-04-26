subroutine sub(a,b,m,n,nn)
real(8),dimension(1:n,1:n) :: a,b
integer,dimension(1:n) :: m
do j=1,nn
  do i=1,nn
    ii = m(i) 
    a(ii,j) = b(ii,j)
    ii = ii + 1
    a(ii,j) = b(ii,j)
    a(ii+1,j) = b(ii+1,j)
    ii = ii + 80
    a(ii,j) = b(ii+2,j)
    a(ii+20,j) = b(ii+5,j)
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
