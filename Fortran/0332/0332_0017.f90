    program foralls
      integer(4)::a(5),b(5),c(5),x(5),y(5),z(5)
      a=(/1,2,3,4,5/)
      b=(/2,2,2,1,1/)
      forall(i=1:5 , a(i)>=3)
        a(i)=1
        forall (j=1:5 , b(j)==1)
          b(i)=b(i)+1   
          a(i)=2
        endforall
      end forall
      if (any(a/=(/1,2,2,2,2/))) print *,'a->',a
      if (any(b/=(/2,2,3,2,2/))) print *,'b->',b
      print *,'pass'
    end program
