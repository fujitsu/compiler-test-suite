      call sub()
      print *,'pass'
      end

      subroutine sub()
      integer(4),allocatable,save,dimension(:)::alo1,alo2
      integer(4),external:: OMP_GET_THREAD_NUM
!$omp threadprivate(alo1,alo2)

!$omp parallel
      allocate(alo1(11:12))
!$omp single
      alo1=(/11,12/)
!$omp endsingle copyprivate(alo1)

      allocate(alo2(12:13))
!$omp single
      alo2=(/12,13/)
!$omp endsingle copyprivate(alo2)

!$omp critical
      if (.not.allocated(alo1)) print *,"fail"
      if (any(alo1/=(/11,12/))) print *,"fail"
      if (lbound(alo1,1)/=11) print *,"fail"
      if (ubound(alo1,1)/=12) print *,"fail"
      if (.not.allocated(alo2)) print *,"fail"
      if (any(alo2/=(/12,13/))) print *,"fail"
      if (lbound(alo2,1)/=12) print *,"fail"
      if (ubound(alo2,1)/=13) print *,"fail"
      deallocate(alo1,alo2)
!$omp end critical
!$omp endparallel
      end
