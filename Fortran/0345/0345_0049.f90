      integer function ifun(ii)
        integer(4),save::jj
        jj=ii
        ifun=jj
      end function

      module mod
        integer(4),save::ii
      contains
        subroutine test
          kk=ifun(ii)
        end subroutine
      end module


      program main
       use mod
        ii=777
        call test
        print *,'pass'
      end program
