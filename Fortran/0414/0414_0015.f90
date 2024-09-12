program inline
call xxx()
contains
subroutine xxx()
  type strc
     real(kind=8),allocatable,dimension(:) :: ar1
  end type strc
  type(strc) rr1
  real(kind=8) ans(16)
  plus_one(i) = rr1%ar1(i) + dble(i)
  allocate(rr1%ar1(16))
  do i=1,16
     rr1%ar1(i) = dble(i)
     ans(i) = plus_one(1)
  end do
  if (ans(10) == 2.0) then
     print *,"pass"
  else
     print *,"NG",ans(10)
  end if
ans=1
rr1%ar1 = 0
  do i=1,16
     rr1%ar1(i) = dble(i)
     ans(i) = rr1%ar1(i) + dble(i)
  end do
  if (ans(10) == 20.0) then
  else
     print *,"NG",ans(10)
  end if
end subroutine
end program inline
