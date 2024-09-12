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
  real(4) ans(1:3,1:30), xxx(1:32)

  call init(xxx,n)

  do i=1,n
     ans(1,i) = xxx(i)
     ans(2,i) = xxx(i+1)
     ans(3,i) = xxx(i+2) + ans(1,i)
  end do
  print *,ans
end program main
