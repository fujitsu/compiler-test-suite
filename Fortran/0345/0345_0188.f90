    module mod
     contains
      subroutine sub1(i,j)
        j=j+i
      end subroutine
      subroutine sub2(i,j)
        j=j-i
      end subroutine
    end module mod

    subroutine sub0()
     use mod
      j=100
      i=1
      write(15,'(i4,i4)') j,i
      rewind (15)
      read(15,'(i4,i4)') j,i
      call sub1(i,j)
      call sub2(i,j)
      if (j/=100) print *,'error'
    end subroutine

    program main
      call sub0()
      print *,'pass'
    end program
