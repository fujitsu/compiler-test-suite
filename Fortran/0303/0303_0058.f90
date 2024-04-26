subroutine sub(a,n)
  real(8),dimension(1:n) :: a
  integer zero
  zero=int(sin(0.0))
  do i=1,n-5
     a(i*zero+1)=1
     a(i*zero+2)=1
  enddo
  return
end subroutine sub

program main
integer,parameter :: n=20
integer,parameter :: ians=2
real(8),dimension(1:n) :: a
integer :: res
a = 0.
call sub(a,n)

res = int(sum(a))

if (res .eq. ians) then
  print *,"ok"
else
  print *,"ng", res, ians
endif
end program
