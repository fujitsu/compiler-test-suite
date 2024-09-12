integer a
a=10
!$omp sections firstprivate(a) lastprivate(a)
if (a/=10) print *,11
a=20
!$omp end sections
if (a/=20) print *,21
call sub
print *,'pass'
end

subroutine sub
integer a
a=10
!$omp sections firstprivate(a) lastprivate(a)
if (a/=10) print *,11
a=20
!$omp end sections
if (a/=20) print *,21
end
