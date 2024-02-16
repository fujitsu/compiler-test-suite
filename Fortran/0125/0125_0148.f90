subroutine sub(a,b,n,m)
real(8),dimension(1:n) :: a,b
logical,dimension(1:n) :: m
do i=1,n
  if (m(i)) then
    a(i) = a(i) + b(i)
  endif
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=2000
real(8),dimension(1:n) :: a,b
logical,dimension(1:n) :: m
a = 1.
b = 2.
m(1:n/2) = .false.
m(n/2+1:n) = .true.
call sub(a,b,n,m)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
