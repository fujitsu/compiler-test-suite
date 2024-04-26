    program main
     use mod1
     use mod2
     use mod3
      integer::i=1,j=10,l(2)=0
      call sub1(i,j,l(:))
      call sub1(i,j,l)
      call sub2(i,j,l)
      call sub1(i,j,l)
      call sub1(i,j,l(:))
      call sub3(i,j,l)
      if (any(l/=(/198,198/))) print *,'error'
      print *,'pass'
    end

    module mod1
     use mod2
    contains
    subroutine sub1(n,m,l)
     integer::l(2)
      call sub2(n,m,l(:))
      call sub2(n,m,l)
      call sub2(n,m,l)
      call sub2(n,m,l(:))
    end subroutine
    endmodule

    module mod2
     use mod3
    contains
    subroutine sub2(n,m,l)
     integer::l(2)
     call sub3(n,m,l)
    end subroutine
    end module

    module mod3
    contains
    subroutine sub3(n,m,l)
     integer::l(2)
     l=l+n+m
    end subroutine
    end module
