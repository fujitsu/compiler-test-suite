      common /com/ ia(2)
      ia(1)=1
      ia(2)=2
!$omp parallel private(/com/)
      ia(1)=11
      ia(2)=12
      if (any(ia/=(/11,12/))) print *,"fail"
!$omp endparallel

!$    if (.true.) then
!$      if (any(ia/=(/1,2/))) print *,"fail"
!$    else
        if (any(ia/=(/11,12/))) print *,"fail"
!$    endif
      print *,'pass'
      end
