  module mod333
   integer::k
   contains
    subroutine sub333(i,j)
      k=i+j
    end subroutine
  end module

  module mod1
   contains
    subroutine sub1(i,j)
     use mod333
      call sub333(i,j)
    end subroutine
  end module

    program main
     use mod1
     use mod333
      i=1
      j=2
      write(1,'(2i4)') i,j
      rewind(1)
      read (1,'(2i4)') i,j
      call sub1(i,j)
      if (k/=3) print *,'error k ->',k
      i=i+j
      call sub1(i,j)
      if (k/=5) print *,'error k ->',k
      print *,'pass'
    end program
