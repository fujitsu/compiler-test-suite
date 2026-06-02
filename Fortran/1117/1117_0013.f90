program main
integer a(1024), error_cnt

error_cnt = 0
a = 100

!$omp parallel
!$omp do firstprivate(a)
  do i=1, 1024
    if(a(i) .ne. 100) then
      error_cnt = error_cnt+1
    end if
    a(i) = 0
  end do
!$omp end do
!$omp end parallel

do i=1, 1024
  if(a(i) .ne. 100) then
    error_cnt = error_cnt + 1
  end if
end do

if(error_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "FIRSTPRIVATE clause is not active"
end if

end
