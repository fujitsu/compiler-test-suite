      common /com/ p,pp
      integer(4),pointer ::  p
      integer(4),pointer ::  pp
      integer(4),target::t=1
!$omp threadprivate(/com/)

      if (associated(p )) print *,"fail"
      if (associated(pp)) print *,"fail"
!$omp parallel
!$omp single
      p=>t
      pp=>t
!$omp end single copyprivate(/com/)
      if (.not. associated(p)) print *,"fail"
      if (p/=1) print *,"fail"
      if (.not. associated(pp)) print *,"fail"
      if (pp/=1) print *,"fail"
!$omp end parallel
      if (.not. associated(p)) print *,"fail"
      if (.not. associated(pp)) print *,"fail"

      print *,'pass'
      end

      block data
      common /com/ p,pp
      integer(4),pointer ::  p
      integer(4),pointer ::  pp
!$omp threadprivate(/com/)
      data p  /null()/
      data pp /null()/
      end
