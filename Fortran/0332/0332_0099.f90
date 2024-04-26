    program foralls
     integer(4)::a(5)=(/1,2,3,4,5/)

      forall(i=1:4) a(i:i+1) = a(i:i+1)
      print *,a
    end program
