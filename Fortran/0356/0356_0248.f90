program main
  implicit none
  real*8 aaa(80, 80), bbb(70, 70), ccc(60, 60), ddd(60, 60)
  real*8 para
  
  aaa(:, :) = 10.0
  bbb(:, :) = 1.d0
  ccc(:, :) = 2.d0
  ddd(:, :) = 3.d0
  para = 3.d0
  call interchg(para, aaa, bbb, ccc, ddd, 50, 50)
  write (*, *) aaa(50, 50)
end program main

subroutine interchg(para, aaa, bbb, ccc, ddd, imax, jmax)
  implicit none
  integer i, j, imax, jmax
  real*8 para
  real*8 aaa(imax, jmax), bbb(imax, jmax), ccc(imax, jmax), ddd(imax, jmax)

  do j = 1, jmax
     do i = 1, imax
        aaa(i, j) = para * bbb(j, i) + ccc(j, i) * ddd(j, i)
     enddo
  enddo
  return
end subroutine interchg
