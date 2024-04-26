    program foralls
     integer(4),target::t(10)=(/1,2,3,4,5,6,7,8,9,10/)
      forall(j=5:1:-1)
      forall(i=2:9)
       t(i+1)=t(i-1)
      endforall
      endforall
      if (any(t/=(/1,2,1,2,3,4,5,6,7,8/))) print *,'t->',t
      print *,'pass'
    end
