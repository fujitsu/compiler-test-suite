      common /aa/ ia(2)
      equivalence (ia,ib)
      ia = 1
!$omp parallel private(ia)
      ia = 11
 !$omp parallel private(/aa/)
      ia = 101
 !$omp end parallel
  !$  if (.true.) then
  !$    if (ib/=1) print *,"fail"
  !$  else
        if (ib/=101) print *,"fail"
  !$  endif
!$omp end parallel
  !$  if (.true.) then
  !$    if (ib/=1) print *,"fail"
  !$  else
        if (ib/=101) print *,"fail"
  !$  endif
      print *,'pass'
      end
