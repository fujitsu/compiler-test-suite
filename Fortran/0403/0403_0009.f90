subroutine s1
      common /com1/ k,n
      common /com2/ kk,nn
!$omp threadprivate(/com1/,/com2/)

!$omp parallel
k=0
n=0
kk=0
nn=0
!$omp single
kk=1
nn=2
k=1
n=2
!$omp end single copyprivate(/com1/,/com2/)
if (k/=1) print *,101
if (n/=2) print *,102
if (kk/=1) print *,101
if (nn/=2) print *,102
!$omp end parallel
end

call s1
print *,'pass'
end
