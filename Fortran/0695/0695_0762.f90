subroutine init(xxx,n)
  real(8)   :: xxx(30)
  integer(8) ::i,n
  do i=1,30
     xxx(i)=i
  end do
  n = 10
end subroutine init

program main
  integer(8) ::i,n
  type str
     real(8) aaa,bbb,ccc,ddd
  end type str
  type(str) :: ans(10)
  real(8)   :: xxx(30)

  do i=1,10
     ans(i)%aaa = -1
     ans(i)%bbb = -1
     ans(i)%ccc = -1
     ans(i)%ddd = -1
  end do

  call init(xxx,n)

  do i=1,n
     ans(i)%aaa = xxx(i)
     xxx(i) = i
     ans(i)%bbb = xxx(i+1)
     ans(i)%ccc = xxx(i+2)
     ans(i)%ddd = xxx(i+3)
  end do
  print *,ans
  print *,xxx
end program main
