    program main
      i=1
      j=0
      call sub1(i,j)
      if (i/=2.or.j/=1) print *,'error'
      print *,'pass'
    end program

    subroutine sub1(i,j)
      call sub22(i,j)
    end subroutine

    subroutine sub22(i,j)
      call sub333(i,j)
    end subroutine

    subroutine sub333(i,j)
      j=j+i
      i=i+j
    end subroutine
