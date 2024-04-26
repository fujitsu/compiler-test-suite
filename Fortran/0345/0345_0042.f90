      subroutine sub(ii)
        integer(4),save::jj
          jj=ii
      end subroutine

      program main
        ii=100
        call sub(ii)
         print *,'pass'
      end program
