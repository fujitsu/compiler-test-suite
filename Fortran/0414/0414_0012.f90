module mod
     real(kind=8),dimension(:),allocatable :: ar1
contains
real function plus_one(i)
  integer i
  plus_one = ar1(i) + dble(i)
  call xxx()
end function plus_one
subroutine xxx()
end subroutine
end
program inline
use mod
  real(kind=8) ans(16)
  allocate(ar1(16))
  do i=1,16
     ar1(i) = dble(i)
     ans(i) = plus_one(1)
  end do
  if (ans(10) == 2.0) then
     print *,"pass"
  else
     print *,"NG",ans(10)
  endif
end program inline