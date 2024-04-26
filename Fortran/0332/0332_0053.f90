    program foralls
     integer(4)::a(10)=(/1,2,3,4,5,6,7,8,9,10/)
     integer(4)::b(10)=(/1,2,3,4,5,6,7,8,9,10/)
     k=8
     forall(i=2:10:2,8==a(k))
       b(i)=k-1
     endforall
      if (any(b/=(/1,7,3,7,5,7,7,7,9,7/))) print *,'a->',a
      if (k/=8) print *,'k->',k 
      print *,'pass'
    end program
