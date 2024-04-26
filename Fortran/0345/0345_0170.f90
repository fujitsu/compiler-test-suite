    module mod
     integer::j
     contains
      subroutine sub1(i)
        j=j+i
      end subroutine
      subroutine sub2(i)
        if (j/=102) print *,'error j->',j   
      end subroutine
    end module

    program main
     use mod
      j=100
      i=1
      call sub1(i)
      call sub1(i)
      call sub2(i)
      print *,'pass'
    end program
