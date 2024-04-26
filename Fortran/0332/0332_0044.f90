    program foralls
      integer(4)::a(3)=0,b(4,3)=0
      forall(i=1:3 ,i<3)
        a(i)=1
        forall (j=1:4 , a(i)==1)
          b(j,i)=1
        endforall
      endforall
      if (any(a/=(/1,1,0/))) print *,'a->',a
      if (any(b(:,1)/=(/1,1,1,1/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,2)/=(/1,1,1,1/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,3)/=(/0,0,0,0/))) print *,'b(:,1)->',b(:,1)
      print *,'pass'
    end program
