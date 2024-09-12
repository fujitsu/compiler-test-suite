subroutine init(xxx,n)
  real(4) xxx(1:32)
  integer(8)::i,n
  do i=1,32
     xxx(i)=i
  end do
  n=30
end subroutine init

program main
  integer(8) i,n
  real(4) ans1(1:3,1:30), ans2(1:3,1:30), xxx(1:32)

  ans2 = -2
  call init(xxx,n)

  do i=1,n
     ans1(1,i) = xxx(i)
     ans1(2,i) = xxx(i+1)
     ans1(3,i) = xxx(i+2)
     ans2(1,i) = xxx(i)
  end do
  print *,ans1
  print *,ans2
end program main
