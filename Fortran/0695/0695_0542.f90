subroutine init(xxx,ans,n,yyy)
  real(8)    xxx(20), ans(20),yyy(20)
  integer(8) i,n
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
  yyy = 0
end subroutine init

program main
  real(8) xxx(20), ans(20),yyy(20)
  integer(8) i,n

  call init(xxx,ans,n,yyy)

  do i=1,n,2
     yyy(i)   = xxx(i+1)
     ans(i)   = xxx(i)
     ans(i+4) = xxx(i+1)
  end do
  print *,ans,yyy
end program main
