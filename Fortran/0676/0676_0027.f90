program main
  call sub(.true._1)
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
  logical(kind=1) :: flag
  real(kind=4),dimension(20) :: array
  real(kind=4),dimension(20) :: ans
  call init(array, ans)
  do idx=1,20
     if (flag) then
        ans(idx) = array(idx)
     endif
  end do
  print*,ans
end subroutine sub

