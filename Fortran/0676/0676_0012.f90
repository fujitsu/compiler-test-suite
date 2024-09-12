program main
  call sub(1_1,1_1)
end program main

subroutine init(array,ans)
  real(kind=4),dimension(20) :: array
  real(kind=4),dimension(20) :: ans
  do idx=1,20
     array(idx) = real(idx)
     ans(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag, nnn)
  integer(kind=1) :: flag
  integer(kind=1) :: nnn
  real(kind=4),dimension(20) :: array
  real(kind=4),dimension(20) :: ans
  call init(array,ans)
  do idx=1,20
     if (flag .eq. nnn) then
        ans(idx)= array(idx)
     endif
  end do
  print*,ans
end subroutine sub

