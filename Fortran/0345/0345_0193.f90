    module mod1
     contains
      subroutine sub1(i,j,k)
        i=i+j
        call sub2(i,j,k)
      end subroutine
      subroutine sub3(i,j,k)
        i=i**(k-1)+j
      end subroutine
      subroutine sub2(i,j,k)
        i=i+k
        call sub3(i,j,k)
      end subroutine
    end module

    program main
     use mod1
     i=1
     j=2
     k=3
     write(30,'(5i4)') i,j,k
     rewind(30)
     read (30,'(5i4)') i,j,k
     call sub1(i,j,k)
     if (i/=38) print *,'error1 i ->',i
     call sub2(i,j,k)
     if (i/=1683) print *,'error2 i ->',i
     print *,'pass'
    end program
