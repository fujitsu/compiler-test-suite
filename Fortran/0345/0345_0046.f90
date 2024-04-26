      module mod
        integer(4),save::ii
      contains
        integer function ifun()
         integer(4),save::jj
          jj=ii
          ifun=jj
        end function
        subroutine test
          save::kk
          kk=ifun()
        end subroutine
      end module


      program main
       use mod
        ii=888
        call test
        print *,'pass'
      end program
