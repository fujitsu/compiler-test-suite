      type zzz
        integer*4 aaa,bbb
      end type 
      type (zzz) z1
      z1%aaa = 1
!$omp parallel private(z1)
      z1%aaa = -1
      z1%bbb = 10
      if (z1%aaa/=-1) print *,"fail"
!$omp end parallel
!$    if (.true.) then
!$      if (z1%aaa/=1) print *,"fail"
!$    else
        if (z1%aaa/=-1) print *,"fail"
!$    endif
      print *,'pass'
      end
