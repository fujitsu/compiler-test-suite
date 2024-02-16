subroutine fma(r, a, b, c)
  implicit none
  real*8::r
  real*8, dimension(1:10000)::a, b, c
  integer::i
  
!$omp parallel do reduction(+:r)
  do i = 1, 10000
     r = r + a(i) * b(i) + c(i)
  end do
!$omp end parallel do
end subroutine fma

program main
  implicit none
  real*8::r
  real*8, dimension(1:10000)::a, b, c
  integer::i
  real*8, parameter::margin = 1.0E-10
  real*8, parameter::base = 1742.8505533053_8
  
  r = 0.0

  do i = 1, 10000
     a(i) = 0.000017 * i
     b(i) = 0.000034 * i
     c(i) = 0.000031 * i
  end do

  call fma(r, a, b, c)

  if (abs(r - base) .ge. margin) then
     print *, "NG"
  else
     print *, "OK"
  end if
end program main
