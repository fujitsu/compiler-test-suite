    program foralls
     integer(4),target::t(3)=(/1,2,3/)
     logical(4)::l=.true.
      forall(i=1:3)
        t(i)=t(i)+1
        l=l.and.any(t/=(/2,3,4/))
      endforall
      if (l) print *,'t->',t
      print *,'pass'
    end program
