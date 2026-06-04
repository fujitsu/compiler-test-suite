      common /zz/ ia,ib
      data ia /0/ , ib /0/ 
      data ic /0/ , id /0/
!$omp parallel private(/zz/,ic,id)
      ia=1
      ib=1
      ic=1
      id=1
!$omp end parallel
 !$   if (.true.) then
 !$     if (ia/=0.or.ib/=0.or.ic/=0.or.id/=0) print *,"fail"
 !$   else
        if (ia/=1.or.ib/=1.or.ic/=1.or.id/=1) print *,"fail"
 !$   endif

!$omp parallel shared(ic,/zz/,id)
 !$omp single
      ia=ia+1
      ib=ib+1
      ic=ic+1
      id=id+1
 !$omp endsingle
!$omp end parallel
 !$   if (.true.) then
 !$     if (ia/=1.or.ib/=1.or.ic/=1.or.id/=1) print *,"fail"
 !$   else
        if (ia/=2.or.ib/=2.or.ic/=2.or.id/=2) print *,"fail"
 !$   endif

!$omp parallel firstprivate(id,ic,/zz/)
      ia=ia+1
      ib=ib+1
      ic=ic+1
      id=id+1
 !$   if (.true.) then
 !$     if (ia/=2.or.ib/=2.or.ic/=2.or.id/=2) print *,"fail"
 !$   else
        if (ia/=3.or.ib/=3.or.ic/=3.or.id/=3) print *,"fail"
 !$   endif
!$omp endparallel
 !$   if (.true.) then
 !$     if (ia/=1.or.ib/=1.or.ic/=1.or.id/=1) print *,"fail"
 !$   else
        if (ia/=3.or.ib/=3.or.ic/=3.or.id/=3) print *,"fail"
 !$   endif
      print *,'pass'
      end
