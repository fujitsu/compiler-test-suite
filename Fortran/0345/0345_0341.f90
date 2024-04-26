    module mod0
      use mod1
      use mod2
      integer::i=1,j(2)=10,l(2)=0
    end module

    program main
    use mod0
      call sub(i,j,l)
      call ent(i,j,l)
      call sub1(i,j,l)
      call ent1(i,j,l)
      call sub(i,j,l)
      call ent(i,j,l)
      call sub1(i,j,l)
      call ent1(i,j,l)
      if (any(l/=88)) print *,'error'
      print *,'pass'
    end

  module mod1
   contains
    subroutine sub(n,m,l)
     integer::l(2),m(2)
      call entent(n,m,l)
      return
    entry ent(n,m,l)
      call subsub(n,m,l)
    end subroutine
  end module

  module mod2
   contains
    subroutine sub1(n,m,l)
     integer::l(2),m(2)
      call entent(n,m,l)
      return
    entry ent1(n,m,l)
      call subsub(n,m,l)
    end subroutine
  end module

    subroutine subsub(n,m,l)
     integer::l(2),m(2)
     l=l+n+m
     return
    entry entent(n,m,l)
     l=l+n+m
    end subroutine
