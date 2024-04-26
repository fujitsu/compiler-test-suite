module m1
integer      k1,n2,m3
pointer::n2,n3(:),m3
common /cmn/ n2,k1,m3,n3
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1
!$omp parallel
allocate(n2,m3,n3(2))
!$omp end parallel
!$omp parallel copyin (n2,k1,m3,n3)
!$omp single
k1=1
n2=2
m3=3
n3=4
!$omp end single copyprivate(n2,k1,m3,n3)
if (k1/=1) print *,1131
if (   (n2/=2)) print *,1132
if (   (m3/=3)) print *,1133
if (   (n3(1)/=4)) print *,1134
if (   (n3(2)/=4)) print *,1135
!$omp end parallel
end subroutine
call s1
print *,'pass'
end
