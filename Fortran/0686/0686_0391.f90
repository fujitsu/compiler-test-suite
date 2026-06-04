    module mod
      integer(2),target::i2
      integer(4),target::i4
!$omp threadprivate(i2,i4)
    end module mod

    program ompv2 
     use mod
      integer(2),pointer::p_i1=>null()
      integer(2),pointer::p_i2=>null()
      integer(4),pointer::p_i4=>null()
      integer(4),pointer::p_i8=>null()
!$omp threadprivate(p_i4,p_i2)

!$omp parallel copyin(p_i2,p_i4)
      if (associated(p_i2)) print *,"fail"
      if (associated(p_i4)) print *,"fail"
!$omp end parallel 
      print *,'pass'
    end
