integer omp_get_thread_num, a, b
common /com/ a,b
a=1
b=2
!$omp parallel firstprivate(/com/)
if (a /= 1) print *,'1'
if (b /= 2) print *,'1'
a = omp_get_thread_num()
!$omp parallel private(/com/)
a = omp_get_thread_num()+1
!$omp end parallel
if (a /= omp_get_thread_num()) print *,'1'
!$omp end parallel
if (a /= 1) print *,'1'
if (b /= 2) print *,'1'
print *,'pass'
end
