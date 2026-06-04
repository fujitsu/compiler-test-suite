module m1
common /com/ i1,i2
!$omp threadprivate(/com/)
contains
subroutine sub1
common /com/ j1,j2
!$omp threadprivate(/com/)
if (loc(i1)/=loc(j1))print *,"fail"
if (loc(i2)/=loc(j2))print *,"fail"
!$omp parallel 
if (loc(i1)/=loc(j1))print *,"fail"
if (loc(i2)/=loc(j2))print *,"fail"
!$omp end parallel
end subroutine
subroutine sub2
common /com/ j1,j2
!$omp threadprivate(/com/)
if (loc(i1)/=loc(j1))print *,"fail"
if (loc(i2)/=loc(j2))print *,"fail"
call sub21
!$omp parallel 
if (loc(i1)/=loc(j1))print *,"fail"
if (loc(i2)/=loc(j2))print *,"fail"
!$omp end parallel
contains
subroutine sub21
common /com/ k1,k2
!$omp threadprivate(/com/)
if (loc(i1)/=loc(j1))print *,"fail"
if (loc(i2)/=loc(j2))print *,"fail"
if (loc(i1)/=loc(k1))print *,"fail"
if (loc(j2)/=loc(k2))print *,"fail"
!$omp parallel 
if (loc(i1)/=loc(j1))print *,"fail"
if (loc(i2)/=loc(j2))print *,"fail"
if (loc(i1)/=loc(k1))print *,"fail"
if (loc(j2)/=loc(k2))print *,"fail"
!$omp end parallel
end subroutine
end subroutine
end
use m1
 i1=101;i2=102
call sub1
call sub2
print *,'pass'
end
