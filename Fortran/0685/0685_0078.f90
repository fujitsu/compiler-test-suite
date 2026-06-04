    call sub()
    print *,'pass'
    contains

      subroutine sub()
      common /com/ i
      integer*4 OMP_GET_THREAD_NUM
!$omp threadprivate(/com/)

 !$   call OMP_SET_DYNAMIC(.true.)
 !$   call OMP_SET_MAX_ACTIVE_LEVELS(1)
 !$   call OMP_SET_NUM_THREADS(1)
!$omp parallel
 !$   call OMP_SET_DYNAMIC(.true.)
 !$   call OMP_SET_MAX_ACTIVE_LEVELS(1)
 !$   call OMP_SET_NUM_THREADS(1)
!$omp parallel

 !$   call OMP_SET_DYNAMIC(.true.)
 !$   call OMP_SET_MAX_ACTIVE_LEVELS(1)
 !$   call OMP_SET_NUM_THREADS(1)
 !$omp parallel copyin(/com/)
      if (i/=100) print *,"fail"
      i = OMP_GET_THREAD_NUM() + 1
 !$omp endparallel

 !$   call OMP_SET_DYNAMIC(.true.)
 !$   call OMP_SET_MAX_ACTIVE_LEVELS(1)
 !$   call OMP_SET_NUM_THREADS(1)
 !$omp parallel
       if (i/=OMP_GET_THREAD_NUM()+1) print *,i   
 !$omp endparallel

!$omp endparallel
!$omp endparallel
      end subroutine
    end

    block data
    common /com/ i
    data i /100/
!$omp threadprivate(/com/)
    end block data
