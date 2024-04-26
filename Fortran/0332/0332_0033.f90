    program foralls
      integer(4),dimension(3,3)::a
      a(:,1)=1
      a(:,2)=2
      a(:,3)=3
      forall (i=1:3 , a(i,2)==2)
        a(i,2)=1
      end forall
      if (any(pack(a,mask=.true.)/=(/1,1,1,1,1,1,3,3,3/))) print *,'a->',a
      print *,'pass'
    end program
