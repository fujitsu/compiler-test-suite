      common /aa/ ia(2)
      equivalence (ia,ib)
      ia = 1
!$omp parallel private(ia,ib)
      ia = 11
      ib = 12
 !$omp parallel private(/aa/)
      ia = 101
 !$omp end parallel
  !$  if (.true.) then
  !$    if (ia(1)/=11.or.ib/=12) print *,"fail"
  !$  else
        if (ia(1)/=101.or.ib/=101) print *,"fail"
  !$  endif
!$omp end parallel
  !$  if (.true.) then
  !$    if (ib/=1) print *,"fail"
  !$  else
        if (ib/=101) print *,"fail"
  !$  endif
      print *,'pass'
      end
