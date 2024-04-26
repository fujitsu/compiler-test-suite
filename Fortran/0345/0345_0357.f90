    module mod
     integer::j=0
     contains
      subroutine sub1(i)
        call sub22(i)
      end subroutine
    end module

    subroutine sub22(i)
      call sub333(i)
    end subroutine

    subroutine sub333(i)
       if (i/=777) print *,'error'
    end subroutine

    program main
     use mod
      call sub1(777)
      print *,'pass'
    end
