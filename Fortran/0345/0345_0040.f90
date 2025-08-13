      module mod
       character(len=3)::aa
       integer::ii
       namelist /xyz/ aa,ii
      contains
       subroutine sub0()
         aa='abc'
         ii=777
       end subroutine
       subroutine sub1()
         write(28,nml=xyz)
       end subroutine
       subroutine sub2()
         rewind(28)
       end subroutine
       subroutine sub3()
         read(28,nml=xyz)
         if (aa/='abc'.or.ii/=777) print *,'error'
       end subroutine
      end module

      program main
       use mod
        call sub0()
        call sub1()
        call sub2()
        call sub3()
        print *,'pass'
      end program
