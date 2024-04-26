    program foralls
      integer(4)::a(5),b(5),c(5),x(5),y(5),z(5)
      a=(/1,2,3,4,5/)
      b=0
      forall(i=1:5 , a(i)>=3)
        forall (j=1:5 , a(j)==1)
          b(i)=b(i)+1   
        endforall
      end forall
      if (any(a/=(/1,2,3,4,5/))) print *,'a->',a
      if (any(b/=(/0,0,1,1,1/))) print *,'b->',b
      print *,'pass'
    end program
