 subroutine s1
 common /x/ lhf
!$omp threadprivate(/x/)
if (lhf/=0) print *,101,lhf
if (lhf/=0) print '(z8.8)',lhf
end subroutine

call s1
print *,'pass'
end
