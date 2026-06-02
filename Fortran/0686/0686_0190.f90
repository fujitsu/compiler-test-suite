    module mod
      character(len=9),target,dimension(5) ::string1='OPENMP V2'
      character(len=9),target,dimension(4) ::string2='openmp v2'
      character(len=9),target,dimension(3) ::string3='OpenMP V2'
    end module mod

     use mod
     interface
       subroutine sub1(p_string,pa_string)
         character(len=9),pointer,dimension(:)::p_string
         character(len=9),pointer,dimension(:)::pa_string
       end subroutine sub1
       subroutine sub2(p_string,pa_string)
         character(len=9),pointer,dimension(:)::p_string
         character(len=9),pointer,dimension(:)::pa_string
       end subroutine sub2
     end interface
     character(len=9),pointer,dimension(:)::p_string
     character(len=9),pointer,dimension(:)::pa_string
      p_string=>string1
      allocate(pa_string(6:10))
      pa_string='OPENMP v2'

      call sub1(p_string,pa_string)
!$omp parallel private(p_string,pa_string)
      call sub2(p_string,pa_string)
!$omp end parallel

      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (size( p_string) /= 5) print *,"fail"
      if (any( p_string /= 'OPENMP V2' )) print *,"fail"
      if (any( pa_string /= 'OPENMP v2' )) print *,"fail"
      p_string=>null()
      deallocate(pa_string)
      print *,'pass'
    end program

    subroutine sub1(p_string,pa_string)
     use mod
     character(len=9),pointer,dimension(:)::p_string
     character(len=9),pointer,dimension(:)::pa_string
!$omp parallel private(p_string,pa_string)
      p_string=>string2
      allocate(pa_string(6:10))
!$omp single
      p_string=>string3
      pa_string='OpenMP v2'
!$omp end single copyprivate(p_string,pa_string)
!$omp critical
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (size( p_string) /= 3) print *,"fail"
      if (any( p_string /= 'OpenMP V2' )) print *,"fail"
      if (any( pa_string /= 'OpenMP v2' )) print *,"fail"
      p_string=>null()
!$omp end critical
!$omp barrier
!$omp single
      deallocate(pa_string)
!$omp end single
!$omp end parallel
    end subroutine sub1

    subroutine sub2(p_string,pa_string)
     use mod
     character(len=9),pointer,dimension(:)::p_string
     character(len=9),pointer,dimension(:)::pa_string
      p_string=>string2
      allocate(pa_string(6:10))
!$omp single
      p_string=>string3
      pa_string='OpenMP v2'
!$omp end single copyprivate(p_string,pa_string)
!$omp critical
      if (.not.associated(p_string)) print *,"fail"
      if (.not.associated(pa_string)) print *,"fail"
      if (size( p_string) /= 3) print *,"fail"
      if (any( p_string /= 'OpenMP V2' )) print *,"fail"
      if (any( pa_string /= 'OpenMP v2' )) print *,"fail"
      p_string=>null()
!$omp end critical
!$omp barrier
!$omp single
      deallocate(pa_string)
!$omp end single
    end subroutine sub2
