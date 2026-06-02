      call sub()
      print *,'pass'
      contains
        subroutine sub()
        character(len=9),pointer,save::p_string
        character(len=9),pointer,save::pa_string
        character(len=9),target ::string1='OPENMP V2'
        character(len=9),target ::string2='openmp v2'
        character(len=9),target ::string3='OpenMP V2'
        integer(4),external::OMP_GET_THREAD_NUM
  !$omp threadprivate(p_string,pa_string)
        p_string=>string1
        allocate(pa_string)
        pa_string='OPENMP v2'
  !$omp parallel
        p_string=>string2
        allocate(pa_string)
  !$omp single
        p_string=>string3
        pa_string='OpenMP v2'
  !$omp end single copyprivate(p_string,pa_string)
  !$omp critical
        if (.not.associated(p_string)) print *,"fail"
        if (.not.associated(pa_string)) print *,"fail"
        if (p_string /= 'OpenMP V2') print *,"fail"
        if (pa_string /= 'OpenMP v2') print *,"fail"
        if (OMP_GET_THREAD_NUM()/=0) p_string=>null()
  !$omp end critical
  !$omp end parallel
        if (.not.associated(p_string)) print *,"fail"
        if (.not.associated(pa_string)) print *,"fail"
        if (p_string /= 'OpenMP V2') print *,"fail"
        if (pa_string /= 'OpenMP v2') print *,"fail"
        p_string=>null()
        deallocate(pa_string)
        end subroutine sub
      end
