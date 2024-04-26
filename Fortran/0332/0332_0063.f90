    program foralls
     integer(4),target::t(10)=(/1,2,3,4,5,6,7,8,9,10/)
     integer(4),target::u(10)=(/1,2,3,4,5,6,7,8,9,10/)
      forall(i=t(2):t(9):t(1))
       t(i+1)=t(i-1)-(i-1)
       u(i+1)=u(i-1)-i+2
      endforall
      if (any(t/=(/1,2,0,0,0,0,0,0,0,0/))) print *,'t->',t
      if (any(u/=(/1,2,1,1,1,1,1,1,1,1/))) print *,'u->',u
      print *,'pass'
    end
