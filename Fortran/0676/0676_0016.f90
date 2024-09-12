program main
  call sub(1_2)
end program main

subroutine init(array, ans)
  real (kind=8),dimension(20) :: array
  real (kind=8),dimension(20) :: ans
  do idx=1,20
     array(idx) = dble(idx)
     ans(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag)
  integer(kind=2) :: flag
  real(kind=8),dimension(20) :: array
  real(kind=8),dimension(20) :: ans
  call init(array, ans)
  do idx=1,20
     if (flag .eq. 1) then
        ans(idx) = array(idx)
     endif
  end do
  print*,ans
end subroutine sub
