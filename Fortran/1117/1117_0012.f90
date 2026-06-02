program main
integer a(1024), error_cnt

error_cnt = 0
a = 0

!$omp parallel
!$omp do private(a)
  do i=1, 1024
    a(i) = i
  end do
!$omp end do
!$omp end parallel

do i=1, 1024
  if(a(i) .ne. 0) then
    error_cnt = error_cnt+1
  end if
end do

if(error_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "PRIVATE clause is not active"
end if

end
