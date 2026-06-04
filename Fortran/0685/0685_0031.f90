      common /aa/ ia
      ia=1
!$omp parallel private(/aa/)
      ia=-10
!$omp parallel private(/aa/)
      ia=-20
      if (ia/=-20) print *,"fail"
!$omp endparallel
 !$   if (ia/=-10) print *,"fail"
      ia=ia-10
 !$   if (ia/=-20) print *,"fail"
!$omp endparallel
 !$   if (.true.) then
 !$     if (ia/=1) print *,"fail"
 !$   else
 !$     if (ia/=-30) print *,"fail"
 !$   endif
      print *,'pass'
      end
