      common/com/p
      integer,pointer::p(:)
!$omp threadprivate(/com/)

!$omp parallel copyin(p)
       if (associated(p)) print *,"fail"
!$omp end parallel

      print *,'pass'

      end

      blockdata
      common/com/p
      integer,pointer::p(:)
!$omp threadprivate(/com/)
      data p /null()/
      end 
