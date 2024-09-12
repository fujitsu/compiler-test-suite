subroutine init(xxx,n)
  real(8) xxx(1:5,1:30)
  integer(8)::i,j,n
  do i=1,30
     do j=1,5
        xxx(j,i)=j+i
     end do
  end do
  n=30
end subroutine init

program main
  integer(8) i,n
  real(8) xxx(1:5,1:30), ans(1:33)

  call init(xxx,n)

  do i=1,n
     ans(i)   = xxx(1,i)
     ans(i+3) = xxx(5,i)
     ans(i+1) = xxx(2,i)
     ans(i+2) = xxx(3,i)
  end do
  print *,ans
end program main
