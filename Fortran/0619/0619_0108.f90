module mod
common /com/a
end
subroutine sub
use mod
common /com/b
!$omp parallel private(/com/,a)
a=1
!$omp end parallel
end
call sub
print *,'pass'
end
