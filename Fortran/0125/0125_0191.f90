subroutine sub(a,b,n,nn)
real(8),dimension(1:n+nn) :: a,b
do i=1,n,100
  a(i) = a(i) + b(i)
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: nn=320
integer,parameter :: ians=1340
real(8),dimension(1:n+nn) :: a,b
a = 1.
b = 2.
call sub(a,b,n,nn)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
