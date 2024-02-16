subroutine sub(a,b,n)
real(8),dimension(1:n+16) :: a,b
do i=1,n
  a(i) = b(i)
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=2016
real(8),dimension(1:n+16) :: a,b
a = 1.
b = 2.
call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
