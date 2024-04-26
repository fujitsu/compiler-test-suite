    program foralls
     integer(4)::t(10)=(/1,2,3,4,5,6,7,8,9,10/)
     integer(4)::u(10)=(/1,2,3,4,5,6,7,8,9,10/)
      call sub(t,u)
      if (any(t/=(/1,2,0,0,0,0,0,0,0,0/))) print *,'t->',t
      if (any(u/=(/1,2,1,1,1,1,1,1,1,1/))) print *,'u->',u
      print *,'pass'
    end

    subroutine sub(t,u)
     integer(4)::t(*)
     integer(4)::u(*)
      forall(i=t(2):t(9):t(1),i.eq.t(i))
       t(i+1)=t(i-1)-(i-1)
       u(i+1)=u(i-1)-i+2
      endforall
    end subroutine 
