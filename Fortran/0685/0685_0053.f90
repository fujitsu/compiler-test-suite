      common /com1/ ia,ib,ic
      common /com2/ ja,jb,jc
!$omp parallel shared(k1,/com1/,k2,/com2/,k3)
!$omp parallel shared(/com1/,/com2/,k1,k2,k3)
!$omp parallel shared(/com1/,k1,k2,k3,/com2/)
      ia=1 ; ib=1 ; ic=1
      ja=2 ; jb=2 ; jc=2
!$omp end parallel
!$omp end parallel
!$omp end parallel
      if (ia/=1.or.ib/=1.or.ic/=1) print *,"fail"
      if (ja/=2.or.jb/=2.or.jc/=2) print *,"fail"
      print *,'pass'
      end
