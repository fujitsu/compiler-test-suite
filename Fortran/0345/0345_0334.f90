    program main
      integer::i,j,l(2)
      call sub1(i,j,l)
      call ent1(i,j,l(:))
      call ent1(i,j,l)
      call ent2(i,j,l)
      call ent1(i,j,l)
      call ent1(i,j,l(:))
      if (any(l/=(/187,187/))) print *,'error'
      print *,'pass'
    end

    subroutine sub1(n,m,l)
     integer::l(2)
      call sub2(n,m,l)
      return
    entry ent1(n,m,l)
      call ent2(n,m,l(:))
      call ent2(n,m,l)
      call ent2(n,m,l)
      call ent2(n,m,l(:))
    end subroutine

    subroutine sub2(n,m,l)
     integer::l(2)
      call sub3(n,m,l)
      return
    entry ent2(n,m,l)
      call ent3(n,m,l)
    end subroutine

    subroutine sub3(n,m,l)
     integer::l(2)
      n=1
      m=10
      l=0
      return
    entry ent3(n,m,l)
      l=l+n+m
    end subroutine
