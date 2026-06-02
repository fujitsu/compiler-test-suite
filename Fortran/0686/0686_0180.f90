      module mod
        integer(1),target ::i11=1_1,i12=10_1,i13=100_1
        integer(2),target ::i21=1_2,i22=10_2,i23=100_2
        integer(4),target ::i41=1_4,i42=10_4,i43=100_4
        integer(8),target ::i81=1_8,i82=10_8,i83=100_8
      end module mod

      use mod
      interface
        subroutine sub(p_i1,p_i2,p_i4,p_i8)
          integer(1),pointer::p_i1
          integer(2),pointer::p_i2
          integer(4),pointer::p_i4
          integer(8),pointer::p_i8
        end subroutine sub
      end interface
      integer(1),pointer::p_i1
      integer(2),pointer::p_i2
      integer(4),pointer::p_i4
      integer(8),pointer::p_i8
      p_i1=>i11
      p_i2=>i21
      p_i4=>i41
      p_i8=>i81
!$omp parallel private(p_i1,p_i2,p_i4,p_i8)
      p_i1=>i12
      p_i2=>i22
      p_i4=>i42
      p_i8=>i82
      call sub(p_i1,p_i2,p_i4,p_i8)
      if (p_i1 /= 100_1) print *,"fail"
      if (p_i2 /= 100_2) print *,"fail"
      if (p_i4 /= 100_4) print *,"fail"
      if (p_i8 /= 100_8) print *,"fail"
!$omp end parallel
      if (p_i1 /= 1_1) print *,"fail"
      if (p_i2 /= 1_2) print *,"fail"
      if (p_i4 /= 1_4) print *,"fail"
      if (p_i8 /= 1_8) print *,"fail"
      print *,'pass'
      end

      subroutine sub(p_i1,p_i2,p_i4,p_i8)
      use mod
      integer(1),pointer::p_i1
      integer(2),pointer::p_i2
      integer(4),pointer::p_i4
      integer(8),pointer::p_i8
!$omp single
      p_i1=>i13
      p_i2=>i23
      p_i4=>i43
      p_i8=>i83
!$omp end single copyprivate(p_i1,p_i2,p_i4,p_i8)
      end subroutine sub
