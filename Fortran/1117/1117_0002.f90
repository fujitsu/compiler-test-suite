program main
  integer a(128), error_cnt
  integer OMP_GET_THREAD_NUM

  error_cnt = 0
  a = -1

!$omp parallel private(a)
  a = 0
!$omp do
  do i=1, 128
     a(i) = OMP_GET_THREAD_NUM()
  end do
!$omp end do
!$omp end parallel

  do i=1, 128
     if(a(i) .ne. -1) then
        error_cnt = error_cnt+1
     end if
  end do

if(error_cnt .eq. 0) then
   write(*,*) "ok"
else
   write(*,*) "PRIVATE clause is not active"
end if

end program main
