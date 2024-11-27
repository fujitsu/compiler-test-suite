 subroutine s1
 common /x/ lhf
 integer,save:: k
!$omp threadprivate(/x/)
!$omp threadprivate( k )
if (lhf/=0) print *,101,lhf
if (lhf/=0) print '(z8.8)',lhf
if (k/=0) print *,102,k
if (k/=0) print '(z8.8)',k
end subroutine

call s1
print *,'pass'
end
