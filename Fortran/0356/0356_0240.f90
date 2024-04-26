program main
  implicit none
  real*8 aaa(800, 800), bbb(700, 700)
  real*8 sum
  
  aaa(:, :) = 10.0
  bbb(:, :) = 1.d0
  call interchg(sum, aaa, bbb, 500, 500)
  write (*, *) sum
end program main

subroutine interchg(sum, aaa, bbb, imax, jmax)
  implicit none
  integer i, j, imax, jmax
  real*8 sum, aaa(imax, jmax), bbb(imax, jmax)

  sum = 0
  do j = 1, jmax
     do i = 1, imax
        sum = sum + aaa(i, j) * bbb(j, i)
     enddo
  enddo
  return
end subroutine interchg
