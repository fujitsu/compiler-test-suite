    program foralls
     complex(4)::t(3)
      t=(/(1.0,1.0),(2.0,2.0),(3.0,3.0)/)

      forall(i=1:2)
        t(i)=t(i+1)
      endforall

      if (any(t/=(/(2.0,2.0),(3.0,3.0),(3.0,3.0)/))) print *,'t->',t
      print *,'pass'
    end program foralls
