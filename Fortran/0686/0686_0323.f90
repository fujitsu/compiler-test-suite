      module mod
      integer(4),allocatable,save,dimension(:)::alo1,alo2
!$omp threadprivate(alo1,alo2)
      end module

      program abc
      use mod
!$omp parallel
      call sub1()
!$omp endparallel
!$omp parallel
      call sub2()
!$omp endparallel
!$omp parallel
      call sub3()
!$omp endparallel
      print *,'pass'
      contains

      subroutine sub1()
      allocate(alo1(11:12))
!$omp single
      alo1=(/11,12/)
!$omp endsingle copyprivate(alo1)
      end subroutine

      subroutine sub2()
      allocate(alo2(12:13))
!$omp single
      alo1=alo1+1
      alo2=(/12,13/)
!$omp endsingle copyprivate(alo2,alo1)
      end subroutine

      subroutine sub3()
      use mod
      if (.not.allocated(alo1)) print *,"fail"
      if (any(alo1/=(/12,13/))) print *,"fail"
      if (lbound(alo1,1)/=11) print *,"fail"
      if (ubound(alo1,1)/=12) print *,"fail"
      if (.not.allocated(alo2)) print *,"fail"
      if (any(alo2/=(/12,13/))) print *,"fail"
      if (lbound(alo2,1)/=12) print *,"fail"
      if (ubound(alo2,1)/=13) print *,"fail"
      deallocate(alo1,alo2)
      end subroutine

      end
