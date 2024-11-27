 subroutine s1
 integer,save:: k
!$omp threadprivate( k )
if (k/=0) print *,102,k
if (k/=0) print '(z8.8)',k
end subroutine

call s1
print *,'pass'
end
