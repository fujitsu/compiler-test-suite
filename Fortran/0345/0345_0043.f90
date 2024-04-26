      integer function ifun(ii)
        integer(4),save::jj
        jj=ii
        ifun=jj
      end function

      subroutine test
        save::kk
        ii=55
        kk=ifun(ii)
      end subroutine

      program main
        call test
        print *,'pass'
      end program
