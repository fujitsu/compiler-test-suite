subroutine init(xxx,ans,n,mask)
  real(8)    xxx(20), ans(20)
  integer(8) i,n,mask
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
  mask = 0
end subroutine init

program main
  real(8) xxx(20), ans(20)
  integer(8) i,n,idx,mask

  call init(xxx,ans,n,mask)

  do i=1,n,2
     idx = i
     if (mask .gt. idx) then
        idx = 1
     end if
     ans(i) = xxx(idx)
     ans(i+4) = xxx(idx+1)
  end do
  print *,ans
end program main
