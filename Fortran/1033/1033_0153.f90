      character(10)::aa
      integer(4),external::OMP_GET_THREAD_NUM
      aa='ABCDEFGHIJ'
!$omp parallel
!$omp sections lastprivate(aa)
      aa='abcdefghij'
      if (aa.ne.'abcdefghij') print *,'error 1'
!$omp end sections
!$omp end parallel
!$    if (.true.) then
!$      if (aa.ne.'abcdefghij') print *,'error 2'
!$    else
        if (aa.ne.'abcdefghij') print *,'error 2'
!$    endif
      print *,'pass'
      end
