call omp_set_num_threads(1)
k=1
!$omp parallel firstprivate(k)
if (k/=1) print *,101
k=2
!$omp do
      do i=1,1
if (k/=2) print *,102
k=3
if (k/=3) print *,103
      enddo
!$omp enddo
if (k/=3) print *,104,k
!$omp endparallel
if (k/=1) print *,105
print *,'pass'
      end
