 subroutine s1
 integer,save:: k
!$omp threadprivate( k )
if (k/=0) print *,102,k
if (k/=0) print '(z8.8)',k
end subroutine

!$omp parallel
call s1
!$omp end parallel
print *,'pass'
end
