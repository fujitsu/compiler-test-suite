    program foralls
      integer::a(3,3)=0

      forall(i=1:3)

        forall(j=1:2)
          forall(k=1:2,k==2)
          endforall
        endforall

        forall(j=1:3,j==4)
          a(j,i)=a(j,i)+i
        endforall

      endforall
      if (any(a/=0)) print *,'a->',a
      print *,'pass'
    end
     
