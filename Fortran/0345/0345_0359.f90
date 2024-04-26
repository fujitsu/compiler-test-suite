    module mod
     integer::j=0
     contains
      subroutine sub1(i)
        call sub22(i)
      end subroutine
    end module

    subroutine sub22(i)
     use mod
      call sub333(i)
    end subroutine

    subroutine sub333(i)
      use mod
      i=i+776
    end subroutine

    program main
     use mod
      i=1
      call sub1(i)
      if (i/=777) print *,'error i ->',i
      print *,'pass'
    end 
