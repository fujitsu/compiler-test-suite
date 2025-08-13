    module mod1
     integer(4)::j,k
     contains
      subroutine sub2(i)
        i=i+k
      end subroutine
      subroutine sub1(i)
        i=i+j
      end subroutine
    end module

    program main
     use mod1
     i=1
     j=2
     k=3
     write(32,'(5i4)') i,j,k
     rewind(32)
     read (32,'(5i4)') i,j,k
     call sub1(i)
     call sub2(i)
     if (i/=6) print *,'error i ->',i
     print *,'pass'
    end program
