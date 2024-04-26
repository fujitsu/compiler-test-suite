    program main
      j=0
      do i=1,10
        call sub(i,j)
      enddo
      call subsub(i,j)
      print *,'pass'
    end program

    subroutine sub(i,j)
      j=j+i
    end subroutine

    subroutine subsub(i,j)
      if (j/=55) print *,'error j ->',j
    end subroutine
