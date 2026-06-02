    program ompv2
      call sub()
      print *,'pass'
    end program

    subroutine sub()
!$   integer(4),external::OMP_GET_THREAD_NUM
     character(len=9),save,allocatable,dimension(:)::allo_string

!$omp threadprivate(allo_string) 
      allocate(allo_string(2))
      allo_string=(/'OPENMP v2','OPENMP v3'/)

!$omp parallel shared(me)
      if (allocated(allo_string)) deallocate(allo_string)
      allocate(allo_string(5:5))
!$omp single
      allo_string(5)='OpenMP V2'
!$omp end single copyprivate(allo_string)
      if (.not.allocated(allo_string)) print *,"fail"
      if (size( allo_string ) /= 1 ) print *,"fail"
      if (lbound( allo_string,1 ) /= 5 ) print *,"fail"
      if (ubound( allo_string,1 ) /= 5 ) print *,"fail"
      if (any( allo_string(5:5) /= 'OpenMP V2' )) print *,"fail"
      if (any( allo_string /= 'OpenMP V2' )) print *,"fail"

!$    if (OMP_GET_THREAD_NUM().ne.0) then
!$      deallocate(allo_string)
!$    endif
!$omp end parallel
!$    if (.not.allocated(allo_string)) print *,"fail"
!$    if (size( allo_string ) /= 1 ) print *,"fail"
!$    if (any( allo_string /= (/'OpenMP V2'/) )) print *,"fail"
!$    deallocate(allo_string)
    end subroutine sub
