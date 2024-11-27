module m1
integer,save,allocatable::      m3(:)
complex(8),allocatable,save::      t3(:)
!$omp threadprivate(t3,m3)
end module
subroutine s1
use m1
!$omp parallel
allocate(m3(2),t3(2))
!$omp end parallel
m3=0
t3=0
!$omp parallel copyin (m3,t3)
if (any(m3/=0)) print *,1132
if (any(abs(t3)>0.001)) print *,1134
!$omp single
m3=3
t3=(3,3)
!$omp end single copyprivate(v)
if (any(m3/=3)) print *,1131
if (any(abs(t3-(3,3))>0.001)) print *,1133
!$omp end parallel
end subroutine
call s1
print *,'pass'
end


