    module mod
      type zz
        integer(2)::i2
        real(4)   ::r4
        complex(8)::c8
        character(11)::a11
      end type
    end module

    program ompv2
     use mod
      type(zz),target::t1(2)=zz(2_2,4.0,(1.0d0,2.0d0),'OpenMP V2.0')
      type(zz),target::t2(2)=zz(3_2,5.0,(3.0d0,4.0d0),'openmp v2.0')
      type(zz),pointer::pp(:)=>null()
!$omp threadprivate(pp)

      pp=>t1
!$omp parallel copyin(pp)
      if (any(pp(:)%i2/=(/2_2,2_2/))) print *,"fail"
      if (any(pp(:)%r4/=(/4.0,4.0/))) print *,"fail"
      if (any(pp(:)%c8/=(/(1.0d0,2.0d0),(1.0d0,2.0d0)/))) print *,"fail"
      if (any(pp(:)%a11/=(/'OpenMP V2.0','OpenMP V2.0'/))) print *,"fail"
!$omp end parallel

!$omp parallel
      pp=>null()
!$omp single
      pp=>t2
!$omp end single copyprivate(pp)
!$omp critical
      if (any(pp(:)%i2/=(/3_2,3_2/))) print *,"fail"
      if (any(pp(:)%r4/=(/5.0,5.0/))) print *,"fail"
      if (any(pp(:)%c8/=(/(3.0d0,4.0d0),(3.0d0,4.0d0)/))) print *,"fail"
      if (any(pp(:)%a11/=(/'openmp v2.0','openmp v2.0'/))) print *,"fail"
      nullify(pp)
!$omp end critical
!$omp end parallel
      if (associated(pp)) print *,"fail"

    print *,'pass'

    end
