program main
integer a(1024), index, error_cnt

a = 0
index = 0
error_cnt = 0

!$omp parallel sections shared(a, index)
  do i=1, 256
!$omp atomic
    index = index+1
    a(i) = index
  end do
!$omp section
  do ii=257, 512
!$omp atomic
    index = index+1
    a(ii) = index
  end do
!$omp section
  do iii=513, 768
!$omp atomic
    index = index+1
    a(iii) = index
  end do
!$omp section
  do iiii=769, 1024
!$omp atomic
    index = index+1
    a(iiii) = index
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
