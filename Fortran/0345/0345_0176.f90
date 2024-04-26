    module mod
     integer::j
     contains
      subroutine sub1(i)
        i=i+j
        call sub22(j,i)
      end subroutine
    end module

    subroutine sub22(j,i)
        j=j+i
    end subroutine

    program main
     use mod
      j=100
      i=1
      call sub1(i)
      if (i/=101.or.j/=201) print *,'error1 i,j->',i,j
      call sub1(i)
      if (i/=302.or.j/=503) print *,'error3 i,j->',i,j
      print *,'pass'
    end program
