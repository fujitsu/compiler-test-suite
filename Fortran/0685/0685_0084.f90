      common /com/ ia,ib
      ia=1
      ib=2
!$omp parallel private(/com/)
      ia=11
      ib=12
      if (ia/=11) print *,"fail"
      if (ib/=12) print *,"fail"
!$omp endparallel
!$    if (.true.) then
!$      if (ia/=1) print *,"fail"
!$      if (ib/=2) print *,"fail"
!$    else
        if (ia/=11) print *,"fail"
        if (ib/=12) print *,"fail"
!$    endif
      print *,'pass'
      end
