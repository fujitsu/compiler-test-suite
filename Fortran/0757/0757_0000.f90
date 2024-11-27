subroutine s1
common /cmn/ n1,n2
!$omp parallel
n1=1;n2=2
call s21
call s22
!$omp end parallel
if (n1/=1) print *,3011
if (n2/=2) print *,3021
contains
subroutine s21
common /cmn/ n1,n2
if (n1/=1) print *,1011
if (n2/=2) print *,1021
end subroutine
subroutine s22
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
if (n1/=1) print *,101
if (n2/=2) print *,102
end subroutine
end
call s1
print *,'pass'
end
