    program foralls
     integer(4),dimension(10)::a,b,c,d,e,f
      a=(/1,0,0,4,0,0,7,0,0,10/)
      n=10
      where(a/=0)
        b=a 
        c=a 
        d=a 
        e=a 
        f=a 
      elsewhere
        b=a 
        c=a 
        d=a 
        e=a 
        f=a 
      endwhere
      call sub()
      if (any(a/=0)) print *,'a->',a
      if (any(b/=0)) print *,'b->',b
      if (any(c/=0)) print *,'c->',c
      if (any(d/=0)) print *,'d->',d
      if (any(e/=0)) print *,'e->',e
      if (any(f/=0)) print *,'f->',f
      print *,'pass'
     contains
      subroutine sub()
        forall(i=1:n,a(i)==i.and.b(i)==i.and.c(i)==i.and. &
                     d(i)==i.and.e(i)==i.and.f(i)==i)
         a(i)=0
         b(i)=0
         c(i)=0
         d(i)=0
         e(i)=0
         f(i)=0
        endforall
      end subroutine sub
    end program
