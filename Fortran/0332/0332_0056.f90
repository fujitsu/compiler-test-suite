    program foralls
     integer(4),target::t(10)=(/1,2,3,4,5,6,7,8,9,10/)
      forall(i=1:9)
        t(i+1)=t(i)
      endforall
      if (any(t/=(/1,1,2,3,4,5,6,7,8,9/))) print *,'t->',t
      print *,'pass'
    end
