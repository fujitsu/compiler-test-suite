subroutine init(xxx,n)
  real(4)   :: xxx(30)
  integer(8) ::i,n
  do i=1,30
     xxx(i)=i
  end do
  n = 10
end subroutine init

program main
  integer(8) ::i,n
  type str
     real(4) aaa,bbb,ccc,ddd
  end type str
  type(str) :: ans1(10), ans2(10)
  real(4)   :: xxx(30)

  do i=1,10
     ans1(i)%aaa = -1
     ans1(i)%bbb = -1
     ans1(i)%ccc = -1
     ans1(i)%ddd = -1
     ans2(i)%aaa = -2
     ans2(i)%bbb = -2
     ans2(i)%ccc = -2
     ans2(i)%ddd = -2
  end do

  call init(xxx,n)

  do i=1,n
     ans1(i)%aaa = xxx(i)
     ans1(i)%bbb = xxx(i+1)
     ans1(i)%ccc = xxx(i+2)
     ans1(i)%ddd = xxx(i+3)
     ans2(i)%aaa = xxx(i)
  end do
  print *,ans1
  print *,ans2
end program main
