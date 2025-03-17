integer omp_get_thread_num
integer,allocatable:: i(:,:)
integer error

error = 0
!$omp parallel private(i)
allocate(i(2,2))
i = 0
!$omp single
i = omp_get_thread_num()
k = omp_get_thread_num()
!$omp end single copyprivate(i)
if((k .ne. i(1,1)) .or. (k .ne. i(2,2))) then
!$omp atomic
 error = error+1
endif
deallocate(i)
!$omp end parallel

if(error .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif
end
