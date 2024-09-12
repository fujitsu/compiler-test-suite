subroutine init(n)
  integer(8) n
  n=30
end subroutine init

program main
  integer(8) i,j,n
  real(8) xxx(1:3,1:30), ans(1:32)
  common /com/ x

  do i=1,30
     do j=1,3
        xxx(j,i)=j+i
     end do
  end do

  call init(n)

  do i=1,n
     ans(i)   = xxx(1,i)
     ans(i+1) = xxx(2,i)
     ans(i+2) = xxx(3,i)
  end do
  print *,ans
end program main
