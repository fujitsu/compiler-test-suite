    module mod
      integer(1),target::i1=1
      integer(2),target::i2=2
      integer(4),target::i4=4
      integer(8),target::i8=8
!$omp threadprivate(i2,i4)
    end module mod

    program ompv2 
     use mod
      integer(1),pointer::p_i1
      integer(2),pointer::p_i2=>null()
      integer(4),pointer::p_i4=>null()
      integer(8),pointer::p_i8
!$omp threadprivate(p_i1,p_i2,p_i4,p_i8)

!$omp parallel copyin(p_i2,p_i4)
      if (associated(p_i2)) print *,"fail"
      if (associated(p_i4)) print *,"fail"
!$omp end parallel 

      p_i1=>i1
      p_i8=>i8

!$omp parallel copyin(p_i1,p_i2,p_i4,p_i8,i2,i4)
      if (.not. associated(p_i1)) print *,"fail"
      if (associated(p_i2)) print *,"fail"
      p_i2=>i2
      if (associated(p_i4)) print *,"fail"
      p_i4=>i4
      if (.not. associated(p_i8)) print *,"fail"
!$omp end parallel 

!$omp parallel
      if (p_i1/=1) print *,"fail"
      if (p_i2/=2) print *,"fail"
      if (p_i4/=4) print *,"fail"
      if (p_i8/=8) print *,"fail"
!$omp end parallel
      print *,'pass'
    end
