    program foralls
     complex(8)::t(3)
      t=(/(1.0d0,-1.0d0),(2.0d0,-2.0d0),(3.0d0,-3.0d0)/)
      forall(i=1:2)
        t(i+1)=t(i)
        t(i)=t(i+1)+(0.1d0,-0.1d0)
      endforall
      if (any(t/=(/(1.1d0,-1.1d0),(2.1d0,-2.1d0),(2.0d0,-2.0d0)/))) then
        print *,'t->',t
      endif
      print *,'pass'
    end program foralls
