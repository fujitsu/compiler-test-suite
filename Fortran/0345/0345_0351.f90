    program main
      j=0
      i=1
      call sub(i,j)
      if (i/=2.or.j/=1) print *,'error'
      print *,'pass'
    end program

    subroutine sub(i,j)
      call subsub(i,j)
     contains
      subroutine subsub(i,j)
        j=j+i
        i=i+j
      end subroutine
    end subroutine

