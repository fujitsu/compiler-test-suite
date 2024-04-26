    program foralls
     integer(4),dimension(10)::a,b,c,d,e,f,g,h,j
      a=(/1,2,3,4,5,6,7,8,9,10/)
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
      if (any(a/=(/1,0,0,0,0,0,0,0,0,0/))) print *,'a->',a
      if (any(b/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'b->',b
      if (any(f/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'f->',f
      print *,'pass'
     contains
      subroutine sub()
        forall(i=1:n-1,j(i)==i.and.h(i)==i.and.g(i)==i.and.&
                       a(b(c(d(e(f(i+1))))))==i+1)
         a(b(c(d(e(f(i+1)))))) = 0
        endforall
      end subroutine sub
    end program
