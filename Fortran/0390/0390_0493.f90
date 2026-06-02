      integer,allocatable:: a(:)
allocate(a(2))
      a=1
!$omp parallel firstprivate(a)
      a=a+1
!$omp end parallel
        if (any(a>1)) print *,'fail'
   print *,'pass'
end
