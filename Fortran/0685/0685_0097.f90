      common /aa/ ia,ib
      common /cc/ ic
      ia=-10
      ib=-11
      ic=100
!$omp parallel private(/aa/),shared(/cc/)
!$omp single
      ia=1
      ib=-1
!$omp parallel default(shared)
!$omp single
      if (ia/=1.or.ib/=-1.or.ic/=100) print *,"fail"
      ia=ib+10
      ib=ia+11
      ic=ic+11
      if (ia/=9.or.ib/=20.or.ic/=111) print *,"fail"
!$omp endsingle
!$omp endparallel
      ia = ia + ic
      ib = ib + ic
!$    if (ia/=120.or.ib/=131.or.ic/=111) print *,"fail"
!$omp endsingle
!$omp endparallel
!$    if (ia/=-10.or.ib/=-11.or.ic/=111) print *,"fail"
      print *,'pass'
      end
