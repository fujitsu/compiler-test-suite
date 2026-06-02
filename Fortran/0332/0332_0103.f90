    program foralls
     interface
       subroutine sub(p,a,n)
        integer(4),pointer::p(:)
        integer(4),allocatable,target::a(:)
        integer(4),intent(in)::n
       end subroutine
     end interface
     integer(4),parameter::n=5
     integer(4),pointer::p(:)
     integer(4),allocatable,target::a(:)

      allocate(p(n),a(n))
      p=(/5,4,3,4,5/)
      a=(/1,2,3,2,1/)
      call sub(p,a,n)
      deallocate(a)
      print *,'pass'
    end

    subroutine sub(p,a,n)
     integer(4),pointer::p(:)
     integer(4),allocatable,target::a(:)
     integer(4),intent(in)::n
      forall(i=1:n,.not.associated(p))
        p=>a
      endforall
      if (any(p/=(/5,4,3,4,5/))) print *,'#p->',p
      forall(i=1:n,associated(p))
        p=>a
      endforall
      if (any(p/=(/1,2,3,2,1/))) print *,'##p->',p
      forall(i=1:n-1,p(i)>1)
        a(i+1)=1
      endforall
      if (any(p/=(/1,2,1,1,1/))) print *,'##p->',p
    end subroutine
