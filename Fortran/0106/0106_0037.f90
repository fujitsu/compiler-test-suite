program inline
  type strc
     real(kind=8),allocatable,dimension(:) :: ar1
  end type strc
  type(strc) rr1
  real(kind=8) ans(16)
  allocate(rr1%ar1(16))
  do i=1,16
     rr1%ar1(i) = dble(i)
     ans(i) = plus_one(1)
  end do
  if (ans(10) == 2.0) then
     print *,"pass"
  else
     print *,"NG",ans(10)
  endif
contains
  real function plus_one(i)
    integer i
    plus_one = rr1%ar1(i) + dble(i)
  end function plus_one
end program inline
