      integer,parameter::n=5
      integer,dimension(n)::a

      a=(/1,2,3,4,5/)
      imax=0
      imin=100
!$omp parallel reduction(max:imax),reduction(min:imin)
      forall (i=1:5)
        imax=max(imax,a(i))
        imin=min(imin,a(i))
      endforall
!$omp endparallel

      if (imax/=5.or.imin/=5) print *,"fail"

!$omp parallel reduction(max:imax),reduction(min:imin)
      forall (i=1:5,i.eq.3)
        imax=max(imax,a(i))
        imin=min(imin,a(i))
      endforall
!$omp endparallel

      if (imax/=5.or.imin/=3) print *,"fail"

      print *,'pass'

      end
