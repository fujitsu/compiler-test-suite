subroutine init(xxx,n)
  real(8) xxx(1:33)
  integer(8)::i,n
  do i=1,33
     xxx(i)=i
  end do
  n = 4
end subroutine init

program main
  integer(8) i,n
  real(8) ans(1:4,1:30), xxx(1:33)

  ans = -1
  call init(xxx,n)

  do i=1,n
     ans(1,i) = xxx(i)
     ans(2,i) = xxx(i+1)
     ans(i,2) = 0
     ans(3,i) = xxx(i+2)
     ans(4,i) = xxx(i+3)
  end do
  print *,ans
end program main
