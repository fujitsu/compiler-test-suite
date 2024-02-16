program main
  real*4, dimension(10) :: fa = (/ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0 /)
  real*4, dimension(10) :: fb = (/ 10.0, 9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0 /)
  real*4, dimension(10) :: fc = (/ 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0 /)
  real*4, dimension(10) :: fd
  real*4, dimension(10) :: fans = (/ 2.00000000, -0.777777791, 4.00000000, -0.428571403, 6.00000000, 0.200000048, 8.00000000, 1.66666675, 10.0000000, 9.00000000 /)

  real*8, dimension(10) :: da = (/ 1.0d0,2.0d0,3.0d0,4.0d0,5.0d0,6.0d0,7.0d0,8.0d0,9.0d0,10.0d0 /)
  real*8, dimension(10) :: db = (/ 10.0d0,9.0d0,8.0d0,7.0d0,6.0d0,5.0d0,4.0d0,3.0d0,2.0d0,1.0d0 /)
  real*8, dimension(10) :: dc = (/ 1.0d0,-1.0d0,1.0d0,-1.0d0,1.0d0,-1.0d0,1.0d0,-1.0d0,1.0d0,-1.0d0 /)
  real*8, dimension(10) :: dd
  real*8, dimension(10) :: dans = (/ 2.000000000000000, -0.7777777777777778, 4.000000000000000, -0.4285714285714286, 6.000000000000000, 0.2000000000000000, 8.000000000000000, 1.666666666666667, 10.00000000000000, 9.000000000000000 /) 
  integer ng
  ng=0

  call test_extended_div_r4(fa, fb, fc, fd, 10)
  call test_extended_div_r8(da, db, dc, dd, 10)
  
  do i=1,10
     if (abs(fd(i)-fans(i)) > 0.000001) then
        ng=1
     end if
     if (dabs(dd(i)-dans(i)) > 0.000001) then
        ng=1
     endif
  end do
  if (ng == 0) then
     print*,"OK"
  else
     print*,"NG"
  endif
end program main

subroutine test_extended_div_r4(a, b, c, d, n)
  integer :: n
  real*4, dimension(n) :: a, b, c, d
  integer :: i
  
  do i=1, n-1, 2
     d(i) = a(i) + c(i)
     d(i+1) = (a(i+1) / b(i+1)) + c(i+1)
  end do
end subroutine test_extended_div_r4

subroutine test_extended_div_r8(a, b, c, d, n)
  integer :: n
  real*8, dimension(n) :: a, b, c, d
  integer :: i
  
  do i=1, n-1, 2
     d(i) = a(i) + c(i)
     d(i+1) = (a(i+1) / b(i+1)) + c(i+1)
  end do
end subroutine test_extended_div_r8
