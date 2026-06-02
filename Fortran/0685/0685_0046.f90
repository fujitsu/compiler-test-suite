      common /com/ ia,ib
       equivalence(ia,ie)
       equivalence(ib,if)
      ia=1;ib=2;ic=3;id=4
!$omp parallel private(id,/com/,ic)
      ia=10;ib=20;ic=30;id=40
!$omp parallel private(ic,/com/,id)
      ia=100;ib=200;ic=300;id=400
!$omp end parallel
 !$   if (.true.)  then
 !$     if (ic/=30.or.id/=40) print *,"fail"
 !$   else
        if (ic/=300.or.id/=400) print *,"fail"
        if (ie/=100.or.if/=200) print *,"fail"
 !$   endif
!$omp end parallel
 !$   if (.true.) then
 !$     if (ic/=3.or.id/=4) print *,"fail"
 !$     if (ie/=1.or.if/=2) print *,"fail"
 !$   else
        if (ic/=300.or.id/=400) print *,"fail"
        if (ie/=100.or.if/=200) print *,"fail"
 !$   endif
      print *,'pass'
      end
