    program foralls
     complex(16)::t(3),u(3)
      t=(/(1.0q1,-1.0q1),(2.0q1,-2.0q1),(3.0q1,-3.0q1)/)
      u=(/(1.0q0,-1.0q0),(2.0q0,-2.0q0),(3.0q0,-3.0q0)/)
      forall(i=1:2)
        t(i+1)=u(i+1)+t(i)
      endforall
      if (any(t/=(/(1.0q1,-1.0q1),(1.2q1,-1.2q1),(2.3q1,-2.3q1)/))) then
        print *,'t->',t
      endif
      print *,'pass'
    end program foralls
