 subroutine s1
 integer,save:: k
!$omp threadprivate( k )
!$omp parallel
if (k/=0) print *,102,k
if (k/=0) print '(z8.8)',k
!$omp end parallel
end subroutine

call s1
print *,'pass'
end
