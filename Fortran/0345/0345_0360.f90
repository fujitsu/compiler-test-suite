    program main
      i=1
      call sub1(i)
      if (i/=2) print *,'error i ->',i
      print *,'pass'
    end program

    module mod
     integer::j=1
    end module

    subroutine sub1(i)
      call sub22(i)
    end subroutine

    subroutine sub22(i)
     use mod
      call sub333(i,j)
    end subroutine

    subroutine sub333(i,j)
      i=i+j  
    end subroutine
