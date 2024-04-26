    program foralls
      integer(4),dimension(2)::a=(/1,2/),b=(/2,3/)
      forall (i=1:2 , a(i)==2.and.b(i)==3)
        a(i)=1
      end forall
      if (any(a/=(/1,1/))) print *,'a->',a
      print *,'pass'
    end program
