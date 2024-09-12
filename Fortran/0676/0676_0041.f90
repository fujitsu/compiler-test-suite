program main
  call sub(1_4,1_8)
end program main

subroutine init(array, ans)
  real (kind=4),dimension(20) :: array
  real (kind=4),dimension(20) :: ans
  do idx=1,20
     array(idx) = real(idx)
     ans(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag1,flag2)
  integer(kind=4) :: flag1
  integer(kind=8) :: flag2
  real(kind=4),dimension(20) :: array
  real(kind=4),dimension(20) :: ans
  call init(array, ans)
  do idx=1,20
     if ((flag1 .eq. 1) .or. (flag2 .eq. 1)) then
        ans(idx) = array(idx)
     endif
  end do
  print*,ans
end subroutine sub
