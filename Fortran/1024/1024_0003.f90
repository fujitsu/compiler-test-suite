integer,allocatable:: a(:)
integer omp_get_thread_num
integer error

error = 0
!$omp parallel private(a)
allocate(a(10))
a(1) = -1
!$omp single
a = omp_get_thread_num()
i = omp_get_thread_num()
!$omp end single copyprivate(a)
if((a(1) .ne. i).or.(a(5).ne.i)) then
!$omp atomic
  error = error+1
endif
deallocate(a)
!$omp end parallel

if(error .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif
end
