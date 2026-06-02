module m1
integer::z
common /cmn/ k1,n2
pointer::n2(:)
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1,only:z
common /cmn/ k1,n2
pointer::n2(:)
!$omp threadprivate(/cmn/)
k1=1
!$omp parallel 
allocate(n2(2))
!$omp end parallel
n2=2
!$omp parallel copyin (/cmn/)
if (k1/=1) print *,1131
if (any(n2/=2)) print *,1132
!$omp end parallel
end subroutine
call s1
print *,'pass'
end


