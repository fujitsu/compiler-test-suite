    program ompv2
      common/com/t,p
      integer,pointer::p
      integer,target::t
!$omp threadprivate(/com/)
      integer::OMP_GET_THREAD_NUM

      p=>t
!$omp parallel copyin(p)
      if (p/=3) print *,"fail"
!$omp barrier
      t=OMP_GET_THREAD_NUM()
!$omp end parallel

!$omp parallel
      p=>t
      if (p/=OMP_GET_THREAD_NUM()) print *,"fail"
      if (loc(p)/=loc(t)) print *,"fail"
!$omp end parallel

      if (p/=0) print *,"fail"
      if (t/=0) print *,"fail"
      print *,'pass'
    end program

    block data
      common/com/t,p
      integer,pointer::p
      integer,target::t
!$omp threadprivate(/com/)
      data p /null()/
      data t /3/
    end block data
