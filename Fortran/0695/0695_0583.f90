subroutine init(ans,n,mask)
  real(8)   :: ans(30)
  integer(8):: n,mask
  n = 25
  ans = -1
  mask = 1
end subroutine init

program main
  integer(8) ::i,n,mask
  type str
     real(8) aaa,bbb,ccc,ddd,eee
  end type str
  type(str) :: xxx(30)
  real(8)   :: ans(30)

  do i=1,30
     xxx(i)%aaa=i
     xxx(i)%bbb=i+1
     xxx(i)%ccc=i+2
     xxx(i)%ddd=i+3
     xxx(i)%eee=i+4
  end do

  call init(ans,n,mask)

  do i=1,n
     ans(i)   = xxx(i)%aaa
     if (mask .eq. 1) then
        ans(i+4) = xxx(i)%eee
     end if
     ans(i+1) = xxx(i)%bbb
     ans(i+2) = xxx(i)%ccc
     ans(i+3) = xxx(i)%ddd
  end do
  print *,ans
end program main
