subroutine sub(a,b,m,n,nn)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: m
  do i=1,nn
    a(m(i)) = b(m(i))
    a(m(i)+100) = b(m(i)+100)
  enddo
end subroutine

program main
integer,parameter :: n=500
real(8),dimension(1:n,1:n) :: a,b
integer,dimension(1:n) :: m
integer iii
integer,parameter :: ians=250002
m = 1
a = 0.
b = 1.
call sub(a,b,m,n,400)
iii = int(sum(a+b), kind=4)
if (iii .eq. ians) then
  print *,"ok"
else
  print *,"ng", iii, ians
endif
end program
