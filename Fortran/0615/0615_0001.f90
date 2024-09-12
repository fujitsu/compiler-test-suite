integer i(1)

i = 10
call sub(i, 1)
end

subroutine sub(i, n)
integer i(n)
integer error 

!$ call omp_set_dynamic(.false.)
!$ call omp_set_num_threads(4)

error = 0
!$omp parallel private(i)
i = 20
!$omp single
  i = 11
!$omp end single copyprivate(i) 
do j=1, n
  if(i(j) .ne. 11) then
!$omp atomic
    error = error+1
  endif
enddo
!$omp end parallel

if(error .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif
end


