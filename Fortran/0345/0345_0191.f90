    module mod1
     integer::a(5)
     integer::n
     contains
      subroutine sub5(i,j,k,l,m)
        n=n+1
        a(n)=i
      end subroutine
      subroutine sub4(i,j,k,l,m)
        i=i+m
        call sub5(i,j,k,l,m)
      end subroutine
      subroutine sub3(i,j,k,l,m)
        i=i+l
        call sub4(i,j,k,l,m)
      end subroutine
      subroutine sub2(i,j,k,l,m)
        i=i+k
        call sub3(i,j,k,l,m)
      end subroutine
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
     n=0
     write(18,'(5i4)') i,j,k,l,m
     rewind(18)
     read (18,'(5i4)') i,j,k,l,m
     call sub1(i,j,k,l,m)
     call sub2(i,j,k,l,m)
     call sub3(i,j,k,l,m)
     call sub4(i,j,k,l,m)
     call sub5(i,j,k,l,m)
     if (any(a/=(/15,27,36,41,41/))) print *,'error a ->',a
     print *,'pass'
    end program
