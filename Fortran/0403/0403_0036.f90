subroutine s1
integer,save,allocatable::      m3(:)
complex(8),allocatable,save::      t3(:)
!$omp threadprivate(t3,m3)
!$omp parallel
allocate(m3(2),t3(2))
m3=0
t3=0
!$omp end parallel
m3=3
t3=(3,3)
!$omp parallel copyin (m3,t3)
if (any(m3/=3)) print *,1133
if (any(abs(t3-(3,3))>0.001)) print *,1133
!$omp end parallel
end subroutine
call s1
print *,'pass'
end


