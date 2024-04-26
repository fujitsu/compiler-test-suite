    program foralls
      integer(4)::a(10)=0
      K=1;N=2
      forall( i=1:3, j=1:10 , K+a(i)+j+N > 1)
        a(i)=1
        a(i)=2
      end forall
      if (any(a/=(/2,2,2,0,0,0,0,0,0,0/))) print *,'a->',a
      forall( i=1:3, j=1:10 , K+N > 1)
        a(i)=3
        a(i)=4
      end forall
      if (any(a/=(/4,4,4,0,0,0,0,0,0,0/))) print *,'a->',a
      print *,'pass'
    end program

