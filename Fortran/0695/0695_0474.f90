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
  real(8) xxx(20), ans(20), tmp(20)
  integer(8) i,n

  call init(xxx,ans,n)

  do i=1,n,2
     ans(i)   = xxx(i)
     ans(i+4) = xxx(i+1)
     tmp(i) = i
  end do
  print *,ans
  print *,tmp(1)
end program main
