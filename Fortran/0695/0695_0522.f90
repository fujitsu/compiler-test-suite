subroutine init(xxx,n,mask)
  real(8) xxx(1:3,1:30)
  integer(8)::i,j,n,mask
  do i=1,30
     do j=1,3
        xxx(j,i)=j+i
     end do
  end do
  n=30
  mask=0
end subroutine init

program main
  integer(8) i,n,mask,idx
  real(8) xxx(1:3,1:30), ans(1:32)

  call init(xxx,n,mask)

  do i=1,n
     idx = i
     ans(i)   = xxx(1,idx)
     if (mask .gt. i) then
        idx = 1
     end if
     ans(i+1) = xxx(2,idx)
     ans(i+2) = xxx(3,idx)
  end do
  print *,ans
end program main
