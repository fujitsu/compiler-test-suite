    program main
      integer::i=1,j=10,l(2)=0
      call sub1(i,j,l(:))
      call sub1(i,j,l)
      call sub2(i,j,l)
      call sub1(i,j,l)
      call sub1(i,j,l(:))
      if (any(l/=(/187,187/))) print *,'error'
      print *,'pass'
    end

    subroutine sub1(n,m,l)
     integer::l(2)
      call sub2(n,m,l(:))
      call sub2(n,m,l)
      call sub2(n,m,l)
      call sub2(n,m,l(:))
    end subroutine

    subroutine sub2(n,m,l)
     integer::l(2)
     call sub3(n,m,l)
    end subroutine

    subroutine sub3(n,m,l)
     integer::l(2)
     l=l+n+m
    end subroutine
