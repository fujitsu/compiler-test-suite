      common /aa/ ia,ib
      ia=-10
      ib=-11
!$omp parallel private(/aa/)
      ia=1
      ib=-1
 !$omp parallel private(/aa/)
      ia=2
      ib=-2
      if (ia/=2.or.ib/=-2) print *,"fail"
 !$omp endparallel
!$    if (.true.) then
!$      if (ia/=1.or.ib/=-1) print *,"fail"
!$    else
        if (ia/=2.or.ib/=-2) print *,"fail"
!$    endif
!$omp endparallel
!$    if (.true.) then
!$      if (ia/=-10.or.ib/=-11) print *,"fail"
!$    else
        if (ia/=2.or.ib/=-2) print *,"fail"
!$    endif
      print *,'pass'
      end
