    program main
    use mod
      integer::i=1,j=10,l(2)=0
      call sub(i,j,l)
      call sub1(i,j,l)
      call sub(i,j,l(:))
      call sub1(i,j,l(:))
      call sub(i,j,l)
      call sub1(i,j,l)
      if (any(l/=132)) print *,'error'
      print *,'pass'
    end

  module mod
   contains
    subroutine sub(n,m,l)
     integer::l(2)
      call subsub(n,m,l)
      call subsub(n,m,l)
    end subroutine

    subroutine sub1(n,m,l)
     integer::l(2)
      call subsub(n,m,l)
      call subsub(n,m,l)
    end subroutine
  end module

    subroutine subsub(n,m,l)
     integer::l(2)
     l=l+n+m
    end subroutine
