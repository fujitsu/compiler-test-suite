i = 10
call sub(i)
end

subroutine sub(i)
integer i, error

error = 0

!$ call omp_set_dynamic(.false.)
!$ call omp_set_num_threads(4)

!$omp parallel private(i)
i = 10000
!$omp single
i = 3
!$omp end single copyprivate(i)
if( i .ne. 3 ) then
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

