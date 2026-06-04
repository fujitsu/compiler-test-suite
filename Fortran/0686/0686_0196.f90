    program abc
     interface
       subroutine sub1(allo_string)
         character(len=9),allocatable,dimension(:)::allo_string
       end subroutine sub1
       subroutine sub2(allo_string)
         character(len=9),allocatable,dimension(:)::allo_string
       end subroutine sub2
     end interface
     character(len=9),allocatable,dimension(:)::allo_string
      allocate(allo_string(2))
      allo_string=(/'OPENMP v2','OPENMP v3'/)
      call sub1(allo_string)
!$omp parallel private(allo_string)
      call sub2(allo_string)
!$omp end parallel
      if (.not.allocated(allo_string)) print *,"fail"
      if (size( allo_string ) /= 2 ) print *,"fail"
      if (any( allo_string /= (/'OPENMP v2','OPENMP v3'/) )) print *,"fail"
      deallocate(allo_string)
      print *,'pass'
    end program abc

    subroutine sub1(allo_string)
     character(len=9),allocatable,dimension(:)::allo_string
!$omp parallel private(allo_string)
      if (allocated(allo_string)) deallocate(allo_string)
      allocate(allo_string(5:5))
!$omp single
      allo_string(5)='OpenMP V2'
!$omp end single copyprivate(allo_string)
      if (.not.allocated(allo_string)) print *,"fail"
      if (size( allo_string ) /= 1 ) print *,"fail"
      if (lbound( allo_string,1 ) /= 5 ) print *,"fail"
      if (ubound( allo_string,1 ) /= 5 ) print *,"fail"
      if (any( allo_string /= 'OpenMP V2' )) print *,"fail"
      deallocate(allo_string)
!$omp end parallel
    end subroutine sub1

    subroutine sub2(allo_string)
     character(len=9),allocatable,dimension(:)::allo_string
      if (allocated(allo_string)) deallocate(allo_string)
      allocate(allo_string(5:5))
!$omp single
      allo_string(5)='OpenMP V2'
!$omp end single copyprivate(allo_string)
      if (.not.allocated(allo_string)) print *,"fail"
      if (size( allo_string ) /= 1 ) print *,"fail"
      if (lbound( allo_string,1 ) /= 5 ) print *,"fail"
      if (ubound( allo_string,1 ) /= 5 ) print *,"fail"
      if (any( allo_string /= 'OpenMP V2' )) print *,"fail"
      deallocate(allo_string)
    end subroutine sub2
