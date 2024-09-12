program main
  call sub(1_4)
end program main

subroutine init(array, ans)
  real (kind=4),dimension(20) :: array
  real (kind=4),dimension(20) :: ans
  do idx=1,20
     array(idx) = real(idx)
     ans(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag)
  integer(kind=4) :: flag
  real(kind=4),dimension(20) :: array
  real(kind=4),dimension(20) :: ans
  call init(array, ans)
  do idx=1,20
     if (.not. ((flag .eq. 0) .and. (flag .eq. 10))) then
        ans(idx) = array(idx)
     endif
  end do
  print*,ans
end subroutine sub
