    module mod
      character(len=9),allocatable,dimension(:)::allo_string
!$omp threadprivate(allo_string)
     contains
      subroutine init()
        allocate(allo_string(2))
        allo_string=(/'OPENMP v2','OPENMP v3'/)
      end subroutine init
      subroutine fini()
        if (.not.allocated(allo_string)) print *,"fail"
        if (size( allo_string ) /= 1 ) print *,"fail"
        if (any( allo_string /= (/'OpenMP V2'/) )) print *,"fail"
        deallocate(allo_string)
      end subroutine fini
    end module mod

    program abc
     use mod
     interface
       subroutine sub2(allo_string)
         character(len=9),allocatable,dimension(:)::allo_string
       end subroutine sub2
     end interface

      call init()

      call sub1()
!$omp parallel
      call sub2(allo_string)
!$omp end parallel

      call fini()

      print *,'pass'
    end program abc

    subroutine sub1()
     use mod

!$omp parallel
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
     integer(4),external::OMP_GET_THREAD_NUM
      if (allocated(allo_string)) deallocate(allo_string)
      allocate(allo_string(5:5))
!$omp single
      allo_string(5)='OpenMP V2'
!$omp end single copyprivate(allo_string)
!$omp critical
      if (.not.allocated(allo_string)) print *,"fail"
      if (size( allo_string ) /= 1 ) print *,"fail"
      if (lbound( allo_string,1 ) /= 5 ) print *,"fail"
      if (ubound( allo_string,1 ) /= 5 ) print *,"fail"
      if (any( allo_string /= 'OpenMP V2' )) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) deallocate(allo_string)
!$omp end critical
    end subroutine sub2
