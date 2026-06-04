    module mod
      integer(1),pointer,dimension(:)::p_i1
      integer(2),pointer,dimension(:)::p_i2
      integer(4),pointer,dimension(:)::p_i4
      integer(8),pointer,dimension(:)::p_i8
      integer(1),target,dimension(7) ::i11=1_1,i12=10_1,i13=100_1
      integer(2),target,dimension(5) ::i21=1_2,i22=10_2,i23=100_2
      integer(4),target,dimension(3) ::i41=1_4,i42=10_4,i43=100_4
      integer(8),target,dimension(1) ::i81=1_8,i82=10_8,i83=100_8
     contains
      subroutine sub0()
        p_i1=>i11
        p_i2=>i21
        p_i4=>i41
        p_i8=>i81
      end subroutine sub0
    end module mod

    program abc
     use mod
      call sub0()
      call sub()
      if ( any( p_i1 /= 1_1 ) ) print *,"fail"
      if ( any( p_i2 /= 1_2 ) ) print *,"fail"
      if ( any( p_i4 /= 1_4 ) ) print *,"fail"
      if ( any( p_i8 /= 1_8 ) ) print *,"fail"
      p_i1=>null()
      p_i2=>null()
      p_i4=>null()
      p_i8=>null()
      print *,'pass'
    end

    subroutine sub()
     use mod
!$omp parallel private(p_i1,p_i2,p_i4,p_i8)
      p_i1=>null()
      p_i2=>i22
      p_i4=>i42
      p_i8=>i82
!$omp single
      p_i1=>i13
      p_i2=>null()
      p_i4=>i43
      p_i8=>i83
!$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
      if (.not. associated(p_i1)) print *,"fail"
      if (      associated(p_i2)) print *,"fail"
      if (.not. associated(p_i4)) print *,"fail"
      if (.not. associated(p_i8)) print *,"fail"
      if ( any( p_i1 /= 100_1 ) ) print *,"fail"
      if ( any( p_i4 /= 100_4 ) ) print *,"fail"
      if ( any( p_i8 /= 100_8 ) ) print *,"fail"
      p_i1=>null()
      p_i4=>null()
      p_i8=>null()
!$omp end parallel
    end subroutine sub
