      integer::a(5,5)=0

      forall(i=1:5)

        forall(j=1:2)
          forall(k=1:5,k==3)
          endforall
        endforall

        forall(j=1:5,j==3)
          a(j,i)=a(j,i)+i
        endforall

      endforall

      if (any(a(:,1)/=(/0,0,1,0,0/))) print *,a(:,1)
      if (any(a(:,2)/=(/0,0,2,0,0/))) print *,a(:,2)
      if (any(a(:,3)/=(/0,0,3,0,0/))) print *,a(:,3)
      if (any(a(:,4)/=(/0,0,4,0,0/))) print *,a(:,4)
      if (any(a(:,5)/=(/0,0,5,0,0/))) print *,a(:,5)
      print *,'pass'
    end
