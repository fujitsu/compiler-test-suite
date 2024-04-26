    recursive subroutine sub22(i,j)
      call sub333(i,j)
      if (j>10) return
      call sub22(i,j)
    end subroutine

    program main
      j=0
      i=1
      call sub1(i,j)
      call sub22(i,j)
      if (i/=1.or.j/=12) print *,i,j
      print *,'pass'
     contains
      recursive subroutine sub1(i,j)
        call sub22(i,j)
      end subroutine
    end program

    subroutine sub333(i,j)
      j=j+i
    end subroutine
