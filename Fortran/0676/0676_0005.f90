program main
  call sub(1)
end program main

subroutine init(array1,ans1,array2,ans2,array3,ans3)
  real(kind=4),dimension(20) :: array1,array2,array3
  real(kind=4),dimension(20) :: ans1,ans2,ans3
  do idx=1,20
     array1(idx) = real(idx)
     array2(idx) = real(idx)
     array3(idx) = real(idx)
     ans1(idx) = 0.0
     ans2(idx) = 0.0
     ans3(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag)
  integer(kind=4) :: flag
  real(kind=4),dimension(20) :: array1,array2,array3
  real(kind=4),dimension(20) :: ans1,ans2,ans3
  call init(array1,ans1,array2,ans2,array3,ans3)
  do idx=1,20
     if (flag .gt. 0) then
        ans1(idx) = array1(idx)
     endif
     if (flag .lt. 10) then
        ans2(idx) = array2(idx)
     end if
     if (flag .eq. 1) then
        ans3(idx) = array3(idx)
     endif
  end do
  print*,ans1,ans2,ans3
end subroutine sub
