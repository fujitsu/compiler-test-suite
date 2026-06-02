program main
  real x(1000), y(1000), p_pi, s_pi

  call random_number(x)
  call random_number(y)

  j = 0
!$omp parallel 
!$omp single
  call mont(x, y, j)
!$omp end single
!$omp end parallel
  p_pi = j*4.0/1000.0

  j = 0
  call mont(x, y, j)
  s_pi = j*4.0/1000.0

  if(p_pi .ne. s_pi) then
    print *, 'NG'
  else
    print *, 'ok'
  end if

end program main

subroutine mont(x, y, j)
  real x(1000), y(1000)
  integer j
  real sqrt

!$omp parallel do
  do i=1, 1000
    if(sqrt(x(i)**2+y(i)**2) .lt. 1.0) then
!$omp atomic
      j = j+1
    end if
  end do
!$omp end parallel do
end subroutine
