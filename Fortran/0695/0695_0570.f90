subroutine init(ans1,ans2,n,mask)
  real(8)   :: ans1(30),ans2(30)
  integer(8):: n,mask
  n = 25
  ans1 = -1
  ans2 = -2
  mask = 1
end subroutine init

program main
  integer(8) ::i,n,mask
  type str
     real(8) aaa,bbb,ccc,ddd
  end type str
  type(str) :: xxx(30),yyy(30)
  real(8)   :: ans1(30),ans2(30)

  do i=1,30
     xxx(i)%aaa=i
     xxx(i)%bbb=i+1
     xxx(i)%ccc=i+2
     xxx(i)%ddd=i+3
     yyy(i)%aaa=i+5
     yyy(i)%bbb=i+10
     yyy(i)%ccc=i+20
     yyy(i)%ddd=i+30
  end do

  call init(ans1,ans2,n,mask)

  do i=1,n
     if (mask .eq. i) then
        ans2(i)   = yyy(i)%aaa
        ans2(i+1) = yyy(i)%bbb
        ans2(i+2) = yyy(i)%ccc
        ans2(i+3) = yyy(i)%ddd
     end if
     ans1(i)   = xxx(i)%aaa
     ans1(i+1) = xxx(i)%bbb
     ans1(i+2) = xxx(i)%ccc
     ans1(i+3) = xxx(i)%ddd
  end do
  print *,ans1
  print *,ans2
end program main
