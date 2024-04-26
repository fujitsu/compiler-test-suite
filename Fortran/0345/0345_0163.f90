    module mod
     integer::j
     contains
      subroutine sub(i)
        j=j+i
      end subroutine
    end module

    program main
     use mod
      j=0
      do i=1,10
        call sub(i)
      enddo
      if (j/=55) print *,'error j->',j
      print *,'pass'
    end program
