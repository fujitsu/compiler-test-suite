subroutine init(xxx,ans1,ans2,n)
  real(4)    xxx(20), ans1(20), ans2(20)
  integer(8) i,n
  do i=1,20
     xxx(i) = i
  end do
  ans1 = -1
  ans2 = -2
  n = 10
end subroutine init

program main
  real(4) xxx(20), ans1(20), ans2(20)
  integer(8) i,n

  call init(xxx,ans1,ans2,n)

  do i=1,n,2
     ans1(i)   = xxx(i)
     ans2(i)   = xxx(i)
     ans1(i+1) = xxx(i+2)
  end do
  print *,ans1
  print *,ans2
end program main
