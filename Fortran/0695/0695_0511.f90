subroutine init(xxx,ans,n)
  real(8)    xxx(20), ans(20)
  integer(8) i,n
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
end subroutine init

program main
  real(8) xxx(20), ans(20)
  integer(8) i,n
  integer(8),volatile :: idx

  call init(xxx,ans,n)

  do i=1,n,2
     idx = i
     ans(i)   = xxx(idx)
     idx = i+1
     ans(i+4) = xxx(idx)
  end do
  print *,ans
end program main
