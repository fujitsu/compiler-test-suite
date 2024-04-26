      module mod
       integer(4),save::ii
      contains
       subroutine sub()
        integer(4),save::jj
         jj=ii
       end subroutine
      end module

      program main
       use mod
        ii=777
        call sub()
        print *,'pass'
      end program
