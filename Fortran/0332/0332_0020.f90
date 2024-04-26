    program foralls
     integer(4)::a(5),b(5),c(5),x(5),y(5),z(5)
      a=(/1,2,3,4,5/)
      b=(/2,2,2,1,1/)
      forall(i=1:5 , a(i)>=3)
        a(i)=1
        forall (j=1:5 , b(j)==1)
          b(j)=b(j)+j   
          a(j)=j
        endforall
        forall (j=1:5 , b(j)==2)
          b(j)=b(j)+j
        endforall
      end forall
      if (any(a/=(/1,2,1,4,5/))) print *,'a->',a
      if (any(b/=(/3,4,5,5,6/))) print *,'b->',b
      print *,'pass'
    end program
