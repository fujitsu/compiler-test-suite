      integer(4),dimension(3,2)::x,y
      logical(4),dimension(3)::l
!$omp parallel workshare
      forall (i=0:5:1,0<i.and.i<4)
        x =reshape((/1,2,3,4/),(/3,2/),pad=(/i/))
        y =reshape((/1,2,3,4,i,i/),(/3,2/))
        l(i) =any(x/=y)
      end forall
!$omp end parallel workshare
      if (any(l)) print *,"fail"
      print *,'pass'
      end
