      module mod
       character(len=3)::aa
       integer::ii
      contains
       subroutine sub0()
        namelist /xyz/ aa,ii
         aa='abc'
         ii=777
         call sub1(aa,ii)
       end subroutine
      end module

      subroutine sub1(aa,ii)
        character(len=3)::aa
        namelist /xyz/ aa,ii
         write(26,nml=xyz)
      end subroutine

      program main
       use mod
        call sub0()
        print *,'pass'
      end program
