    program main
      i=1
      j=0
      call sub1(i,j)
      if (j/=1.or.i/=2) print *,'error1'
      call sub22(i,j)
      if (j/=3.or.i/=5) print *,'error2'
      print *,'pass'
    end program

    subroutine sub1(i,j)
      call sub333(i,j)
    end subroutine

    subroutine sub22(i,j)
      call sub333(i,j)
    end subroutine

    subroutine sub333(i,j)
      j=j+i
      i=i+j
    end subroutine
