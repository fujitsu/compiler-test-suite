program main
  implicit none
  real*8 aaa(800, 800), bbb(700, 700)
  real*8 para
  
  aaa(:, :) = 10.0
  bbb(:, :) = 1.d0
  para = 3.d0
  call interchg(para, aaa, bbb, 500, 500)
  write (*, *) aaa(500, 500)
end program main

subroutine interchg(para, aaa, bbb, imax, jmax)
  implicit none
  integer i, j, imax, jmax
  real*8 para, aaa(imax, jmax), bbb(imax, jmax)

  do i = 1, imax
     do j = 1, jmax
        aaa(i, j) = para * bbb(i, j)
     enddo
  enddo
  return
end subroutine interchg
