program main
  integer a(1024), err

  a = 0

!$omp parallel
!$omp sections lastprivate(a), private(i)
!$omp section
  a = 0
  do i=1, 128
     a(i) = i
  end do
!$omp section
  a = 0
  do i=129, 256
     a(i) = i
  end do
!$omp section
  a = 0
  do i=257, 384
     a(i) = i
  end do
!$omp section
  a = 0
  do i=385, 512
     a(i) = i
  end do
!$omp section
  a = 0
  do i=513, 640
     a(i) = i
  end do
!$omp section
  a = 0
  do i=641, 768
     a(i) = i
  end do
!$omp section
  a = 0
  do i=769, 896
     a(i) = i
  end do
!$omp section
  a = 0
  do i=897, 1024
     a(i) = i
  end do
!$omp end sections
!$omp end parallel

  err = 0
  do i=1, 1024
    if(i .lt. 897) then
      if(a(i) .ne. 0) err = 1
    else
      if(a(i) .ne. i) err = 1
    end if
  end do

  if(err .eq. 0) then
     write(*,*) "ok"
  else
     write(*,*) "LASTPRIVATE clause is not active"
  end if

end program main
