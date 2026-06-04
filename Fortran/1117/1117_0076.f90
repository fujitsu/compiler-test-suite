program main
  real x(1000), y(1000), p_pi, s_pi

  call random_number(x)
  call random_number(y)

  j = 0
!$omp parallel do firstprivate(x, y)
  do i=1, 1000
    call mont(x(i), y(i), j)
  end do
!$omp end parallel do
  p_pi = j*4.0/1000.0

  j = 0
  do i=1, 1000
    call mont(x(i), y(i), j)
  end do
  s_pi = j*4.0/1000.0

  if(p_pi .ne. s_pi) then
    print *, 'NG'
  else
    print *, 'ok'
  end if

end program main

subroutine mont(x, y, j)
  real x, y
  integer j
  real sqrt

  if(sqrt(x**2+y**2) .lt. 1.0) then
!$omp atomic
     j = j+1
  end if
end subroutine
