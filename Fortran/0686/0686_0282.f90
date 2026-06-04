    module mod
      character(len=9),pointer::p_string(:)
      character(len=9),pointer::pa_string(:,:,:)
      character(len=9),target,dimension(1) ::string1='OPENMP V2'
      character(len=9),target,dimension(2) ::string2='openmp v2'
      character(len=9),target,dimension(3) ::string3='OpenMP V2'
      integer(4),external::OMP_GET_THREAD_NUM
!$omp threadprivate(p_string,pa_string)
     contains
      subroutine sub0()
        p_string=>string1
        allocate(pa_string(2:2,3:3,4:4))
        pa_string='OPENMP v2'
      end subroutine sub0
    end module mod

    program ompv2
     use mod
      call sub0()
      call sub()
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (any(p_string /= 'OpenMP V2')) print *,"fail"
      if (any(pa_string /= 'OpenMP v2')) print *,"fail"
      p_string=>null()
      deallocate(pa_string)
      print *,'pass'
    end program

    subroutine sub()
     use mod
!$omp parallel copyin(p_string,pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (any(p_string /= 'OPENMP V2')) print *,"fail"
      if (any(pa_string /= 'OPENMP v2')) print *,"fail"
      p_string=>string2
!$omp single
      p_string=>string3
      allocate(pa_string(1:2,3:4,5:6))
      pa_string='OpenMP v2'
!$omp end single copyprivate(p_string,pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (any(p_string /= 'OpenMP V2')) print *,"fail"
      if (any(pa_string /= 'OpenMP v2')) print *,"fail"
      if (any(lbound(pa_string)/=(/1,3,5/))) print *,"fail"
      if (any(ubound(pa_string)/=(/2,4,6/))) print *,"fail"
      if (size(pa_string)/=8) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) p_string=>null()
      if (OMP_GET_THREAD_NUM()/=0) pa_string=>null()
!$omp end parallel
    end subroutine sub
