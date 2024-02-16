subroutine private(r, a)
  implicit none
  real*8, dimension(1:10000)::r, a
  integer::i, j

!$omp parallel do private(j)
  do i = 1, 10000
     j = i
     r(i) = a(i) * j
  end do
!$omp end parallel do
end subroutine private

program main
  implicit none
  real*8, dimension(1:10000)::a, r
  real*8::ans
  integer::i, counter
  real*8, parameter::k = 0.00012_8
  real*8, parameter::margin = 1.0E-10
  real*8, parameter::base = 6300.6600715398_8

  do i = 1, 10000
     counter = mod(i, 2)
     
     if (counter == 0) then
        a(i) = 1.1 * k
     else
        a(i) = 1.0 * k
     end if
  end do

  r = 0.0
  call private(r, a)
  ans = sum(r)
  
  if (abs(ans - base) .ge. margin) then
     print *, "NG"
  else
     print *, "OK"
  end if
end program main
