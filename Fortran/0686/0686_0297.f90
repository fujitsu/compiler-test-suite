    block data
      integer(1),pointer::p_i1
      integer(2),pointer::p_i2
      integer(4),pointer::p_i4
      integer(8),pointer::p_i8
      common /com/ p_i1,p_i2,p_i4,p_i8
!$omp threadprivate(/com/)
      data p_i1 /null()/
      data p_i2 /null()/
      data p_i4 /null()/
      data p_i8 /null()/
    end block data

    module mod
      integer(1),target ::i11=1_1,i12=10_1,i13=100_1
      integer(2),target ::i21=1_2,i22=10_2,i23=100_2
      integer(4),target ::i41=1_4,i42=10_4,i43=100_4
      integer(8),target ::i81=1_8,i82=10_8,i83=100_8
     contains
      subroutine sub0()
        integer(1),pointer::p_i1
        integer(2),pointer::p_i2
        integer(4),pointer::p_i4
        integer(8),pointer::p_i8
        common /com/ p_i1,p_i2,p_i4,p_i8
!$omp threadprivate(/com/)
        p_i1=>i11
        p_i2=>i21
        p_i4=>i41
        p_i8=>i81
      end subroutine sub0
    end module mod

    program abc
     use mod
      integer(1),pointer::p_i1
      integer(2),pointer::p_i2
      integer(4),pointer::p_i4
      integer(8),pointer::p_i8
      common /com/ p_i1,p_i2,p_i4,p_i8
!$omp threadprivate(/com/)
      call sub0()
      call sub()
      if (p_i1 /= 100_1) print *,"fail"
      if (associated(p_i2)) print *,"fail"
      if (p_i4 /= 100_4) print *,"fail"
      if (p_i8 /= 100_8) print *,"fail"
      p_i1=>null()
      p_i2=>null()
      p_i4=>null()
      p_i8=>null()
      print *,'pass'
    end

    subroutine sub()
     use mod
      integer(1),pointer::p_i1
      integer(2),pointer::p_i2
      integer(4),pointer::p_i4
      integer(8),pointer::p_i8
      common /com/ p_i1,p_i2,p_i4,p_i8
!$omp threadprivate(/com/)
      integer(4),external::OMP_GET_THREAD_NUM
!$omp parallel copyin(p_i1,p_i2,p_i4,p_i8)
      if (p_i1/=1_1) print *,"fail"
      if (p_i2/=1_2) print *,"fail"
      if (p_i4/=1_4) print *,"fail"
      if (p_i8/=1_8) print *,"fail"
!$omp single
      p_i1=>i13
      p_i2=>null()
      p_i4=>i43
      p_i8=>i83
!$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
      if (p_i1 /= 100_1) print *,"fail"
      if (associated(p_i2)) print *,"fail"
      if (p_i4 /= 100_4) print *,"fail"
      if (p_i8 /= 100_8) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) p_i1=>null()
      if (OMP_GET_THREAD_NUM()/=0) p_i4=>null()
      if (OMP_GET_THREAD_NUM()/=0) p_i8=>null()
!$omp end parallel
    end subroutine sub
