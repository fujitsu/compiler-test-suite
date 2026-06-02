      block data
      common /com/ a,p
      integer,pointer::p
      integer::a
!$omp threadprivate(/com/)
      data p /null()/
      data a /100/
      end

      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/ a,p
      integer,pointer::p
      integer::a
      integer,target::t=1
!$omp threadprivate(/com/)

!$omp parallel copyin(a,p  )
      if (associated(p)) print *,"fail"
      if (a/=100) print *,"fail"
!$omp single
      a=1
      p=>t
!$omp end single copyprivate(a,p  )
      if (.not. associated(p)) then
        print *,"fail"
      else
        if (p/=1) print *,"fail"
      endif
      if (a/=1) print *,"fail"
!$omp end parallel
      if (.not. associated(p)) then
        print *,"fail"
      else
        if (p/=1) print *,"fail"
        p=>null() 
      endif
      if (a/=1) print *,"fail"

      end
