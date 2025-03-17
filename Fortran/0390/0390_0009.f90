module mm
contains
subroutine sub(c,j)
character*(2) c(j)
!$OMP PARALLEL 
!$OMP do            firstprivate(c) 
do ii=1,1
if (any(lbound(c)/=1))print *,'fail'
end do
!$OMP END DO
!$OMP END PARALLEL
end subroutine
end
use mm
integer,parameter::j=5
character*(j) c(j)
call sub(c,j)
print *,'pass'
end
