subroutine s1
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
n1=1;n2=2
call s2
contains
subroutine s2
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
if (n1/=1) print *,101
if (n2/=2) print *,102
end subroutine
end
call s1
print *,'pass'
end
