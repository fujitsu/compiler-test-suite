program main
integer a(1024), error_cnt

error_cnt = 0

do i=1, 1024
  a(i) = i
end do

!$omp parallel default(shared)
!$omp do
  do i=1, 1024
    a(i) = 0
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
  write(*,*) "DEFAULT(SHARED) clause is not active"
end if

end
