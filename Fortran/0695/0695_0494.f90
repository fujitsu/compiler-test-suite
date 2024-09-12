subroutine init(ans,n,val)
  real(8)   :: ans(30)
  integer(8)::n,val
  n = 25
  ans = -1
  val = 0
end subroutine init

program main
  integer(8) ::i,n,val
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

  call init(ans,n,val)

  do i=1,n
     if (val .ne. i) then
        xxx(i)%ddd = xxx(i)%ddd + 1
     end if
     ans(i)   = xxx(i)%aaa
     ans(i+1) = xxx(i)%bbb
     ans(i+2) = xxx(i)%ccc
     ans(i+3) = xxx(i)%ddd
  end do
  print *,ans
end program main
