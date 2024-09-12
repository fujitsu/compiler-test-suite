subroutine init(xxx,yyy,ans1,ans2,n)
  real(8) xxx(1:3,1:30),yyy(1:3,1:30), ans1(1:32), ans2(1:32)
  integer(8)::i,j,n
  do i=1,30
     do j=1,3
        xxx(j,i)=j+i
        yyy(j,i)=j+i+1
     end do
  end do
  n=30
  ans1=-1
  ans2=-2
end subroutine init

program main
  integer(8) i,n
  real(8) xxx(1:3,1:30), yyy(1:3,1:30), ans1(1:32), ans2(1:32)

  call init(xxx,yyy,ans1,ans2,n)

  do i=1,n
     ans1(i)   = xxx(1,i)
     ans2(i)   = yyy(1,i)
     ans2(i+1) = yyy(2,i)
     ans1(i+1) = xxx(2,i)
     ans1(i+2) = xxx(3,i)
     ans2(i+2) = yyy(3,i)
  end do
  print *,ans1
  print *,ans2
end program main
