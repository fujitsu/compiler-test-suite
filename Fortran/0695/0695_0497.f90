subroutine init(ans,n)
  real(8)   :: ans(30)
  integer(8):: n
  n = 25
  ans = -1
end subroutine init

program main
  integer(8) ::i,n
  type str
     real(8) aaa,bbb,ccc,ddd
  end type str
  type(str),target :: xxx(30)
  real(8) :: ans(30)
  real(8),pointer :: xxx_ptr

  do i=1,30
     xxx(i)%aaa=i
     xxx(i)%bbb=i+1
     xxx(i)%ccc=i+2
     xxx(i)%ddd=i+3
  end do

  call init(ans,n)

  do i=1,n
     xxx_ptr => xxx(i)%aaa
     ans(i)   = xxx_ptr
     ans(i+1) = xxx(i)%bbb
     ans(i+2) = xxx(i)%ccc
     xxx_ptr => xxx(i)%ddd
     ans(i+3) = xxx_ptr
  end do
  print *,ans
end program main
