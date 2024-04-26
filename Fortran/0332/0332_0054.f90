    program foralls
     integer(4)::a(10)=(/1,2,3,4,5,6,7,8,9,10/)
     integer(4)::b(10)=(/1,2,3,4,5,6,7,8,9,10/)
     equivalence(i,k)
      k=8
      forall(i=2:10:2,8==a(k))
        k=k-1
        b(i)=k-1
      endforall
      if (any(b/=(/1,6,3,6,5,6,7,6,9,6/))) print *,'b->',b
      if (k/=7) print *,'k->',k 
      print *,'pass'
    end program
