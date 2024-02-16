subroutine sub(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
  if (a(i) > 10.0) then
     goto 10
  endif
enddo
10 continue
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=3000
real(8),dimension(1:n) :: a,b
a = 1.
b = 2.
call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
