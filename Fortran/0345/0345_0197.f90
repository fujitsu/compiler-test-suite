    module mod
     contains
      subroutine sub(i,j)
        call subsub1(i,j)
        if (i/=4) print *,'error1'
        call subsub2(i,j)
        if (i/=64) print *,'error2'
       contains
        subroutine subsub1(i,j)
          i=i+j
        end subroutine
        subroutine subsub2(i,j)
          i=i**j
        end subroutine
      end subroutine
    end module

    program main
     use mod
      i=1
      j=3
      write(1,'(2i4)') i,j
      rewind(1)
      read (1,'(2i4)') i,j
      call sub(i,j)
      if (i/=64) print *,'error i ->',i
      print *,'pass'
    end program
