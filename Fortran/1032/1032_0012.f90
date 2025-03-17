      integer::a(5,5)=0

      forall(i=1:5)

        forall(j=1:2)
          forall(k=1:5,k==3)
          endforall
        endforall

        forall(j=1:5,j>6 )
          a(j,i)=a(j,i)+i
        endforall

      endforall

      if (any(a/=0)) then
        print *,a(:,1)
        print *,a(:,2)
        print *,a(:,3)
        print *,a(:,4)
        print *,a(:,5)
      endif
   print *,'pass'
  end
