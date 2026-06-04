      common/com/p
      integer,pointer::p(:)
      integer,allocatable,target::t(:) 
!$omp threadprivate(/com/)

      allocate(t(3))
      t=(/1,2,3/)
      p=>t
!$omp parallel copyin(p)
      if (any(p/=(/1,2,3/))) print *,"fail"
!$omp end parallel

      print *,'pass'

      end
