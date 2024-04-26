    program main
      j=0
      i=1
      call sub1(i,j)
      if (j/=1.or.i/=2) print *,'error1 i,j ->',i,j
      call sub22(i,j)
      if (j/=3.or.i/=5) print *,'error1 i,j ->',i,j
      print *,'pass'
     contains
      subroutine sub1(i,j)
        call sub22(i,j)
      end subroutine
    end program

    subroutine sub22(i,j)
      call sub333(i,j)
    end subroutine

    subroutine sub333(i,j)
      j=j+i
      i=i+j
    end subroutine
