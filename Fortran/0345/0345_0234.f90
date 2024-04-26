    module mod
     integer(4)::i
     integer(4)::j
     contains
      subroutine sub1()
       i=i+1
      entry sub2()
       j=j+2
      end subroutine
    end module mod

    program main
     use mod
      i=0
      j=0
      call sub2()
      if (i/=0.or.j/=2) print *,'error1'
      print *,'pass'
    end program
