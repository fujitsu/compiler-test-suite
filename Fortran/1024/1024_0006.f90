integer omp_get_thread_num
complex,pointer:: i(:,:)
complex k
integer error

error = 0
!$omp parallel private(i)
!$omp single
allocate(i(2,2))
i = cmplx(omp_get_thread_num(),0)
k = cmplx(omp_get_thread_num(),0)
!$omp end single copyprivate(i)
if((k .ne. i(1,1)) .or. (k .ne. i(2,2))) then
!$omp atomic
 error = error+1
endif
!$omp barrier
!$omp master
deallocate(i)
!$omp end master
!$omp end parallel

if(error .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif
end
