    program main
      call sub1()
     contains
      subroutine sub1()
        call sub22()
      end subroutine
    end program

      subroutine sub22()
        print *,'pass'
      end subroutine
