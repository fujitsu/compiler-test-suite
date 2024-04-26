    module mod
     contains
      subroutine sub1(i,j)
       i=i+j
       call sub22(i,j)
      end subroutine
      subroutine sub22(i,j)
       j=j+i
      end subroutine
    end module mod

    program main
     use mod
      i=1
      j=100
      write(1,'(2i4)') j,i
      rewind(1)
      read (1,'(2i4)') j,i
      call sub1(i,j)
      if (i/=101.or.j/=201) print *,'error1 i,j->',i,j
      call sub1(i,j)
      if (i/=302.or.j/=503) print *,'error2 i,j->',i,j
      print *,'pass'
    end program
