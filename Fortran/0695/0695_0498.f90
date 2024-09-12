subroutine init(xxx,n)
  real(8) xxx(1:3,1:30)
  integer(8)::i,j,n
  do i=1,30
     do j=1,3
        xxx(j,i)=j+i
     end do
  end do
  n=30
end subroutine init

program main
  real(8),target :: xxx(1:3,1:30)
  real(8) ans(1:32)
  real(8),pointer :: xxx_ptr
  integer(8) i,n

  call init(xxx,n)
  do i=1,n
     xxx_ptr => xxx(1,i)
     ans(i)   = xxx_ptr
     xxx_ptr => xxx(2,i)
     ans(i+1) = xxx_ptr
     ans(i+2) = xxx(3,i)
  end do
  print *,ans
end program main
