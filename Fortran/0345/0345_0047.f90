      subroutine sub(ii)
        integer(4),save::jj
         jj=ii
      end subroutine

      module mod
       integer(4)::ii
      contains
       subroutine sub0()
        call sub(ii)
       end subroutine
      end module

      program main
       use mod
        ii=777
        call sub0()
        print *,'pass'
      end program
