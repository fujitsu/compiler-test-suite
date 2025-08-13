      integer:: a(2)
      a=1
!$omp parallel private(a)
!$omp parallel shared(a)
!$omp parallel reduction(+:a)
!$omp single
      a=a+1
!$omp endsingle
!$omp end parallel
!$omp end parallel
!$omp end parallel
!$ if (.true.) then
!$   if (any(a/=1)) print *,'fail'
!$ else
     if (any(a/=2)) print *,'fail'
!$ endif
   print *,'pass'
end
