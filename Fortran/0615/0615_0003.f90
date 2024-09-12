type xxx
  integer a, b
end type
type(xxx) s
integer error

!$ call omp_set_dynamic(.false.)
!$ call omp_set_num_threads(4)

error = 0
!$omp parallel private(s)
s = xxx(1, 2)
!$omp single
  s = xxx(3, 4)
!$omp end single copyprivate(s)
if(s%a .ne. 3 .or. s%b .ne. 4) then
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

