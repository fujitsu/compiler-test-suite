      common /aa/ ia,ib,ic 
      ia=1 ; ib=2 ; ic=3
!$omp parallel private(/aa/)
      ia=11 ; ib=12 ; ic=13
!$omp parallel private(ib)
      ia=101 ; ib=102 ; ic=103
!$omp end parallel
!$    if (ia/=101.or.ib/=12.or.ic/=103) print *,"fail"
!$omp end parallel
!$    if (ia/=1.or.ib/=2.or.ic/=3) print *,"fail"
      print *,'pass'
      end
