      program main
        i=0
        j=0
        call sub(i,j)
        call subsub(i,j)
        call subsubsub(i,j)
        if (i/=7.or.j/=-7) print *,'error'
        print *,'pass'
      end program

      subroutine sub(i,j)
        i=i+1
        j=j-1
        call subsub(i,j)
        call subsubsub(i,j)
      end subroutine

      subroutine subsub(i,j)
        i=i+1
        j=j-1
        call subsubsub(i,j)
      end subroutine

      subroutine subsubsub(i,j)
        i=i+1
        j=j-1
      end subroutine
