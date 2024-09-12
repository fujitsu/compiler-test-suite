subroutine init(xxx,ans,n,mask)
  real(8)    xxx(20), ans(20)
  integer(8) i,n,mask
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
  mask = 1
end subroutine init

program main
  real(8),target :: xxx(20)
  real(8) ans(20)
  real(8),pointer :: xxx_ptr
  integer(8) i,n,mask

  call init(xxx,ans,n,mask)
  do i=1,n,2
     if (mask .eq. i) then
        xxx_ptr => xxx(i)
        ans(i+2) = xxx_ptr
     end if
     ans(i) = xxx(i)
     xxx_ptr => xxx(i+1)
     ans(i+4) = xxx_ptr
  end do
  print *,ans
end program main
