subroutine s2
      common /com2/ k,n
!$omp threadprivate(/com2/)

k=0
n=0
!$omp parallel 
!$omp single
k=1
n=2
!$omp end single copyprivate(k,n)
if (k/=1) print *,111
if (n/=2) print *,112
!$omp end parallel
if (k/=1) print *,121
if (n/=2) print *,122
end
call s2
print *,'pass'
      end
