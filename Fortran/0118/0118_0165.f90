subroutine test(r, a, b)
  implicit none
  real*8::r
  real*8, dimension(1:10000)::a, b
  integer::i

!$omp parallel do reduction(+:r)
  do i = 1, 10000
     r = r + a(i) / b(i) - 0.101 / b(i)
  end do
!$omp end parallel do
end subroutine test

program main
  implicit none
  real*8::r
  real*8, dimension(1:10000)::a, b
  integer::i
  real*8, parameter::margin = 1.0E-10
  real*8, parameter::base = 9997.9247406333_8
  
  r = 0.0

  do i = 1, 10000
     a(i) = 10.111 * i
     b(i) = 10.113 * i
  end do

  call test(r, a, b)

  if (abs(r - base) .ge. margin) then
     print *, "NG"
  else
     print *, "OK"
  end if
end program main
