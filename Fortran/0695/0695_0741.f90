subroutine init(xxx,ans,n)
  real(4)    xxx(20), ans(20)
  integer(8) i,n
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
end subroutine init

program main
  real(4) xxx(20), ans(20), tmp(20)
  integer(8) i,n

  tmp = -1
  call init(xxx,ans,n)

  do i=1,n,2
     ans(i)   = xxx(i)
     ans(i+1) = xxx(i+2) + ans(i)
     tmp(i) = ans(i)
  end do
  print *,ans
  print *,tmp
end program main