      program main
        call ss
      end program

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
         write(29,nml=xyz)
       end subroutine
       subroutine sub2()
         rewind(29)
       end subroutine
       subroutine sub3()
         read(29,nml=xyz)
         if (aa/='abc'.or.ii/=777) print *,'error'
       end subroutine
       subroutine sub4()
         call ex_sub()
       end subroutine
      end module

      subroutine ss
       use mod
        call sub0()
        call sub1()
        call sub2()
        call sub3()
        call sub4()
        print *,'pass'
      end subroutine

      subroutine ex_sub()
       use mod
        write(29,nml=xyz)
         rewind(29)
        read(29,nml=xyz)
        if (aa/='abc'.or.ii/=777) print *,'error'
      end subroutine
