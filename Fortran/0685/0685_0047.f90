      common /com/ j,i
      call OMP_SET_NUM_THREADS(2)
      j=-100
!$omp parallel private(/com/)
 !$omp parallel private(/com/)
      j=10
  !$omp parallel private(/com/)
      j=103
   !$omp parallel private(/com/)
      j=203
   !$omp end parallel
    !$ if (.true.) then
    !$  if (j/=103) print *,"fail"
    !$ else
        if (j/=203) print *,"fail"
    !$ endif
  !$omp end parallel
      j=j+10
    !$ if (.true.) then
    !$  if (j/=20) print *,"fail"
    !$ else
        if (j/=213) print *,"fail"
    !$ endif
  !$omp parallel private(i,j)
      j=113
   !$omp parallel private(i)
      j=213
   !$omp end parallel
       if (j/=213) print *,"fail"
  !$omp end parallel
    !$ if (j/=20) print *,"fail"
 !$omp end parallel
!$omp end parallel
    !$ if (.true.) then
    !$   if (j/=-100) print *,"fail"
    !$ else
         if (j/=213) print *,"fail"
    !$ endif
      print *,'pass'
      end
