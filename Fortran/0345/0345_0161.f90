    module mod
     integer::i
     contains
      subroutine subsub()
        if (i/=1) print *,'error i->',i
      end subroutine
    end module

    program main
      k=1
      write(2,'(i4)') k
      rewind(2)
      read (2,'(i4)') k
      call sub(k)
      print *,'pass'
    end program

    subroutine sub(k)
     use mod
      i=k
      call subsub()
    end subroutine 
