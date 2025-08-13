    module mod5
     contains
      subroutine sub5(i,j,k,l,m)
        if (i/=15) print *,'error i ->',i
      end subroutine
    end module

    module mod4
     use mod5
     contains
      subroutine sub4(i,j,k,l,m)
        i=i+m
        call sub5(i,j,k,l,m)
      end subroutine
    end module

    module mod3
     use mod4
     contains
      subroutine sub3(i,j,k,l,m)
        i=i+l
        call sub4(i,j,k,l,m)
      end subroutine
    end module

    module mod2
     use mod3
     contains
      subroutine sub2(i,j,k,l,m)
        i=i+k
        call sub3(i,j,k,l,m)
      end subroutine
    end module

    module mod1
     use mod2
     contains
      subroutine sub1(i,j,k,l,m)
        i=i+j
        call sub2(i,j,k,l,m)
      end subroutine
    end module

    program main
     use mod1
     i=1
     j=2
     k=3
     l=4
     m=5
     write(16,'(5i4)') i,j,k,l,m
     rewind(16)
     read (16,'(5i4)') i,j,k,l,m
     call sub1(i,j,k,l,m)
     print *,'pass'
    end program
