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
  integer(8) i,n,mask
  real(8) xxx(1:3,1:30), ans(1:33)
  ans = -1
  call init(xxx,n,mask)

  do i=1,n
     if (mask .eq. i) then
        ans(i+3) = xxx(2,i)
     end if
     ans(i)   = xxx(1,i)
     ans(i+1) = xxx(2,i)
     ans(i+2) = xxx(3,i)
  end do
  print *,ans
end program main
