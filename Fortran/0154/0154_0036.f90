module  m1
common /cm0/ ky,kz
common /cmn/ kx,k1
common /cm2/ kw,kq
!$omp threadprivate(/cmn/)
contains
subroutine ss1
k1=1
!$omp parallel copyin (k1)
if (k1/=1) print *,1131
!$omp end parallel
call ss2
contains
subroutine ss2
k1=1
!$omp parallel copyin (k1)
if (k1/=1) print *,1131
!$omp end parallel
end subroutine ss2
end subroutine ss1

end
use m1
call ss1
print *,'pass'
end
