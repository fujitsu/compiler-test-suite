    program main
      j=0
      i=1
      call sub1(i,j)
      call sub2(i,j)
     contains
      subroutine sub1(i,j)
        call sub22(i,j)
      end subroutine
      subroutine sub2(i,j)
        call sub4444(i,j)
        call sub55555(i,j)
      end subroutine
    end program

    subroutine sub22(i,j)
      call sub333(i,j)
    end subroutine

    subroutine sub333(i,j)
      j=j+i
      i=i+j
    end subroutine

    subroutine sub4444(i,j)
      if (i/=2.or.j/=1) print *,'error'
    end subroutine
    subroutine sub55555(i,j)
      print *,'pass'
    end subroutine
