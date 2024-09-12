program main
  call sub(1)
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
     if (flag .lt. 10) then
        ans(idx) = array(idx)
     endif
     array(idx) = array(idx)+ans(idx)
     if (flag .le. 1) then
        ans(idx) = array(idx)
     endif
     array(idx) = array(idx)+ans(idx)
     if (flag .gt. 0) then
        ans(idx) = array(idx)
     endif
     array(idx) = array(idx)+ans(idx)
     if (flag .ge. 1) then
        ans(idx) = array(idx)
     endif
     array(idx) = array(idx)+ans(idx)
     if (flag .eq. 1) then
        ans(idx) = array(idx)
     endif
     array(idx) = array(idx)+ans(idx)
     if (flag .ne. 100) then
        ans(idx) = array(idx)
     endif
     array(idx) = array(idx)+ans(idx)

  end do
  print*,ans
end subroutine sub
