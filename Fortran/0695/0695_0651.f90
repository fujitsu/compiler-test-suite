subroutine init(xxx,n,mask)
  real(8) xxx(1:32)
  integer(8)::i,n,mask
  do i=1,32
     xxx(i)=i
  end do
  n = 30
  mask = 5
end subroutine init

program main
  integer(8) i,n,mask
  real(8) ans(1:3,1:30), xxx(1:32)

  call init(xxx,n,mask)

  do i=1,n
     ans(1,i) = xxx(i)
     ans(2,i) = xxx(i+1)
     if (mask .gt. i) then
        ans(2,i) = 0
     end if
     ans(3,i) = xxx(i+2)
  end do
  print *,ans
end program main