    program foralls
     real(8)::t(3),u(3)
      t=(/1.0d0,2.0d0,3.0d0/)
      u=(/1.0d-1,2.0d-1,3.0d-1/)
      forall(i=1:2)
        t(i+1)=t(i)-u(i)
      endforall
      if (any(t/=(/1.0d0,0.9d0,1.8d0/))) print *,'t->',t
      print *,'pass'
    end program foralls
