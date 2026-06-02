program main
integer a(1024), error_cnt

error_cnt = 0

!$omp parallel shared(a)
!$omp do
  do i=1, 1024
    a(i) = i
  end do
!$omp end do
!$omp end parallel

do i=1, 1024
  if(a(i) .ne. i) then
    error_cnt = error_cnt+1
  end if
end do

if(error_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "SHARED clause is not active"
end if

end
