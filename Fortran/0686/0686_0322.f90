      integer(2)::i
      i=1000
      call sub(i)
      print *,'pass'
      end

      subroutine sub(i)
      integer(2)::i
!$omp parallel firstprivate(i)
 !$omp single
   i=200
  !$omp parallel
   !$omp single
    !$omp parallel private(i)
     !$omp single
       i=100
     !$omp endsingle copyprivate(i)
      if(i/=100) print *,"fail" 
    !$omp end parallel
   !$omp endsingle nowait
  !$omp end parallel
 !$omp endsingle copyprivate(i)
  if(i/=200) print *,"fail" 
!$omp end parallel
      if (i/=1000) print *,"fail"
      end
