      common /aa/ ia,ib,ic 
      ia=1 ; ib=2 ; ic=3
!$omp parallel private(ic),firstprivate(ia)
      ia=ia+10 ; ib=12 ; ic=13
!$omp parallel private(/aa/)
      ia=101 ; ib=102 ; ic=103
!$omp end parallel
 !$   if (.true.) then
 !$     if (ia/=11.or.ib/=12.or.ic/=13) print *,"fail"
 !$   else
        if (ia/=101.or.ib/=102.or.ic/=103) print *,"fail"
 !$   endif
!$omp end parallel
 !$   if (.true.) then
 !$     if (ia/=1.or.ib/=12.or.ic/=3) print *,"fail"
 !$   else
        if (ia/=101.or.ib/=102.or.ic/=103) print *,"fail"
 !$   endif
      print *,'pass'
      end
