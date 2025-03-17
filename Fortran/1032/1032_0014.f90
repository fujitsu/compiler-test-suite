      integer::a(5,5)=0
      logical,parameter::t=.true.,f=.false.
      logical:: r(5)=f

      forall(i=1:5)

        forall(j=1:2)
          forall(k=1:5,k==3)
          endforall
        endforall

        forall(j=1:5,j==3)
          a(j,i)=a(j,i)+i
        endforall

      endforall

      if (any(a(:,1)/=(/0,0,1,0,0/))) r(1)=t
      if (any(a(:,2)/=(/0,0,2,0,0/))) r(2)=t
      if (any(a(:,3)/=(/0,0,3,0,0/))) r(3)=t
      if (any(a(:,4)/=(/0,0,4,0,0/))) r(4)=t
      if (any(a(:,5)/=(/0,0,5,0,0/))) r(5)=t
      if (any(r))print *,'error'
      print *,'pass'
    end
