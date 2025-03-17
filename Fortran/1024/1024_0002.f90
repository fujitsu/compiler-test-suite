integer,pointer:: p
integer,target:: i
integer omp_get_thread_num
integer error

i = 1000

error = 0
!$omp parallel private(p)
!$omp single
i = omp_get_thread_num()
p=>i
!$omp end single copyprivate(p)
if(p .ne. i) then
  print *, p
!$omp atomic
  error = error+1
endif
!$omp end parallel

if(error .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif
end
