subroutine init(xxx,ans,n,mask)
  real(4)    xxx(20), ans(20)
  integer(8) i,n,mask
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
  mask = 1
end subroutine init

program main
  real(4) xxx(20), ans(20)
  integer(8) i,n,mask

  call init(xxx,ans,n,mask)

  do i=1,n,2
     ans(i)   = xxx(i)
     ans(i+1) = xxx(i+2)
     if (mask .eq. i) then
        ans(i) = 100
     end if
  end do
  print *,ans
end program main
