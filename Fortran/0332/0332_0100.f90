    program foralls
     integer(4)::a(5)=(/1,2,3,4,5/)

      forall(i=1:3,i==1.or.i==3) a(i:i+1) = a(i+1:i+2)
      print *,a
    end program
