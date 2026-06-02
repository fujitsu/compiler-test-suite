program main
  integer a, b, c, d, e, f

  a = 0
  b = 0
  c = 0
  d = 0
  e = 0
  f = 0

!$omp parallel sections
  do i=1, 1000
     a = a+i
  end do
!$omp section
  do i=1, 1000
     b = b+i
  end do
!$omp section
  do i=1, 1000
     c = c+i
  end do
!$omp section
  do i=1, 1000
     d = d+i
  end do
!$omp section
  do i=1, 1000
     e = e+i
  end do
!$omp section
  do i=1, 1000
     f = f+i
  end do
!$omp end parallel sections

  if((a .ne. 500500) .or. (b .ne. 500500) .or. (c .ne. 500500) .or. &
       (d .ne. 500500) .or. (e .ne. 500500) .or. (f .ne. 500500)) then
     write(*,*) "NG", a, b, c, d, e, f
  else
     write(*,*) "ok"
  end if

end program main
