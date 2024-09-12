program main
  call sub(1)
end program main

subroutine init(array1, array2, array3, ans1, ans2, ans3)
  real(kind=4), dimension(20) :: array1
  real(kind=8), dimension(20) :: array2
  real(kind=16),dimension(20) :: array3
  real(kind=4), dimension(20) :: ans1
  real(kind=8), dimension(20) :: ans2
  real(kind=16),dimension(20) :: ans3
  do idx=1,20
     array1(idx) = real(idx)
     array2(idx) = dble(idx)
     array3(idx) = dble(idx)
     ans1(idx) = 0.0
     ans2(idx) = 0.0
     ans3(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag)
  integer(kind=4) :: flag
  real(kind=4) ,dimension(20)  :: array1
  real(kind=8) ,dimension(20)  :: array2
  real(kind=16),dimension(20) :: array3
  real(kind=4) ,dimension(20)  :: ans1
  real(kind=8) ,dimension(20)  :: ans2
  real(kind=16),dimension(20) :: ans3
  call init(array1, array2, array3, ans1, ans2, ans3)
  do idx=1,20
     if (flag .eq. 1) then
        ans1(idx) = array1(idx)
        ans2(idx) = array2(idx)
        ans3(idx) = array3(idx)
     endif
  end do
  print*,ans1
  print*,ans2
  print*,ans3
end subroutine sub
