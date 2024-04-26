    program main
     use mod1
     use mod2
     use mod3
      integer::i,j,l(2)
      call s()
      if (any(l/=(/198,198/))) print *,'error'
      print *,'pass'
     contains
      subroutine s()
        call sub1(i,j,l(:))
        call ent1(i,j,l(:))
        call ent1(i,j,l)
        call ent2(i,j,l)
        call ent1(i,j,l)
        call ent1(i,j,l(:))
        call ent3(i,j,l)
      end subroutine
    end

    module mod1
     use mod2
     contains
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
    endmodule

    module mod2
     use mod3
     contains
     subroutine sub2(n,m,l)
      integer::l(2)
       call sub3(n,m,l)
       return
     entry ent2(n,m,l)
      call ent3(n,m,l)
     end subroutine
    end module

    module mod3
     contains
     subroutine sub3(n,m,l)
      integer::l(2)
       n=1
       m=10
       l=0
       return
     entry ent3(n,m,l)
       l=l+n+m
     end subroutine
    end module
