subroutine sub(a,b,n,m)
real(8),dimension(1:n) :: a,b
j = m
do i=1,n/2
  a(j) = a(j) + b(i)
  j = j + 1
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=4000
real(8),dimension(1:n) :: a,b
a = 1.
b = 2.
call sub(a,b,n,10)
if (int(sum(a+b)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a+b)), ians
endif
end program
