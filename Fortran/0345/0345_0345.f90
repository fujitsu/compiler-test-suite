    program main
      j=0
      do i=1,10
        call sub(i,j)
      enddo
      if (j/=55) print *,'error j ->',j
      print *,'pass'
    end program

    subroutine sub(i,j)
      call subsub(i,j)
    end subroutine

    subroutine subsub(i,j)
      j=j+i
    end subroutine
