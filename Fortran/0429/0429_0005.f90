subroutine sub1()
integer a
a=10
!$omp sections lastprivate(a) firstprivate(a)
  if (a/=10) print *,11
  a=20
!$omp end sections
if (a/=20) print *,21
end

integer a
a=10
!$omp sections lastprivate(a) firstprivate(a)
  if (a/=10) print *,12
  a=20
!$omp end sections
if (a/=20) print *,22
call sub1
print *,'pass'
end
