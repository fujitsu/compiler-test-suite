    program foralls
     integer(4)::a(10)=(/1,2,3,4,5,6,7,8,9,10/)
     integer(4)::b(10)=(/1,2,3,4,5,6,7,8,9,10/)
     equivalence(i,a(1))
      forall(i=2:10:2,b(i)==i)
        a(i)=a(i-1)
      endforall
      if (any(a/=(/1,1,3,3,5,5,7,7,9,9/))) print *,'a->',a
      print *,'pass'
    end program
