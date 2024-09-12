subroutine init(ans,n)
  real(8)   :: ans(30)
  integer(8):: n
  n = 25
  ans = -1
end subroutine init

program main
  implicit none
  integer(8) ::i,n
  type str
     real(8) aaa,bbb,ccc,ddd
  end type str
  type(str) :: xxx(30)
  real(8)   :: ans(30)

  do i=1,30
     xxx(i)%aaa=i
     xxx(i)%bbb=i+1
     xxx(i)%ccc=i+2
     xxx(i)%ddd=i+3
  end do

  call init(ans,n)

  do i=1,n
     ans(i)   = xxx(i)%aaa
     ans(i+1) = xxx(i)%bbb
     xxx(i)%ddd = xxx(i)%ddd + 1
     ans(i+2) = xxx(i)%ccc
     ans(i+3) = xxx(i)%ddd
  end do
  print *,ans
end program main
