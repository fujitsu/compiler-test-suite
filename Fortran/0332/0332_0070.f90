    program foralls
     complex(4)::t(3)
      t=(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0)/)
      call sub1(t)
      if (any(t/=(/(1.0,-1.0),(1.0,-1.0),(2.0,-2.0)/))) print *,'t->',t
      t=(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0)/)
      call sub2(t)
      if (any(t/=(/(1.0,-1.0),(1.0, 0.0),(2.0, 0.0)/))) print *,'t->',t
      t=(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0)/)
      call sub3(t)
      if (any(t/=(/(1.0,-1.0),(-1.0,0.0),(-2.0,0.0)/))) print *,'t->',t
      print *,'pass'
    end program foralls
    subroutine sub1(t)
     complex(4)::t(3)
      forall(i=1:2)
        t(i+1)=t(i)
      endforall
    endsubroutine
    subroutine sub2(t)
     complex(4)::t(3)
      forall(i=1:2)
        t(i+1)=real(t(i))
      endforall
    endsubroutine
    subroutine sub3(t)
     complex(4)::t(3)
      forall(i=1:2)
        t(i+1)=imag(t(i))
      endforall
    endsubroutine
