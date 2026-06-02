integer a, i
!$omp task
!$omp parallel  default(none) firstprivate(i,a)
a = 0
i = 1
!$omp critical
a = i + a
if(a/=1) print *,'err',a
!$omp end critical
if(a/=1) print *,'err',a
!$omp end parallel
print *,'pass'
!$omp endtask
end
