    program foralls
     integer(4),dimension(2)::a=(/1,0/),b=0
      forall (i=1:2 , a(i)==0)
        b(i)=1
      end forall
      if (any(b/=(/0,1/))) print *,'b->',b
      print *,'pass'
    end program
