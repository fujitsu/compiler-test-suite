    module mod
     contains
      subroutine subsub(i)
        if (i/=1) print *,'error i ->',i
      end subroutine
    end module

    program main
     use mod
      i=1
      call subsub(i)
      print *,'pass'
    end program
