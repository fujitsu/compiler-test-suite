    module mod_1
     integer::j
     contains
      subroutine sub1(i)
        j=j+i
      end subroutine
    end module

    module mod_22
     contains
      subroutine sub22(j)
        if (j/=55) print *,'error j->',j
      end subroutine
    end module

    program main
     use mod_22
     use mod_1
      j=0
      k=10
      write(1,'(i4)') k
      rewind(1)
      read (1,'(i4)') k
      do i=1,k  
        call sub1(i)
      enddo
      call sub22(j)
      print *,'pass'
    end program
