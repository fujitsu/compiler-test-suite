      common /aa/ ib 
      ib=2
!$omp parallel private(/aa/)
      ib=12
!$omp parallel private(ib)
      ib=102
      if (ib/=102) print *,"fail"
!$omp end parallel
!$    if (.true.) then
!$      if (ib/=12) print *,"fail"
!$    else
        if (ib/=102) print *,"fail"
!$    endif
!$omp end parallel
!$    if (.true.) then
!$      if (ib/=2) print *,"fail"
!$    else
        if (ib/=102) print *,"fail"
!$    endif
      print *,'pass'
      end
