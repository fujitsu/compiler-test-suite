      integer,parameter::n=10
      integer,dimension(n)::a

      a=(/0,0,0,0,0,0,0,0,0,0/)
      m1=5 ; m2=4

!$omp parallel firstprivate(a,m1),shared(i)
      forall (i=1:n:2,i.eq.m1) 
        a(1:i) = i
        m1 = m1 + i
      endforall
      if (any(a/=(/5,5,5,5,5,0,0,0,0,0/))) print *,"fail"
      if (m1/=10) print *,"fail"
!$omp end parallel

!$omp parallel firstprivate(a,m2),private(i)
      forall (i=1:n:2,i.gt.m2) 
        a(i) = i
        m2 = m2 + i
      endforall
 !$   if (any(a/=(/0,0,0,0,5,0,7,0,9,0/))) print *,"fail"
      if (m2/=13) print *,"fail"
!$omp end parallel
 !$   if (.true.) then
 !$     if (m1/=5.or.m2/=4) print *,"fail"
 !$     if (any(a/=0)) print *,"fail"
 !$   else
        if (m1/=10.or.m2/=13) print *,"fail"
        if (any(a/=(/5,5,5,5,5,0,7,0,9,0/))) print *,"fail"
 !$   endif

      print *,'pass'
      end
