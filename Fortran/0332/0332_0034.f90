    program foralls
      k=1
      forall (i=1:10:k , i<=5)
        k=k+i
      end forall
      if (k/=6) print *,'k->',k
      print *,'pass'
    end program
