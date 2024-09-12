subroutine init(xxx,ans,n,mask)
  real(8)    xxx(20), ans(20)
  integer(8) i,n,mask
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
  mask = 5
end subroutine init

program main
  real(8) xxx(20), ans(20)
  integer(8) i,n,mask

  call init(xxx,ans,n,mask)

  do i=1,n,2
     ans(i)   = xxx(i)
     if (mask .lt. i) then
        ans(i+1) = 100
     end if
     ans(i+2) = xxx(i+2)
  end do
  print *,ans
end program main
