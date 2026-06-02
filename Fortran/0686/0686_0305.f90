    module mod
      character(len=9),pointer,dimension(:)::p_string
      character(len=9),pointer,dimension(:,:,:,:)::pa_string
      character(len=9),target ,dimension(1)::string1='OPENMP V2'
      character(len=9),target ,dimension(2)::string2='openmp v2'
      character(len=9),target ,dimension(1)::string3='OpenMP V2'
      common /com0/ idum1,p_string
      common /com1/ idum2,pa_string
!$omp threadprivate(/com1/,/com0/)
     contains
      subroutine sub0()
        p_string=>string1
        allocate(pa_string(2,2,2,2))
        pa_string='OPENMP v2'
      end subroutine sub0
    end module mod

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
     integer(4),external::OMP_GET_THREAD_NUM
!$omp parallel copyin(p_string,pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (any(p_string /= 'OPENMP V2')) print *,"fail"
      if (any(pa_string /= 'OPENMP v2')) print *,"fail"
!$omp barrier
!$omp master
      if (associated(pa_string)) deallocate(pa_string)
!$omp end master
      p_string=>string2
!$omp single
      p_string=>string3
      allocate(pa_string(2:2,2:3,2:2,2:3))
      pa_string='OpenMP v2'
!$omp end single copyprivate(idum1,p_string,idum2,pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (any(p_string /= 'OpenMP V2')) print *,"fail"
      if (any(pa_string /= 'OpenMP v2')) print *,"fail"
      if (any(lbound(pa_string)/=(/2,2,2,2/))) print *,"fail"
      if (any(ubound(pa_string)/=(/2,3,2,3/))) print *,"fail"
      if (size(pa_string)/=4) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) p_string=>null()
      if (OMP_GET_THREAD_NUM()/=0) pa_string=>null()
!$omp end parallel
    end subroutine sub
