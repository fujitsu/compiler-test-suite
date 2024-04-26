    module mod_22
     contains
      recursive subroutine sub22(i,j)
        call sub333(i,j)
        if (j/=0)  return
        call sub22(i,j)
      end subroutine
    end module

    program main
     use mod_22
      j=0
      i=1
      call sub22(i,j)
      call sub22(i,j)
      print *,'pass'
    end program

    subroutine sub333(i,j)
      j=j+i
    end subroutine
