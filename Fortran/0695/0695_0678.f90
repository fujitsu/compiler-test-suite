subroutine init(xxx,n,mask)
  real(8) xxx(1:33)
  integer(8)::i,n,mask
  do i=1,33
     xxx(i)=i
  end do
  n = 30
  mask = 5
end subroutine init

program main
  integer(8) i,n,mask
  real(8) ans(1:4,1:30), xxx(1:33)

  call init(xxx,n,mask)

  do i=1,n
     ans(1,i) = xxx(i)
     ans(2,i) = xxx(i+1)
     if (mask .gt. i) then
        ans(1,i) = 0
     end if
     ans(3,i) = xxx(i+2)
     ans(4,i) = xxx(i+3)
  end do
  print *,ans
end program main
