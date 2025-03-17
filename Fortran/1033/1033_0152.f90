      character(10)::aa
      call sub(aa)
      end
      subroutine sub(aa)
      character(10)::aa
      integer(4),external::OMP_GET_THREAD_NUM
      aa='ABCDEFGHIJ'
!$omp parallel firstprivate(aa)
      if (aa.ne.'ABCDEFGHIJ') print *,'error 1'
      aa='abcdefghij'
!$omp end parallel
!$    if (.true.) then
!$      if (aa.ne.'ABCDEFGHIJ') print *,'error 2'
!$    else
        if (aa.ne.'abcdefghij') print *,'error 2'
!$    endif
      print *,'pass'
      end
