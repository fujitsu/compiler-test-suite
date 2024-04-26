     integer::i=1,j=10,l(2)=0
      call sub(i,j,l(:))
      call sub(i,j,l)
      if (any(l(:)/=(/22,22/))) print *,'error'
      print *,'pass'
    end

    subroutine sub(n,m,l)
     integer::l(2)
      call subsub(n,m,l)
    end subroutine

    subroutine subsub(n,m,l)
     integer::l(2)
     l=l+n+m
    end subroutine
