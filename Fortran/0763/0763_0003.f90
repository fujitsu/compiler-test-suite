 subroutine s1
 common /x/ lhf
!$omp threadprivate(/x/)
if (lhf/=0) print *,101,lhf
if (lhf/=0) print '(z8.8)',lhf
end subroutine

!$omp parallel
call s1
!$omp end parallel
print *,'pass'
end
