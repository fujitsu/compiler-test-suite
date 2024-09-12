subroutine init(ans,n,mask)
  real(8)   :: ans(30)
  integer(8):: n,mask
  n = 25
  ans = -1
  mask = 0
end subroutine init

program main
  integer(8) ::i,n,idx,mask
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

  call init(ans,n,mask)

  do i=1,n
     idx = i
     ans(i)   = xxx(idx)%aaa
     if (mask .gt. i) then
        idx = 1
     end if
     ans(i+1) = xxx(idx)%bbb
     ans(i+2) = xxx(idx)%ccc
     ans(i+3) = xxx(idx)%ddd
  end do
  print *,ans
end program main
