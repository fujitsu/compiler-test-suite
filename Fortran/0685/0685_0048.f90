      common /com/ j,i
      j=-100
      i=-1
!$omp parallel private(/com/)
      i=1
 !$omp parallel private(/com/)
      i=2
  !$omp parallel default(private)
      i=3
      j=103
   !$omp parallel firstprivate(/com/)
      if (i/=3) print *,"fail"
      if (j/=103) print *,"fail"
      i=4
      j=104
   !$omp end parallel
    !$ if (.true.) then
    !$   if (i/=3.or.j/=103) print *,"fail"
    !$ else
         if (i/=4.or.j/=104) print *,"fail"
    !$ endif
  !$omp end parallel

    !$ if (i/=2) print *,"fail"

  !$omp parallel private(i,j)
      i=13
      j=113
   !$omp parallel private(i)
      i=14
   !$omp end parallel
    !$ if (.true.) then
    !$   if (i/=13) print *,"fail"
    !$ else
         if (i/=14) print *,"fail"
    !$ endif
      if (j/=113) print *,"fail"
  !$omp end parallel
    !$ if (i/=2) print *,"fail"
 !$omp end parallel
    !$ if (i/=1) print *,"fail"
!$omp end parallel
    !$ if (.true.) then
    !$   if (i/=-1.or.j/=-100) print *,"fail"
    !$ else
        if (i/=14.or.j/=113) print *,"fail"
    !$ endif
      print *,'pass'
      end
