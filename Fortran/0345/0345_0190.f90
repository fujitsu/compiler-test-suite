    module mod1
     contains
      subroutine sub5(i)
        if (i/=15) print *,'error i ->',i
      end subroutine
      subroutine sub4(i,m)
        i=i+m
      end subroutine
      subroutine sub3(i,l)
        i=i+l
      end subroutine
      subroutine sub2(i,k)
        i=i+k
      end subroutine
      subroutine sub1(i,j)
        i=i+j
      end subroutine
    end module

    program main
     use mod1
     i=1
     j=2
     k=3
     l=4
     m=5
     write(17,'(5i4)') i,j,k,l,m
     rewind(17)
     read (17,'(5i4)') i,j,k,l,m
     call sub1(i,j)
     call sub2(i,k)
     call sub3(i,l)
     call sub4(i,m)
     call sub5(i)
     print *,'pass'
    end program
