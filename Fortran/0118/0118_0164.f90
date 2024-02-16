subroutine private(r, a, b)
  implicit none
  real*8, dimension(1:10000)::r, a, b
  integer::i, j

!$omp parallel do private(j)
  do i = 1, 10000
     j = i
     r(i) = a(j) / b(j) - 0.101 / b(j)
  end do
!$omp end parallel do
end subroutine private

program main
  implicit none
  real*8::ans
  real*8, dimension(1:10000)::r, a, b
  integer::i
  real*8, parameter::margin = 1.0E-9
  real*8, parameter::base = 9997.92474063336_8
  
  r = 0.0

  do i = 1, 10000
     a(i) = 10.111 * i
     b(i) = 10.113 * i
  end do

  call private(r, a, b)
  ans = sum(r)

  if (abs(ans - base) .ge. margin) then
     print *, "NG"
  else
     print *, "OK"
  end if
end program main
