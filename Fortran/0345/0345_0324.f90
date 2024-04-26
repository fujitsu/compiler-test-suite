    program main
      integer::i=1,j=10,l(2)=0
      call ent(i,j,l)
      call ent(i,j,l)
      call ent(i,j,l)
      call entent(i,j,l)
      print *,'pass'
    end

    subroutine sub(n,m,l)
     integer::l(2)
     l=0
    entry ent(n,m,l)
      call entent(n,m,l)
      call entent(n,m,l)
    end subroutine

    subroutine subsub(n,m,l)
     integer::l(2)
     l=1
    entry entent(n,m,l)
     l=l+n+m
    end subroutine
