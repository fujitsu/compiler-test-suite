    module mod_1
     contains
      recursive subroutine sub22(i,j)
        call sub333(i,j)
        if (j>3) return
        call sub22(i,j)
      end subroutine
    end module mod_1

    program main
     use mod_1
      j=0
      i=1
      call sub1(i,j)
      call sub22(i,j)
      if (j/=5) print *,'error j ->',j
      print *,'pass'
     contains
      recursive subroutine sub1(i,j)
        call sub22(i,j)
      end subroutine
    end program

    subroutine sub333(i,j)
      j=j+i
    end subroutine
