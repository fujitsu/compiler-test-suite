subroutine init(xxx,n,mask)
  real(8)   :: xxx(30)
  integer(8) ::i,n,mask
  do i=1,30
     xxx(i)=i
  end do
  n = 10
  mask = 5
end subroutine init

program main
  integer(8) ::i,n,mask
  type str
     real(8) aaa,bbb,ccc
  end type str
  type(str) :: ans(10)
  real(8)   :: xxx(30)

  do i=1,10
     ans(i)%aaa = -1
     ans(i)%bbb = -1
     ans(i)%ccc = -1
  end do

  call init(xxx,n,mask)

  do i=1,n
     if (mask .lt. i) then
        ans(i)%ccc = 0
     end if
     ans(i)%aaa = xxx(i)
     ans(i)%bbb = xxx(i+1)
     ans(i)%ccc = xxx(i+2)
  end do
  print *,ans
end program main
