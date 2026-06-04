    program foralls
     interface
       subroutine sub(p,a,n)
        integer(4),pointer::p
        integer(4),target::a
        integer(4),intent(in)::n
       end subroutine
     end interface
     integer(4),parameter::n=2
     integer(4),pointer::p
     integer(4),target::a=2

      allocate(p)
      p=1
      call sub(p,a,n)
      print *,'pass'
    end

    subroutine sub(p,a,n)
     integer(4),pointer::p
     integer(4),target::a
     integer(4),intent(in)::n
      forall(i=1:n,.not.associated(p))
        p=>a
      endforall
      if (p/=1) print *,'p->',p
      forall(i=1:n,associated(p))
        p=>a
      endforall
      if (p/=2) print *,'p->',p
    end subroutine
