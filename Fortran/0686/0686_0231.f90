    module mod
      character(len=9),pointer,dimension(:)::p_string
      character(len=9),pointer,dimension(:)::pa_string
      character(len=9),target,dimension(1) ::string1='OPENMP V2'
      character(len=9),target,dimension(3) ::string2='openmp v2'
      character(len=9),target,dimension(1) ::string3='OpenMP V2'
     contains
      subroutine sub0()
        p_string=>string1
        allocate(pa_string(1))
        pa_string='OPENMP v2'
      end subroutine sub0
    end module mod

    program ompv2copyprivate341
     use mod
      call sub0()
      call sub()
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (any( p_string /= 'OPENMP V2' )) print *,"fail"
      if (any( pa_string /= 'OPENMP v2' )) print *,"fail"
      p_string=>null()
      deallocate(pa_string)
      print *,'pass'
    end program

    subroutine sub()
     use mod
!$omp parallel private(p_string,pa_string)
      p_string=>string2
!$omp single
      p_string=>string3
      allocate(pa_string(1))
      pa_string='OpenMP v2'
!$omp end single copyprivate(p_string,pa_string)
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (any( p_string /= 'OpenMP V2' )) print *,"fail"
      if (any( pa_string /= 'OpenMP v2' )) print *,"fail"
      p_string=>null()
!$omp barrier
!$omp master
      deallocate(pa_string)
!$omp end master
!$omp end parallel
    end subroutine sub
