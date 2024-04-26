    program foralls
     integer(4),dimension(10)::a,b,c,d,e,f,g,h,j
      a=(/1,0,0,4,0,0,7,0,0,10/)
      n=10
        b=a 
        c=a 
        d=a 
        e=a 
        f=a 
        g=a 
        h=a 
        j=a 
      call sub()
      if (any(a/=0)) print *,'a->',a
      if (any(f/=0)) print *,'f->',f
      if (any(g/=0)) print *,'g->',g
      if (any(h/=0)) print *,'h->',h
      if (any(j/=0)) print *,'j->',j
      print *,'pass'
     contains
      subroutine sub()
        forall(i=1:n,a(i)==i.and.b(i)==i.and.c(i)==i.and. &
                     d(i)==i.and.e(i)==i.and.f(i)==i)
         g(i)=0
         h(i)=0
         j(i)=0
         f(i)=0
         a(i)=0
        endforall
      end subroutine sub
    end program
