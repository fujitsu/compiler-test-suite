      module mod
        character(len=9),target ::string1='OPENMP V2'
        character(len=9),target ::string2='openmp v2'
        character(len=9),target ::string3='OpenMP V2'
      end module mod

      use mod
      interface
        subroutine sub(p_string,pa_string)
          character(len=9),pointer::p_string
          character(len=9),pointer::pa_string
        end subroutine sub
      end interface
      character(len=9),pointer::p_string
      character(len=9),pointer::pa_string
      p_string=>string1
      allocate(pa_string)
      pa_string='OPENMP v2'

!$omp parallel private(p_string,pa_string)
      call sub(p_string,pa_string)
!$omp end parallel

      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (p_string /= 'OPENMP V2') print *,"fail"
      if (pa_string /= 'OPENMP v2') print *,"fail"
      p_string=>null()
      deallocate(pa_string)
      print *,'pass'
      end

      subroutine sub(p_string,pa_string)
      use mod
      character(len=9),pointer::p_string
      character(len=9),pointer::pa_string
      p_string=>string2
      allocate(pa_string)
!$omp single
      p_string=>string3
      pa_string='OpenMP v2'
!$omp end single copyprivate(p_string,pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (p_string /= 'OpenMP V2') print *,"fail"
      if (pa_string /= 'OpenMP v2') print *,"fail"
      p_string=>null()
!$omp barrier
!$omp single
      deallocate(pa_string)
!$omp end single
      end subroutine sub
