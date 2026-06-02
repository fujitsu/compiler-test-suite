subroutine s1
integer      k1,n2,m3(:)
pointer::n2(:)
allocatable m3
!$omp threadprivate(n2,k1,m3)
save
!$omp parallel
allocate(n2(2),m3(2))
!$omp end parallel
!$omp parallel copyin (m3,k1,n2)
!$omp single
k1=1
n2=2
m3=3
!$omp end single copyprivate(m3,k1,n2)
if (k1/=1) print *,1131
if (any(n2/=2)) print *,1132
if (any(m3/=3)) print *,1133
!$omp end parallel
end subroutine
call s1
print *,'pass'
end


