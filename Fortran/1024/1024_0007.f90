      module mod
        integer(4),target ::i11=1_1,i12=10_1,i13=100_1
        integer(4),target ::i21=1_2,i22=10_2,i23=100_2
!$omp threadprivate(i11,i12,i13,i21,i22,i23)
      end module mod

      use mod
      interface
        subroutine sub(p_i1,p_i2)
          integer(4),pointer::p_i1
          integer(4),pointer::p_i2
        end subroutine sub
      end interface
      integer(4),pointer::p_i1
      integer(4),pointer::p_i2
!$omp threadprivate(p_i1,p_i2)
      integer omp_get_thread_num
!$omp parallel
      p_i1=>i12
      p_i2=>i22
      call sub(p_i1,p_i2)
!$omp end parallel
      end

      subroutine sub(p_i1,p_i2)
      use mod
      integer(4),pointer::p_i1
      integer(4),pointer::p_i2
      integer omp_get_thread_num
!$omp single
      p_i1=>i13
      p_i2=>i23
!$omp end single copyprivate(p_i1,p_i2)
      end subroutine sub
