      module mod
       integer(4)::ii
      contains
       subroutine sub()
        integer(4),save::jj
         jj=ii
       end subroutine
       subroutine sub0()
        call sub()
       end subroutine
      end module

      program main
       use mod
        ii=777
        call sub0()
        print *,'pass'
      end program
