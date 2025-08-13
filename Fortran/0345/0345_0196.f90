    module mod
     contains
      subroutine sub(i)
        call subsub1(i)
       contains
        subroutine subsub1(i)
          i=i+1
        end subroutine
      end subroutine
    end module

    program main
     use mod
      i=1
      write(33,'(i4)') i
      rewind (33)
      read (33,'(i4)') i
      call sub(i)
      if (i/=2) print *,'error i ->',i
      print *,'pass'
    end program
