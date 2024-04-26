    program foralls
     integer(1)::a(5)
     integer(2)::b(5)
      a=(/1,2,3,4,5/)
      b=(/2,2,2,1,1/)
      forall(i=1:5 , a(i)>=3)
        a(i)=1
        forall (j=1:5 , b(j)==1)
          b(j)=b(j)+j   
          a(j)=j
        endforall
      end forall
      if (any(a/=(/1,2,1,4,5/))) print *,'a->',a
      if (any(b/=(/2,2,2,5,6/))) print *,'a->',a
      print *,'pass'
    end program
