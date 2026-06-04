program main
integer a(1024), error_cnt

error_cnt = 0

!$omp parallel
!$omp sections
!$omp section
  do i=1, 256
    a(i) = i
  end do
!$omp section
  do i=257, 512
    a(i) = i
  end do
!$omp section
  do i=513, 768
    a(i) = i
  end do
!$omp section
  do i=769, 1024
    a(i) = i
  end do
!$omp end sections
!$omp end parallel

do i=1, 1024
  if(a(i) .ne. i) then
    error_cnt = error_cnt+1
  end if
end do

if(error_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "NG"
end if

end
