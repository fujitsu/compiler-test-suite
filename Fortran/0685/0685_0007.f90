      common /com1/ ia,ib
      equivalence(ia,iz)
!$omp threadprivate(/com1/)
      ia=2
      ib=2
!$omp parallel copyin(/com1/) , private(k)
      if (ia/=2.or.ib/=2) print *,'2-',ia,ib
      ia=101
      ib=102
!$omp parallel copyin(/com1/) , private(k)
      if (ia/=101.or.ib/=102) print *,'1-',ia,ib
      ia=1
      ib=1
!$omp end parallel
!$omp end parallel
      print *,'pass'
      end
