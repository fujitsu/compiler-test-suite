    module mod
     integer::j
     contains
      subroutine sub1(i)
        call sub22(j,i)
        j=j-1
        call sub22(j,i)
      end subroutine
    end module

    subroutine sub22(j,i)
        j=j+i
    end subroutine

    program main
     use mod
      j=100
      i=1
      call sub1(i)
      call sub1(i)
      if (j/=102) print *,'error j-> ',j
      print *,'pass'
    end program
