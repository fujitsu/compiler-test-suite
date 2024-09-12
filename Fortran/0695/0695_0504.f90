subroutine init(xxx,n,mask)
  real(8) xxx(1:3,1:30)
  integer(8)::i,j,n,mask
  do i=1,30
     do j=1,3
        xxx(j,i)=j+i
     end do
  end do
  n=30
  mask=1
end subroutine init

program main
  real(8),target :: xxx(1:3,1:30)
  real(8) ans(1:32)
  real(8),pointer :: xxx_ptr
  integer(8) i,n,mask

  call init(xxx,n,mask)
  do i=1,n
     xxx_ptr => xxx(1,i)
     ans(i)   = xxx_ptr
     if (mask .eq. i) then
        xxx_ptr => xxx(2,i)
        ans(i+1) = xxx_ptr
     end if
     xxx_ptr => xxx(3,i)
     ans(i+2) = xxx_ptr
  end do
  print *,ans
end program main
