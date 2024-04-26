    program foralls
     integer(4)::a(5)=0

      forall(i=1:5,i/=3) a(i:5) = i
      print *,a
    end program
