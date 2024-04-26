    module mod
     integer::j
     integer::i
     contains
      subroutine sub1()
        j=j+i
      end subroutine
    end module

    program main
     use mod
      i=1
      j=100
      call sub1()
      call sub1()
      if (j/=102) print *,'error j->',j
      print *,'pass'
    end program
