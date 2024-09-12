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
  type(str) :: ans(10)
  real(4)   :: xxx(30)
  real(4),volatile :: tmp(10)

  do i=1,10
     ans(i)%aaa = -1
     ans(i)%bbb = -1
     ans(i)%ccc = -1
     ans(i)%ddd = -1
  end do

  call init(xxx,n)

  do i=1,n
     ans(i)%aaa = xxx(i)
     ans(i)%bbb = xxx(i+1)
     ans(i)%ccc = xxx(i+2)
     tmp(i) = i
     ans(i)%ddd = xxx(i+3)
  end do
  print *,ans
  print *,tmp
end program main