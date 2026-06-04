    program foralls
     interface
       subroutine sub(p,a,n)
        integer(4),pointer::p(:)
        integer(4),target::a(n)
        integer(4),intent(in)::n
       end subroutine
     end interface
     integer(4),parameter::n=5
     integer(4),pointer::p(:)
     integer(4),target::a(n)=(/1,2,3,2,1/)

      allocate(p(n))
      p=1
      call sub(p,a,n)
      print *,'pass'
    end

    subroutine sub(p,a,n)
     integer(4),pointer::p(:)
     integer(4),target::a(n)
     integer(4),intent(in)::n
      forall(i=1:n,.not.associated(p))
        p=>a
      endforall
      if (any(p/=1)) print *,'p->',p
      deallocate(p)
      forall(i=1:n,.not.associated(p))
        p=>a
        p(i)=p(i)+1
      endforall
      if (any(p/=(/2,3,4,3,2/))) print *,'p->',p
      if (any(a/=(/2,3,4,3,2/))) print *,'a->',a
    end subroutine
