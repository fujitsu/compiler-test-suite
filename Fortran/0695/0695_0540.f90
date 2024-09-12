subroutine init(xxx,n,yyy)
  real(8) xxx(1:3,1:30),yyy(30)
  integer(8)::i,j,n
  do i=1,30
     do j=1,3
        xxx(j,i)=j+i
     end do
  end do
  n=30
  yyy=0
end subroutine init

program main
  integer(8) i,n
  real(8) xxx(1:3,1:30), ans(1:32), yyy(30)

  call init(xxx,n,yyy)

  do i=1,n
     ans(i)   = xxx(1,i)
     yyy(i)   = xxx(3,i)
     ans(i+1) = xxx(2,i)
     ans(i+2) = xxx(3,i)
  end do
  print *,ans,yyy
end program main
