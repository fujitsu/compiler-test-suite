    program main
     i=1
     call sub1(i)
     if (i/=2) print *,'error i->',i
     print *,'pass'
    end program 

    module mod
     integer::j
     contains
      subroutine sub22(i)
        call sub333(i)
      end subroutine
    end module

    subroutine sub1(i)
     use mod
      call sub22(i)
    end subroutine

    subroutine sub333(i)
     use mod
      i=i+1 
    end subroutine
