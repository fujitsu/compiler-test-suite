program main
integer a(1024), index, error_cnt

a = 0
index = 0
error_cnt = 0

!$omp parallel sections shared(a, index) private(i)
  do i=1, 256
!$omp atomic
    index = index+1
    a(i) = index
  end do
!$omp section
  do i=257, 512
!$omp atomic
    index = index+1
    a(i) = index
  end do
!$omp section
  do i=513, 768
!$omp atomic
    index = index+1
    a(i) = index
  end do
!$omp section
  do i=769, 1024
!$omp atomic
    index = index+1
    a(i) = index
  end do
!$omp end parallel sections

if(index .ne. 1024) then
  write(*,*) "SHARED is not active"
  error_cnt = 1
end if

do i=1, 1024
  if(a(i) .eq. 0) then
    write(*,*) "PARALLEL SECTIONS is not active"
    error_cnt = 1
    exit
  end if
end do

if(error_cnt .eq. 0) then
  print *,'pass'
end if

end
