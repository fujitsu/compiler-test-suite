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

  call init(xxx,ans,n)

  do i=1,n,2
     ans(i) = xxx(i)
     xxx(i) = i
     ans(i+1) = xxx(i+2)
  end do
  print *,ans
  print *,xxx
end program main