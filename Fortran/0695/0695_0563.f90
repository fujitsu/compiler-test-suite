subroutine init(xxx,yyy,ans1,ans2,n,mask)
  real(8)    xxx(20),yyy(20),ans1(20),ans2(20)
  integer(8) i,n,mask
  do i=1,20
     xxx(i) = i
     yyy(i) = i+1
  end do
  ans1 = -1
  ans2 = -2
  n = 10
  mask=1
end subroutine init

program main
  real(8) xxx(20), yyy(20), ans1(20), ans2(20)
  integer(8) i,n,mask

  call init(xxx,yyy,ans1,ans2,n,mask)

  do i=1,n,2
     ans1(i)   = xxx(i)
     if (mask .eq. i) then
        ans2(i)   = yyy(i)
        ans2(i+4) = yyy(i+1)
     end if
     ans1(i+4) = xxx(i+1)
  end do
  print *,ans1
  print *,ans2
end program main
