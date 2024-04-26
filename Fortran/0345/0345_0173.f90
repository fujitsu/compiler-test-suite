    module mod
     contains
      subroutine sub1(i,j)
        j=j+i
      end subroutine
    end module mod

    program main
     use mod
      j=100
      i=1
      write(1,'(i4,i4)') j,i
      rewind (1)
      read(1,'(i4,i4)') j,i
      call sub1(i,j)
      call sub1(i,j)
      if (j/=102) print *,'error j->',j
      print *,'pass'
    end program
