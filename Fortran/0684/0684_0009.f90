module mm
contains
 subroutine sub(i)
 if (i/=3)print *,'error'
 end subroutine
end
program main
use mm
integer a
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(a)
!$OMP DO SCHEDULE(DYNAMIC)
do a = 3,3
call sub(a)
end do
!$OMP END DO
!$OMP END PARALLEL
!$OMP PARALLEL PRIVATE(a)
!$OMP DO SCHEDULE(DYNAMIC,1)
do a = 3,3
call sub(a)
end do
!$OMP END DO NOWAIT
!$OMP END PARALLEL
print *,'pass'
end program main
