program main
  call sub(.true._4)
end program main

subroutine init(array, ans)
  real (kind=16),dimension(20) :: array
  real (kind=16),dimension(20) :: ans
  do idx=1,20
     array(idx) = dble(idx)
     ans(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag)
  logical(kind=4) :: flag
  real(kind=16),dimension(20) :: array
  real(kind=16),dimension(20) :: ans
  call init(array, ans)
  do idx=1,20
     if (flag) then
        ans(idx) = array(idx)
     endif
  end do
  print*,ans
end subroutine sub

