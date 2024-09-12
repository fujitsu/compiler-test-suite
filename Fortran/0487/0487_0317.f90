      type zzz
        integer,allocatable::i(:)
      end type
      type(zzz):: zz(2)
    allocate(zz(1)%i(3))
!$omp parallel 
!$omp sections lastprivate(zz)
!$omp section
        deallocate(zz(1)%i)
        allocate(zz(1)%i(1))
        zz(1)%i(1)=100
!$omp end sections
!$omp end parallel
        if (   (zz(1)%i(1)/=100)) print *,102,zz(1)%i(1)
        if ( size(  zz(1)%i )/=1) print *,103,size(zz(1)%i)
      print *,'pass'
      end
