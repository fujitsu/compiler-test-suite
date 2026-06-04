    module mod
      character(len=9),pointer::p_string
      character(len=9),pointer::pa_string
      character(len=9),target ::string1='OPENMP V2'
      character(len=9),target ::string2='openmp v2'
      character(len=9),target ::string3='OpenMP V2'
      common /com0/ p_string
      common /com1/ pa_string
!$omp threadprivate(/com1/,/com0/)
     contains
      subroutine sub0()
        p_string=>string1
        allocate(pa_string)
        pa_string='OPENMP v2'
      end subroutine sub0
    end module mod

     use mod
      call sub0()
      call sub()
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (p_string /= 'OpenMP V2') print *,"fail"
      if (pa_string /= 'OpenMP v2') print *,"fail"
      p_string=>null()
      deallocate(pa_string)
      print *,'pass'
    end program

    subroutine sub()
     use mod
     integer(4),external::OMP_GET_THREAD_NUM
!$omp parallel copyin(p_string,pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (p_string /= 'OPENMP V2') print *,"fail"
      if (pa_string /= 'OPENMP v2') print *,"fail"
      p_string=>string2
      allocate(pa_string)
!$omp single
      p_string=>string3
      pa_string='OpenMP v2'
!$omp end single copyprivate(p_string, pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (p_string /= 'OpenMP V2') print *,"fail"
      if (pa_string /= 'OpenMP v2') print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) p_string=>null()
      if (OMP_GET_THREAD_NUM()/=0) pa_string=>null()
!$omp end parallel
    end subroutine sub
