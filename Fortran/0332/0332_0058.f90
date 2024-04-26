    program foralls
     integer(4),target::t(10)=(/1,2,3,4,5,6,7,8,9,10/)
      forall(j=5:1:-2)
      forall(i=2:9)
       t(i-1)=t(i+1)
      endforall
      endforall
      if (any(t/=(/3,4,5,6,7,8,9,10,9,10/))) print *,'t->',t
      forall(j=5:1:-2)
      forall(i=9:2:-1)
       t(i-1)=t(i+1)
      endforall
      endforall
      if (any(t/=(/5,6,7,8,9,10,9,10,9,10/))) print *,'t->',t
      print *,'pass'
    end
