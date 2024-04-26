    program foralls
     integer(4)::a(1:3,1:3)=0,b(2:4,2:4)=0

      forall(j=1:3)
        forall(i=1:3,i==j)
          b(i+1,j+1)=b(i+1,j+1)+i
        endforall
        forall(i=1:3,b(i+1,j+1)/=0)
          b(5-i,j+1)=b(i+1,j+1)
        endforall
        forall(i=1:3,a(i,j)==0)
          a(i,j)=b(j+1,i+1)
        endforall
        forall(i=1:3,b(i+1,j+1)==0)
          b(i+1,j+1)=b(j+1,i+1)+7
        endforall
      endforall
      if (any(a/=reshape((/1,0,3,   &
                           0,2,0,   &
                           1,0,3/),(/3,3/)))) then
        print *,a(:,1)
        print *,a(:,2)
        print *,a(:,3)
      endif
      if (any(b/=reshape((/1,7,1,   &
                           7,2,7,   &
                           3,7,3/),(/3,3/)))) then
        print *,b(:,2)
        print *,b(:,3)
        print *,b(:,4)
      endif
     print *,'pass'
    end program

