subroutine init(ans,n)
  real(8)   ans(20)
  integer(8) n
  ans = -1
  n = 10
end subroutine init

program main
  real(8) xxx(20), ans(20)
  integer(8) i,n
  common /com/ x

  do i=1,20
     xxx(i) = i
  end do

  call init(ans,n)

  do i=1,n,2
     ans(i)   = xxx(i)
     ans(i+4) = xxx(i+1)
  end do
  print *,ans
end program main
