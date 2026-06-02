      call sub()
      print *,'pass'
    end program

    subroutine sub()
     character(len=9),allocatable,dimension(:,:)::allo_string
      allocate(allo_string(2,1))
      allo_string=reshape( (/'OPENMP v2','OPENMP v3'/),(/2,1/) )
!$omp parallel private(allo_string)
      if (allocated(allo_string)) deallocate(allo_string)
      allocate(allo_string(5:5,5:5))
!$omp single
      allo_string(5,5)='OpenMP V2'
!$omp end single copyprivate(allo_string)
!$omp critical
      if (.not.allocated(allo_string)) print *,"fail"
      if (size( allo_string ) /= 1 ) print *,"fail"
      if (lbound( allo_string,1 ) /= 5 ) print *,"fail"
      if (ubound( allo_string,1 ) /= 5 ) print *,"fail"
      if (lbound( allo_string,2 ) /= 5 ) print *,"fail"
      if (ubound( allo_string,2 ) /= 5 ) print *,"fail"
      if (any( allo_string /= 'OpenMP V2' )) print *,"fail"
      deallocate(allo_string)
!$omp end critical
!$omp end parallel
      if (.not.allocated(allo_string)) print *,"fail"
      if (size( allo_string ) /= 2 ) print *,"fail"
      if (any( allo_string /= reshape( (/'OPENMP v2','OPENMP v3'/),(/2,1/) ) )) &
           print *,"fail"
      deallocate(allo_string)
    end subroutine sub
