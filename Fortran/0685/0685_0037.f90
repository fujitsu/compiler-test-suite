      common /aa/ ia ,ib
      ia=1 
      ib=2
!$omp parallel private(/aa/)
      ia=11 
      ib=12
!$omp parallel private(ib)
      ia=101 
      ib=102
!$omp end parallel
 !$   if (.true.) then
 !$     if (ia/=101.or.ib/=12) print *,"fail"
 !$   else
        if (ia/=101.or.ib/=102) print *,"fail"
 !$   endif
!$omp end parallel
 !$   if (.true.) then
 !$     if (ia/=1.or.ib/=2) print *,"fail"
 !$   else
        if (ia/=101.or.ib/=102) print *,"fail"
 !$   endif
      print *,'pass'
      end
