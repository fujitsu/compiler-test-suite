  integer,allocatable::ia(:),ib(:),ic(:)  
  integer :: ttt
!$omp threadprivate(ia,ib,ic,ttt)
ttt=2
!$omp parallel copyin(ia,ttt)
  allocate(ia(ttt),ib(ttt))
  ia=2
  ib=2
  if (ia(1)/=2.or.ib(1)/=2) print *,'2-',ia,ib
  ia=101
  ib=102
!$omp end parallel
!$omp parallel copyin(ic,ttt)
  allocate(ic(ttt))
  ia=2
  ib=2
  ic=3
  if (ia(1)/=101.or.ib(1)/=102) print *,'1-',ia,ib,ic
!$omp end parallel
  print *,'pass'
  end
