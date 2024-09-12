subroutine init(xxx,ans,n,val)
  real(8)    xxx(20), ans(20)
  integer(8) i,n,val
  do i=1,20
     xxx(i) = i
  end do
  ans = -1
  n = 10
  val = 1
end subroutine init

program main
  real(8) xxx(20), ans(20)
  integer(8) i,n,val

  call init(xxx,ans,n,val)

  do i=1,n,2
     if (val .ne. i) then
        xxx(i+1) = 0
     end if
     ans(i)   = xxx(i)
     ans(i+4) = xxx(i+1)
  end do
  print *,ans
end program main
