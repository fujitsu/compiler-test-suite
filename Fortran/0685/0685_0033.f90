      common /aa/ ia,ib
      ia=-10
      ib=-11
!$omp parallel private(/aa/)
      ia=1
      ib=-1
!$omp parallel private(ia)
      ia=10
 !$omp single
      ib=ib-1
 !$omp end single
!$omp parallel private(/aa/)
      ia = 1000
      ib = 1000
      if (ia/=1000.or.ib/=1000) print *,"fail"
!$omp end parallel
!$    if (.true.) then
!$      if (ia/=10.or.ib/=-2) print *,"fail"
!$    else
        if (ia/=1000.or.ib/=1000) print *,"fail"
!$    endif
!$omp endparallel
!$    if (.true.) then
!$      if (ia/=1.or.ib/=-2) print *,"fail"
!$    else
        if (ia/=1000.or.ib/=1000) print *,"fail"
!$    endif
!$omp endparallel
!$    if (.true.) then
!$      if (ia/=-10.or.ib/=-11) print *,"fail"
!$    else
        if (ia/=1000.or.ib/=1000) print *,"fail"
!$    endif
      print *,'pass'
      end
