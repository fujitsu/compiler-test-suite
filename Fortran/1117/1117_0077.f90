program main
  real x(1000), y(1000), p_pi, s_pi
  logical mont

  call random_number(x)
  call random_number(y)

  j = 0
!$omp parallel do firstprivate(x, y), reduction(+:j)
  do i=1, 1000
    if(mont(x(i), y(i))) then
      j = j+1
    endif
    x(i) = 0
    y(i) = 0
  end do
!$omp end parallel do
  p_pi = j*4.0/1000.0

  j = 0
  do i=1, 1000
    if(mont(x(i), y(i))) then
      j = j+1
    endif
  end do
  s_pi = j*4.0/1000.0

  if(p_pi .ne. s_pi) then
    print *, 'NG'
  else
    print *, 'ok'
  end if

end program main

logical function mont(x, y)
  real x, y
  real sqrt

  if(sqrt(x**2+y**2) .lt. 1.0) then
     mont = .true.
  else 
     mont = .false.
  end if
end function
